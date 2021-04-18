<?php
include 'conexion.php';
session_start();

if (isset($_POST['permisos'])){
   $rol=$_POST['id_rol'];
   $objetos=$_POST['id_vista'];
   $permisos=$_POST['id_permiso'];

 

   //obteniendo los permisos
   list($id_0,$id_1,$id_2,$id_3,
        $id_4,$id_5,$id_6,$id_7,
        $id_8,$id_9,$id_10,$id_11,
        $id_12,$id_13,$id_14,$id_15,
        $id_16,$id_17,$id_18,$id_19,
        $id_20,$id_21,$id_22,$id_23,
        $id_24,$id_25,$id_26,$id_27,
        $id_28,$id_29,$id_30,$id_31,
        $id_32,$id_33,$id_34,$id_35,
        $id_36,$id_37,$id_38,$id_39,
        $id_40,$id_41,$id_42,$id_43,
        $id_44,$id_45,$id_46,$id_47,
        $id_48,$id_49,$id_50,$id_51,
        $id_52,$id_53,$id_54,$id_55,
        $id_56,$id_57,$id_58,$id_59,
        $id_60,$id_61,$id_62,$id_63,
        $id_64,$id_65,$id_66,$id_67,
        $id_68,$id_69,$id_70,$id_71,
        $id_72,$id_73,$id_74,$id_75,
        $id_76,$id_77,$id_78,$id_79,
        $id_80,$id_81,$id_82,$id_83,
        $id_84,$id_85,$id_86,$id_87,
        $id_88,$id_89,$id_90,$id_91,
        $id_92,$id_93,$id_94,$id_95,
        $id_96,$id_97,$id_98,$id_99,
        $id_100,$id_101,$id_102,$id_103,
        $id_104,$id_105,$id_106,$id_107

   )=$permisos;
   //obteniendo las vistas
   list($id_vista_0,$id_vista_1,$id_vista_2,$id_vista_3,
         $id_vista_4,$id_vista_5,$id_vista_6,$id_vista_7,
         $id_vista_8,$id_vista_9,$id_vista_10,$id_vista_11,
         $id_vista_12,$id_vista_13,$id_vista_14,$id_vista_15,
         $id_vista_16,$id_vista_17,$id_vista_18,$id_vista_19,
         $id_vista_20,$id_vista_21,$id_vista_22,$id_vista_23,
         $id_vista_24,$id_vista_25,$id_vista_26,
   )=$objetos;
   //obtener el rol

   $insert = mysqli_query($con, "INSERT INTO tbl_permisos (id_rol,id_objeto,permiso_insertar,permiso_eliminar,permiso_actualizar,permiso_consultar) 
                                       VALUES ('$rol','$id_vista_0','$id_0','$id_2','$id_1','$id_3'),
                                              ('$rol','$id_vista_1','$id_4','$id_6','$id_5','$id_7'),
                                              ('$rol','$id_vista_2','$id_8','$id_10','$id_9','$id_11'),
                                              ('$rol','$id_vista_3','$id_12','$id_14','$id_13','$id_15'),
                                              ('$rol','$id_vista_4','$id_16','$id_18','$id_17','$id_19'),
                                              ('$rol','$id_vista_5','$id_20','$id_22','$id_21','$id_23'),
                                              ('$rol','$id_vista_6','$id_24','$id_26','$id_25','$id_27'),
                                              ('$rol','$id_vista_7','$id_28','$id_30','$id_29','$id_31'),
                                              ('$rol','$id_vista_8','$id_32','$id_34','$id_33','$id_35'),
                                              ('$rol','$id_vista_9','$id_36','$id_38','$id_37','$id_39'),
                                              ('$rol','$id_vista_10','$id_40','$id_42','$id_41','$id_43'),
                                              ('$rol','$id_vista_11','$id_44','$id_46','$id_45','$id_47'),
                                              ('$rol','$id_vista_12','$id_48','$id_50','$id_49','$id_51'),
                                              ('$rol','$id_vista_13','$id_52','$id_54','$id_53','$id_55'),
                                              ('$rol','$id_vista_14','$id_56','$id_58','$id_57','$id_59'),
                                              ('$rol','$id_vista_15','$id_60','$id_62','$id_61','$id_63'),
                                              ('$rol','$id_vista_16','$id_64','$id_66','$id_65','$id_67'),
                                              ('$rol','$id_vista_17','$id_68','$id_70','$id_69','$id_71'),
                                              ('$rol','$id_vista_18','$id_72','$id_74','$id_73','$id_75'),
                                              ('$rol','$id_vista_19','$id_76','$id_78','$id_77','$id_79'),
                                              ('$rol','$id_vista_20','$id_80','$id_82','$id_81','$id_83'),
                                              ('$rol','$id_vista_21','$id_84','$id_86','$id_85','$id_87'),
                                              ('$rol','$id_vista_22','$id_88','$id_90','$id_89','$id_91'),
                                              ('$rol','$id_vista_23','$id_92','$id_94','$id_93','$id_95'),
                                              ('$rol','$id_vista_24','$id_96','$id_98','$id_97','$id_99'),
                                              ('$rol','$id_vista_25','$id_100','$id_102','$id_101','$id_103'),
                                              ('$rol','$id_vista_26','$id_104','$id_106','$id_105','$id_107'),
                                       ");
    
    if($insert){
        $id_usuario= $_SESSION['ID_Usuario'];
                        $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
                        VALUES ('$id_usuario',12,'Insert','SE INGRESÓ UN NUEVO ESTADO CIVIL')") ;
        echo "<script type='text/javascript'>
            alert('Permisos  registrados exitosamente');
            window.location.href= 'roles_permisos.php';
        </script>";
    }else{
        echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Error, no se pudo guardar los datos.</div>';
    }  
}


if(isset($_POST['update_permisos'])){
   

   foreach ($_POST['id_permiso'] as $id) {
       $editInsertar=mysqli_real_escape_string($con,$_POST['permiso_insertar'][$id]);
       $editEliminar=mysqli_real_escape_string($con,$_POST['permiso_eliminar'][$id]);
       $editUpdate=mysqli_real_escape_string($con,$_POST['permiso_actualizar'][$id]);
       $editConsultar=mysqli_real_escape_string($con,$_POST['permiso_consultar'][$id]);
$actualizar=$con->query("UPDATE tbl_permisos SET permiso_insertar='$editInsertar',permiso_eliminar='$editEliminar',
permiso_actualizar='$editUpdate',permiso_consultar='$editConsultar'
WHERE id_permiso='$id' ");

    }
   if ($actualizar) {
    echo "<script type='text/javascript'>
            alert('Permisos  Actualizados exitosamente');
            window.location.href= 'roles_permisos.php';
        </script>";
   }else{
    echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Error, no se pudo Actualizar los datos.</div>';
   }
}

?>