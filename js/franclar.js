/**esto es para fullcalendar */



document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');

    var calendar = new FullCalendar.Calendar(calendarEl, {
        // defaultDate: new Date(2019, 8, 1),
        plugins: ['dayGrid', 'interaction', 'timeGrid', 'list'],
        //defaultView:'timeGridDay'

        header: {
            left: 'prev,next today Miboton',
            center: 'title',
            right: 'dayGridMonth,timeGridWeek,timeGridDay'
        },

        dateClick: function(date, jsEvent, view) {
            $('#txt_fecha').val(date.dateStr);
            console.log(date.dateStr);
            $('#ModalEventos').modal();
            // console.log(info);
            // calendar.addEvent({ title: 'evento x', date: info.dateStr });
        },



        /*events:[
        {
          title:'reunion',
          start:'2020-11-24 10:05:00',
          descripcion:'RRHH'
        },
        {
          title:'entrega de proyecto',
          start:'2020-11-24 11:05:00'
        }
  
      ]*/
        events: "http://localhost:80/Franclar/modulo_citas.php",

        eventClick: function(calEvent, jsEvent, view) {
            // console.log(info.event.title);
            // console.log(info.event.start);
            //console.log(info.event.extendedProps.especialidad);
            console.log(calEvent.event.title);
            console.log(calEvent.event.start);
            console.log(calEvent.event.extendedProps.especialidad);
            // console.log(info.event.extendedProps.paciente);
            $('#tituloEvento').html(calEvent.event.title);
            $('#descripcion').html(calEvent.event.extendedProps.especialidad);
            $('#exampleModal').modal();

        },
    });

    calendar.setOption('locale', 'Es');
    calendar.render();
});


/** fin del funllcalendar */
function permiso() {

    let texto = `Usuario no tiene permisos  Comunicarse con el administrador`;
    const hablar = (texto) => speechSynthesis.speak(new SpeechSynthesisUtterance(texto));
    hablar(texto);
}



function validar() {
    let $contra_actual = document.getElementById("contra_actual"),
        $p_confirmar = document.getElementById("confirmar"),
        $contra_nueva = document.getElementById("contra_nueva"),
        $confirmar_contra = document.getElementById("confirmar_contra"),
        $btn_guarda = document.getElementById("btn_guarda"),
        $confirmar_contra_valor = document.getElementById("confirmar_contra").value;

    if ($confirmar_contra_valor !== $contra_nueva.value) {


        $confirmar_contra.classList.add("border", "border-danger");
        $p_confirmar.classList.remove("d-none");
        $btn_guarda.classList.add("d-none");

    } else {
        existe = $confirmar_contra.classList.contains("border-danger")
        if (existe) {
            $confirmar_contra.classList.replace("border-danger", "border-success");


            console.log($p_confirmar);
            $p_confirmar.classList.add("d-none");
            $btn_guarda.classList.remove("d-none");
        } else {
            $p_confirmar.classList.toggle("border-success");
        }

    }

}

function fechaMaxima(id) {
    let $calendario = id;
    console.log($calendario);

    let fecha = new Date();
    dia = fecha.getDate();
    if (dia <= 9) {
        dia = "0" + dia;
        mes = fecha.getMonth() + 1;
        console.log(dia);
        console.log(mes);
        anio = fecha.getFullYear();
        rangoMinimo = anio - 120;
        $fechaRango = `${rangoMinimo}-${mes}-${dia}`;
        $calendario.setAttribute("min", $fechaRango);
        console.log(anio);
        $fecha = `${anio}-0${mes}-${dia}`;
        $calendario.setAttribute("max", $fecha);
    } else {
        mes = fecha.getMonth() + 1;
        console.log(dia);
        console.log(mes);
        anio = fecha.getFullYear();
        console.log(anio);
        $fecha = `${anio}-0${mes}-${dia}`;
        $calendario.setAttribute("max", $fecha);
    }


}

function fechaMinima(id) {
    let $calendario = id;

    //console.log($calendario);


    //console.log($calendario);
    let fecha = new Date();
    dia = fecha.getDate();
    //console.log(dia);
    if (dia <= 9) {
        dia = "0" + dia;
        //console.log(dia);
        mes = fecha.getMonth() + 1;
        //console.log(mes);
        anio = fecha.getFullYear();
        //console.log(anio);
        rangoFecha = anio + 4;
        $fecha = `${anio}-0${mes}-${dia}`;
        $fechaRango = `${rangoFecha}-${mes}-${dia}`;
        $calendario.setAttribute("min", $fecha);
        $calendario.setAttribute("max", $fechaRango);
    } else {

        //console.log(dia);
        mes = fecha.getMonth() + 1;
        //console.log(mes);
        anio = fecha.getFullYear();
        //console.log(anio);
        rangoFecha = anio + 4;
        $fecha = `${anio}-0${mes}-${dia}`;
        $fechaRango = `${rangoFecha}-${mes}-${dia}`;
        $calendario.setAttribute("min", $fecha);
        $calendario.setAttribute("max", $fechaRango);
    }
}

