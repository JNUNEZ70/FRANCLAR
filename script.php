<!-- ******** No se encontro el archivo -->
<!-- <script src="js/jquery-1.12.1.min.js"></script> -->
    <!-- popper js -->
    <script src="js/popper.min.js"></script>
    <!-- bootstrap js -->
    <script src="js/bootstrap.min.js"></script>
    <!-- owl carousel js -->
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <!-- contact js -->
    <script src="js/jquery.ajaxchimp.min.js"></script>
    <script src="js/jquery.form.js"></script>
    <script src="js/jquery.validate.min.js"></script>
    <script src="js/mail-script.js"></script>
    <script src="js/contact.js"></script>
    
     <script src="js/jquery.min.js"></script>
     <script src="js/moment.min.js"></script>
    <!-- custom js -->
    <script src="js/custom.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <script src="js/bootstrap-datepicker.js"></script>
    <!-- toastr js -->
    <script src="toastr/toastr.min.js" ></script>
    <script>
    $('.date').datepicker({
		format: 'yyyy-mm-dd',
	})
    </script>
    <script>
        function soloLetras(e) {
            var key = e.keyCode || e.which,
            tecla = String.fromCharCode(key).toLowerCase(),
            letras = "áéíóúabcdefghijklmnñopqrstuvwxyz",
            especiales = [8],
            tecla_especial = false;

            for (var i in especiales) {
            if (key == especiales[i]) {
                tecla_especial = true;
                break;
            }
            }

            if (letras.indexOf(tecla) == -1 && !tecla_especial) {
            return false;
            }
        }
    </script>
    <script>
        function soloLetrasPregunta(e) {
            var key = e.keyCode || e.which,
            tecla = String.fromCharCode(key).toLowerCase(),
            letras = " áéíóúabcdefghijklmnñopqrstuvwxyz",
            especiales = [8, 63, 191],
            tecla_especial = false;

            for (var i in especiales) {
            if (key == especiales[i]) {
                tecla_especial = true;
                break;
            }
            }

            if (letras.indexOf(tecla) == -1 && !tecla_especial) {
            return false;
            }
        }
    </script>
    <script>
        function Correo(e) {
            var key = e.keyCode || e.which,
            tecla = String.fromCharCode(key).toLowerCase(),
            letras = " áéíóúabcdefghijklmnñopqrstuvwxyz1234567890",
            especiales = [8, 46, 64, 95],
            tecla_especial = false;

            for (var i in especiales) {
            if (key == especiales[i]) {
                tecla_especial = true;
                break;
            }
            }

            if (letras.indexOf(tecla) == -1 && !tecla_especial) {
            return false;
            }
        }
    </script>
    <script>
        function alfanumerica(e) {
            var key = e.keyCode || e.which,
            tecla = String.fromCharCode(key).toLowerCase(),
            letras = " áéíóúabcdefghijklmnñopqrstuvwxyz1234567890",
            especiales = [8],
            tecla_especial = false;

            for (var i in especiales) {
            if (key == especiales[i]) {
                tecla_especial = true;
                break;
            }
            }

            if (letras.indexOf(tecla) == -1 && !tecla_especial) {
            return false;
            }
        }
    </script>
    <script>
        function solonumeros(e) {
            var key = e.keyCode || e.which,
            tecla = String.fromCharCode(key).toLowerCase(),
            numeros = " 1234567890",
            especiales = [8],
            tecla_especial = false;

            for (var i in especiales) {
            if (key == especiales[i]) {
                tecla_especial = true;
                break;
            }
            }

            if (numeros.indexOf(tecla) == -1 && !tecla_especial) {
            return false;
            }
        }
    </script>
    <script>
        function solonumeros_conpuntoypleca(e) {
            var key = e.keyCode || e.which,
            tecla = String.fromCharCode(key).toLowerCase(),
            numeros = " 1234567890",
            especiales = [8 , 46 ,47],
            tecla_especial = false;

            for (var i in especiales) {
            if (key == especiales[i]) {
                tecla_especial = true;
                break;
            }
            }

            if (numeros.indexOf(tecla) == -1 && !tecla_especial) {
            return false;
            }
        }
    </script>
    <script>
        function solonumeros_conpunto(e) {
            var key = e.keyCode || e.which,
            tecla = String.fromCharCode(key).toLowerCase(),
            numeros = " 1234567890",
            especiales = [8 , 46],
            tecla_especial = false;

            for (var i in especiales) {
            if (key == especiales[i]) {
                tecla_especial = true;
                break;
            }
            }

            if (numeros.indexOf(tecla) == -1 && !tecla_especial) {
            return false;
            }
        }
    </script>
    <script>
        function solonumerosfecha(e) {
            var key = e.keyCode || e.which,
            tecla = String.fromCharCode(key).toLowerCase(),
            numeros = " 1234567890",
            especiales = [8, 45],
            tecla_especial = false;

            for (var i in especiales) {
            if (key == especiales[i]) {
                tecla_especial = true;
                break;
            }
            }

            if (numeros.indexOf(tecla) == -1 && !tecla_especial) {
            return false;
            }
        }
    </script>

    <script>
    
    var teclaAnterior = "";
    function permitirUnEspacio(event) {
        teclaAnterior = teclaAnterior + " " + event.keyCode;
        var arregloTA = teclaAnterior.split(" ");
        if (event.keyCode == 32 && arregloTA[arregloTA.length - 2] == 32) {
            event.preventDefault();
        }     
    }

    function impedirEspacios(event) {
        var codigo = event.which || event.keyCode;

        if(codigo === 32){
            event.preventDefault();
        
        }    
    }

    function sinNumeros(event) {
        var codigo = event.which || event.keyCode;
        // console.log(codigo);
        if(codigo >= 48 && codigo <= 57  || codigo >= 97  && codigo <= 105){
            event.preventDefault();

        } 
        
    }


    function sinLetras(event) {
        var codigo = event.which || event.keyCode;
        // console.log(codigo);

        if(codigo >= 65 && codigo <= 90 || codigo == 192){
            event.preventDefault();

        } 
        
    }


    function sinCaracteres(event) {
        var key = event.which || event.keyCode;
        // console.log(key)

        if(key == 106 || key == 107 || key == 109 || key == 110 || key == 111 || key == 186 ||key == 187 ||key == 188 || key == 189 || key == 190 || key == 191 || key == 219 || key == 220 || key == 221 || key == 222) {
            event.preventDefault();
        } 
        
    }

    function mayus(e) {

        var tecla=e.value;
        var tecla2=tecla.toUpperCase();
        e.value = tecla2;
        }
    
    </script>

