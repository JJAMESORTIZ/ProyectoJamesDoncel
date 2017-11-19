document.addEventListener("DOMContentLoaded", () =>{
	let form = document.getElememtById('form_subir');

	form.addEventListener("submit", function(event) {
		event.preventDefault();
		subir_archivos(this);
	});
});

function subir_archivos(form){
    let barra_estado = form.children[1].children[0],
        span = barra_estado.children[0],
        botom_cancelar = form.children[2].children[1];


   barra_estado.classList.remove('barra_verde', 'barra_roja');

   //Peticíón
   let Peticíon = new XMLHttpRequest();

   //Progreso

   Peticíón.upload.addEventListener("progress", () =>{

      let porcentaje = Math.round((event.loaded / event.total) * 100);

      consola.log(porcentaje);

      barra_estado.style.width = porcentaje+'%';
      span.innerHTML = porcentaje+'%';

   });

   //fINALIZADO

   Peticion.addEventListener("load", () => {
      barra_estado.classList.add('barra_verde');
      span.innerHTML = "Proceso Completado";
   });

   //Enviar datos

   Peticíon.open('post', 'subir.php');
   Peticion.send(new FormData(form));

   //Cancelar
   botom_cancelar.addEventListener("click", () => {
   	   Peticion.abort();
   	   barra_estado.classList.remove('barra_verde');
   	   barra_estado.classList.add('barra_roja');
   	   span.innerHTML = "Proceso Cancelado";

   })


}