//funciones de sweet alert

function edad(fecha, campo = undefined) {
    let campoEdad = campo;
    let hoy = new Date();
    let cumpleanos = new Date(fecha);
    let edad = hoy.getFullYear() - cumpleanos.getFullYear();
    let m = hoy.getMonth() - cumpleanos.getMonth();

    if (m < 0 || (m === 0 && hoy.getDate() < cumpleanos.getDate())) {
        edad--;
    }
    if (campoEdad == undefined) {

        console.log(campoEdad);
    } else {

        campoEdad.value = edad;
    }
}
toastr.options = {
    "closeButton": true,
    "debug": false,
    "newestOnTop": false,
    "progressBar": true,
    "positionClass": "toast-top-right",
    "preventDuplicates": true,
    "onclick": null,
    "showDuration": "300",
    "hideDuration": "1000",
    "timeOut": "9000",
    "extendedTimeOut": "1000",
    "showEasing": "swing",
    "hideEasing": "swing",
    "showMethod": "fadeIn",
    "hideMethod": "fadeOut"
  }

function CorreoExiste(msg="") {
    //toastr.info('Este correo electrónico ya esta en uso, intenta con un  nuevo correo electrónico')
    
    
      toastr['error'](msg,"Verificando Datos");
};

function envio_prueba() {
    let $formulario = document.prueba_imagen.submit();
    console.log($formulario);

}

function envio_prueba2() {
    let $formulario = document.prueba_imagen2.submit();
    console.log($formulario);

}

