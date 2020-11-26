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