<!-- scrip franclar -->

<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.js"></script>
<!-- datatables JS -->
<script type="text/javascript" src="datatables/datatables.min.js"></script>    
<!-- para usar botones en datatables JS -->  
<script src="datatables/Buttons-1.5.6/js/dataTables.buttons.min.js"></script>  
     <script src="datatables/JSZip-2.5.0/jszip.min.js"></script>    
     <script src="datatables/pdfmake-0.1.36/pdfmake.min.js"></script>    
     <script src="datatables/pdfmake-0.1.36/vfs_fonts.js"></script>
     <script src="datatables/Buttons-1.5.6/js/buttons.html5.min.js"></script>
     
      
<script>
    // const prueba= document.querySelectorAll("table");
    // console.log(prueba);
        $(document).ready(function() {    
        $('#datatableUsuarios').DataTable({        
            language: {
                    "lengthMenu": "Mostrar _MENU_ registros",
                    "zeroRecords": "No se encontraron resultados",
                    "info": "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
                    "infoEmpty": "Mostrando registros del 0 al 0 de un total de 0 registros",
                    "infoFiltered": "(filtrado de un total de _MAX_ registros)",
                    "sSearch": "Buscar:",
                    "oPaginate": {
                        "sFirst": "Primero",
                        "sLast":"Último",
                        "sNext":"Siguiente",
                        "sPrevious": "Anterior"
                    },
                    "sProcessing":"Procesando...",
                },        
        });     
    });

    
    </script>

    <script>

    // In your Javascript (external .js resource or <script> tag)
    $(document).ready(function() {
        $('.select_buscador').select2();
    });
    
    </script>
    <script src="js/franclar.js" > </script>