function buscardinamico() {
   
    let $input=document.querySelectorAll('input')[4].value;
    //console.log($input);
    let hash = btoa($input);
     
 
   window.location="Reportes-PDF/ReporteBitacora.php?perl="+hash+"";
   
 }

 function buscar_usuario() {
   
    let $input=document.querySelectorAll('input')[0].value;
    //console.log($input);
    let hash = btoa($input);
     
 
   window.location="Reportes-PDF/ReporteUsuarios.php?perl="+hash+"";
   
 }

 function buscar_personal() {
   
    let $input=document.querySelectorAll('input')[0].value;
    //console.log($input);
    let hash = btoa($input);
     
 
   window.location="Reportes-PDF/ReportePersonal.php?perl="+hash+"";
   
 }

 function buscar_cita() {
   
    let $input=document.querySelectorAll('input')[0].value;
    //console.log($input);
    let hash = btoa($input);
     
 
   window.location="Reportes-PDF/ReporteCitas.php?perl="+hash+"";
   
 }

 function buscar_paciente() {
   
    let $input=document.querySelectorAll('input')[0].value;
    //console.log($input);
    let hash = btoa($input);
     
 
   window.location="Reportes-PDF/ReportePacientes.php?perl="+hash+"";
   
 }

 /*function buscar_cargo() {
   
    let $input=document.querySelectorAll('input')[0].value;
    //console.log($input);
    let hash = btoa($input);
 
   window.location="Reportes-PDF/ReporteCargos.php?perl="+hash+"";
   
 }

  function buscar_genero() {
   
    let $input=document.querySelectorAll('input')[0].value;
    //console.log($input);
    let hash = btoa($input);
 
   window.location="Reportes-PDF/ReporteGenero.php?perl="+hash+"";
   
 }*/

 function pdfDinamico(id) {
    let $id=id.id;
    let $input=document.querySelectorAll('input')[0].value;
    let hash = btoa($input);
       

        // console.log($input);
        if ($id=='pdf_cargos') {
          
            /*//! si hay alguna falla pueden revisar la consola para ver que pasa
            //!para eso descomentar estas dos lineas de abajo. 
            console.log('estas en cargos');
            console.log($input);*/
           
          
            
            //window.location="Reportes-PDF/ReportesPrueba.php?perl="+hash+"";//probando reportes con funciones a ver si da esta mierda
            window.location="Reportes-PDF/ReporteCargos.php?perl="+hash+"";

        }else if ($id=='pdf_especialidad') {
            //console.log('estas en especialidades');
            //console.log($input);
            window.location="Reportes-PDF/ReporteEspecialidades.php?perl="+hash+"";

        }else if ($id=='pdf_genero') {
            //console.log('estas en genero');
            //console.log($input);
            window.location="Reportes-PDF/ReporteGenero.php?perl="+hash+"";

        }else if ($id=='pdf_estado_civil') {
            //console.log('estas en estado_civil');
            //console.log($input);
            window.location="Reportes-PDF/ReporteEstadoCivil.php?perl="+hash+"";

        }else if ($id=='pdf_religion') {
            //console.log('estas en religion');
            //console.log($input);
            window.location="Reportes-PDF/ReporteReligion.php?perl="+hash+"";

        }else if ($id=='pdf_tipo_sangre') {
            //console.log('estas en tipo de sangre');
            //console.log($input);
            window.location="Reportes-PDF/ReporteTipoSangre.php?perl="+hash+"";

        }else if ($id=='pdf_parentesco') {
            //console.log('estas en parentesco');
            //console.log($input);
            window.location="Reportes-PDF/ReporteParentesco.php?perl="+hash+"";

        }else if ($id=='pdf_cobros_adicionales') {
            //console.log('estas en cobros adicinales');
            //console.log($input);
            window.location="Reportes-PDF/ReporteCobrosAdicionales.php?perl="+hash+"";

        }else if ($id=='pdf_roles') {
            //console.log('estas en cobros adicinales');
            //console.log($input);
            window.location="Reportes-PDF/ReporteRoles.php?perl="+hash+"";

        }else if ($id=='pdf_parametros_seguridad') {
            //console.log('estas en cobros adicinales');
            //console.log($input);
            window.location="Reportes-PDF/ReporteParametros.php?perl="+hash+"";

        }else if ($id=='pdf_parametros_sistema') {
            //console.log('estas en cobros adicinales');
            //console.log($input);
            window.location="Reportes-PDF/ReporteParametrosSistema.php?perl="+hash+"";

        }else if ($id=='pdf_preguntas_secretas') {
            //console.log('estas en cobros adicinales');
            //console.log($input);
            window.location="Reportes-PDF/ReportePreguntasSecretas.php?perl="+hash+"";
// validar que no exista usuarios con el mismo nombre
//!esto se valida cuando el usuario admin registra un nuevo usuario

$('#Form_registrar_usuario').submit(e=>{
let $email= $('#email').val();
let $usuario= $('#NomU').val();
let $id_usuario= $('#ColaboradorU').val();
let $rol_usuario= $('#RolU').val();
let $contrasena= $('#passwordU').val();
console.log($email,$usuario,$id_usuario,$rol_usuario,$contrasena);

let funcion='verificar';
$.post('end-point_usuarios.php',{funcion,$email,$usuario,$id_usuario,$rol_usuario,$contrasena},(response)=>{


let $json=response;
let $msg= JSON.parse($json);
if ($msg.length==0) {
     enviarFormulario($msg)
   
}else{
$msg.forEach(element => {
     console.log(element);

CorreoExiste(element);
});
}


});

e.preventDefault();
});
function enviarFormulario($msg) {
  let $formulario= document.getElementById('Form_registrar_usuario');

 $formulario.submit()
}

function buscardinamico() {
   
   let $input=document.querySelectorAll('input')[4].value;
   //console.log($input);
   let hash = btoa($input);
    

  window.location="Reportes-PDF/ReporteBitacora.php?perl="+hash+"";
  
}

function pdfDinamico(id) {
    let $id=id.id;
    let $input=document.querySelectorAll('input')[0].value;
  //let hash = btoa($input);    

        // console.log($input);
        if ($id=='pdf_cargos') {
            console.log('estas en cargos');
            console.log($input);
            // window.location="Reportes-PDF/ReporteCargos.php?perl="+hash+"";

        }else if ($id=='pdf_especialidad') {
            console.log('estas en especialidades');
            console.log($input);
            // window.location="Reportes-PDF/ReporteEspecialidades.php?perl="+hash+"";

        }else if ($id=='pdf_genero') {
            console.log('estas en genero');
            console.log($input);
            // window.location="Reportes-PDF/ReporteGenero.php?perl="+hash+"";

        }else if ($id=='pdf_estado_civil') {
            console.log('estas en estado_civil');
            console.log($input);
            // window.location="Reportes-PDF/ReporteEstadoCivil.php?perl="+hash+"";

        }else if ($id=='pdf_religion') {
            console.log('estas en religion');
            console.log($input);
            // window.location="Reportes-PDF/ReporteReligion.php?perl="+hash+"";

        }else if ($id=='pdf_tipo_sangre') {
            console.log('estas en tipo de sangre');
            console.log($input);
            // window.location="Reportes-PDF/ReporteGenero.php?perl="+hash+"";

        }else if ($id=='pdf_genero') {
            console.log('estas en genero');
            console.log($input);
            // window.location="Reportes-PDF/ReporteGenero.php?perl="+hash+"";

        }else if ($id=='pdf_genero') {
            console.log('estas en genero');
            console.log($input);
            // window.location="Reportes-PDF/ReporteGenero.php?perl="+hash+"";

        }else if ($id=='pdf_genero') {
            console.log('estas en genero');
            console.log($input);
            // window.location="Reportes-PDF/ReporteGenero.php?perl="+hash+"";

        }
 
    

  // window.location="Reportes-PDF/ReporteBitacora.php?perl="+hash+"";
   
 }

}
 }