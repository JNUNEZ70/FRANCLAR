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

        customButtons: {
            Miboton: {
                text: 'Boton',
                click: function() {
                    alert("accion");
                    $('#exampleModal').modal('toggle')
                }
            }
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
        events: "http://localhost:8008/Franclar/modulo_citas.php",

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