
function CorreoExiste(msg="") {
    //toastr.info('Este correo electrónico ya esta en uso, intenta con un  nuevo correo electrónico')
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
    
      toastr['error'](msg,"Verificando Datos");
};

//validar que no se ingrese contrasenas que ya se an usado anteriormente por el mismo usuario
$('#loginform').submit(e=>{
    let id='loginform';
    let $token= $('#token').val();
    let $id_usuario= $('#user_id').val();
    let $password= $('#password').val();
    let $con_password= $('#con_password').val();
    console.log('formulario');
    
    let obj='verificarcontraseña';
    $.post('end_point_verif_contra.php',{obj,$id_usuario,$token,$password,$con_password},(response)=>{
        
        console.log(response);

         let $json=response;
         let $msg= JSON.parse($json);
         if ($msg.length==0) {
             //console.log("esta vacio");
             enviarFormulario(id);
         }else{
         $msg.forEach(element => {
              //console.log(element);
        
         CorreoExiste(element);
         });
         }
    });
    
    e.preventDefault();
    });



//validar que no se ingrese contrasenas que ya se an usado anteriormente por el mismo usuario
$('#recuperacion_pregunta').submit(e=>{
    
   let id='recuperacion_pregunta';
    let $id_usuario= $('#id_usuario').val();
    let $password= $('#Ncontraseña').val();
    let $con_password= $('#Ccontraseña').val();
    console.log(`${$id_usuario} ${$password} ${$con_password}`);
    
    let obj='verificarcontraseñapregunta';
    $.post('end_point_verif_contra.php',{obj,$id_usuario,$password,$con_password},(response)=>{
        
        let $json=response;
        let $msg= JSON.parse($json);
        if ($msg.length==0) {
            //console.log("esta vacio");
            enviarFormulario(id);
        }else{
        $msg.forEach(element => {
             //console.log(element);
        
        CorreoExiste(element);
        });
        }
    });
    
    e.preventDefault();
    });

$('#autoregistro_usuario').submit(e=>{
    
    let id='autoregistro_usuario';
    let $nombreUsuario= $('#usuario').val();
    let $email= $('#email').val();
    console.log(`${$nombreUsuario} ${$email}`);

    let obj='verificarusuarioautoregistro';
         $.post('end_point_verif_contra.php',{obj,$nombreUsuario,$email},(response)=>{
            //console.log(response); 
             let $json=response;
             let $msg= JSON.parse($json);
             if ($msg.length==0) {
                 //console.log("esta vacio");
                 enviarFormulario(id);
             }else{
             $msg.forEach(element => {
                  //console.log(element);
             CorreoExiste(element);
             });
             }
         });
         
         e.preventDefault();
         });
     


function enviarFormulario(id) {
        
    let $formulario= document.getElementById(id);

 $formulario.submit()
}




 



