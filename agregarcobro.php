<!doctype html>
<html lang="es">

<?php
session_start();
include 'head.php';
include 'header.php';
?>
<?php
include 'conexion.php'
?>

<body>
    <!--::header part start::-->
    <?php

    $nik = mysqli_real_escape_string($con,(strip_tags($_GET["nik"],ENT_QUOTES)));
    $sql = mysqli_query($con, "SELECT * FROM tbl_facturas WHERE ID_factura='$nik'");
    $row = mysqli_fetch_assoc($sql);
    $id_cita = $row['ID_cita'];    
   
        if(isset($_POST['add'])){
            
            $nombre = mysqli_real_escape_string($con,(strip_tags($_POST['cobro_adicional'],ENT_QUOTES)));
            $precio =mysqli_real_escape_string($con,(strip_tags($_POST['Precio_cobro_exist'],ENT_QUOTES)));
        
        

        $insert = mysqli_query($con, "INSERT INTO tbl_detalle_factura (ID_Factura, descripcion, cobro) 
                                           VALUES ('$nik', '$nombre', '$precio')") or die(mysqli_error());
        
        if($insert){
            // $id_usuario= $_SESSION['ID_Usuario'];
            //                 $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
            //                 VALUES ('$id_usuario',14,'Insert','SE INGRESÓ UN NUEVO SERVICIO')") or die(mysqli_error());
            echo "<script type='text/javascript'>
                alert('El cobro adicional ha sido registrado exitosamente');
                window.location.href= 'Facturacion.php?nik=".$id_cita."';
            </script>";
        }else{
            echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Error, no se pudo guardar los datos.</div>';
        }
    }


    ?>
    <!-- Header part end-->

    <!-- breadcrumb start-->
    <section class="breadcrumb_part breadcrumb_bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb_iner">
                        <div class="breadcrumb_iner_item">
                        <h2>Cobros Adicionales</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- breadcrumb start-->

     <!--::regervation_part start::-->
     <section class="our_depertment section_padding single_pepertment_page">
        <div class="container">
            <div class="row justify-content-center text-center">
                <div class="col-xl-12">
                    <div class="depertment_content">
                        <div class="row justify-content-center">
                            <div class="col-xl-8">
                                <form method="POST" action="" id="myForm" autocomplete="off">
                                    <h2>Registrar cobro adicional</h2>
                                    <div class="form-row">
                                        <div class="form-group col-md-6" id="selectcobros">
                                            <select class="form-control" id="cobro_adic" name="cobro_adic" onchange="doctores_precio(value)" required>
                                                <option value="0" selected>Seleccione un cobro</option>
                                                <?php
                                                $sql=$con -> query("Select * from tbl_cobros_adicionales");

                                                while($fila=$sql->fetch_array()){
                                                    echo "<option value='".$fila['ID_cobro_adicional']."'>".$fila['Descripcion_cobro']."</option>";
                                                }
                                                ?>
                                            </select>                                        
                                        </div>
                                        
                                        <script type="text/javascript" src='https://code.jquery.com/jquery-3.5.1.min.js'></script>
                                                         
                                        <script>
                                            function doctores_precio(id) {
                                                    // alert(id);
                                                    var id_cobro = id;
                                                    var enlace='consulta_cobros_adicionales.php';                                                    
                                                    
                                                    $.ajax({
                                                        type:'POST',
                                                        url:enlace,
                                                        data: 'id='+id_cobro,
                                                        success:function(response){
                                                            document.getElementById('Precio_cobro_exist').value = response;
                                                            // alert(response);                                                            
                                                        }

                                                    });
                                                    $.ajax({
                                                        type:'POST',
                                                        url:enlace,
                                                        data: 'id_para_descripcion='+id_cobro,
                                                        success:function(response){
                                                            document.getElementById('cobro_adicional').value = response;
                                                            // alert(response);                                                            
                                                        }

                                                    });
                                                    
                                            }
                                            function listar(){
                                                    
                                                    var variable = 'solic';
                                                    var enlace='consulta_cobros_adicionales.php'; 
                                                    // alert(descripcion+precio);                                                   
                                                
                                                    $.ajax({
                                                        type:'POST',
                                                        url:enlace,
                                                        data: 'listar='+variable,                                                      
                                                        success:function(response){
                                                            $('#selectcobros').html(response);                                                          
                                                        }

                                                    });
                                            }
                                            
                                            function agregar_cobro() {
                                                    
                                                    var descripcion = document.getElementById('desc_cobro').value;
                                                    var precio = document.getElementById('precio_cobro').value;
                                                    var enlace='consulta_cobros_adicionales.php'; 
                                                    // alert(descripcion+precio);                                                   
                                                    
                                                     $.ajax({
                                                         type:'POST',
                                                         url:enlace,
                                                         data: {'descripcion': descripcion, 
                                                                'precio': precio},                                                         
                                                         success:function(response){
                                                             //document.getElementById('Precio_cobro_exist').value = response;
                                                             alert(response);
                                                             listar();  
                                                             document.getElementById("myForm").reset();                                                        
                                                         }

                                                     });
                                                
                                            }
                                                
                                        </script>



                                        <div class="form-group col-md-6">
                                            <input type="text" class="form-control" id="Precio_cobro_exist" name="Precio_cobro_exist" placeholder="Precio del cobro" onkeypress="return solonumeros(event)" readonly required>
                                        </div>
                                        <p class="col-md-12">Si el cobro no existe, agregue uno nuevo</p>                                        
                                        <div class="form-group col-md-6">
                                            <input type="text" class="form-control" id="desc_cobro" name="desc_cobro" placeholder="Agregar descripción del cobro" onkeypress="return soloLetras(event)" >                 
                                        </div>
                                        <div class="form-group col-md-6">
                                            <input type="text" class="form-control" id="precio_cobro" name="precio_cobro" placeholder="Agregar precio del cobro" onkeypress="return solonumeros(event)" >                 
                                        </div>
                                        <div class="form-group col-md-12" >
                                            <a><button id="guardar_cobro" onclick="agregar_cobro()" type="button" class="btn_2">Agregar cobro adicional</button></a>
                                        </div>

                                        <input type="text" class="d-none"  id="cobro_adicional" name="cobro_adicional" required>

                                        <div class="regerv_btn col-md-12" >
                                            <a><button type="submit" name="add" class="btn_2">Facturar cobro</button></a>
                                            <?php echo'<a href="Facturacion.php?nik='.$id_cita.'"><button type=button class="btn_2" style="color: #FFFF;">Cancelar</button></a>
                                            '?>
                                        </div>
                                    </div>
                                </form>
                                </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--::regervation_part end::-->
    <!-- footer part start-->
    
    
    <?php
        include 'Copyright.php'
    ?>
    <!-- footer part end-->

    <!-- jquery plugins here-->

    <?php
        include 'script.php'
    ?>
    <script>
    document.getElementById("precio_cobro").addEventListener('keyup',sanear);
    document.getElementById("desc_cobro").addEventListener('keyup',sanear2);
    function sanear(e) {
      let contenido = e.target.value;
      e.target.value = contenido.replace(" ", "");
    }
    function sanear2(e) {
      let contenido = e.target.value;
      e.target.value = contenido.toUpperCase().replace("  ", " ");
    }
    </script>
</body>

</html>