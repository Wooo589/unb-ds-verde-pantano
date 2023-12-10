//Evento de digitação no campo de pesquisa??
// document.getElemenyById('input-pesquisa').addEventListener('input',function(){
//     const query=this.value.trim();
//     //Verifi"cando se a consulta não está vazia
//     if(query!== ''){
//         //Envia solicitação AJAX para o servidor para obter sugestões *??
//         //SUBSTITUIR ESSA PARTE COM SUA LÓGICA REAL DE OBTENÇÃO DE SUGESTÕES DO SERVIDOR
//         const suggestions = getSuggestionsFromServer(query);
//         //Atualizar as sugestões no DOM *??
//         displaySuggestions(suggestions);
//     }
//     else{
//         //Se o campo de pesquisa estiver vazio, limpe as sugestões
//         clearSuggestions();
//     }
// });
// function getSuggestionsFromServer(query){
//     //SIMULANDO UMA SOLICITAÇÃO AO SERVIDOR PARA OBTER SUGESTÕES
//     //SUBSTITUIR ISSO COM SUA LÓGICA DE BUSCA REAL
//     const suggestions=[
//         'Hospital Regional do Gama',
//         'Hospital Regional de Santa Maria',
//         'Hospital Regional de Planaltina'
//     ];
//     return suggestions;
// }
// function displaySuggestions(suggestions){
//     const sugestoesContainer=document.getElementById('sugestoes-container');
//     sugestoesContainer.innerHTML='';//*??
//     suggestions.forEach(function(suggestion){
//         const suggestionElement=document.createElement('div');
//         suggestionElement.textContent=suggestion;
//         suggestionsContainer.appendChild(suggestionElement);
//     });
// }
// function clearSuggestions(){
//     const suggestionsContainer = document.getElementById('sugestoes-container');
//     suggestionsContainer.innerHTML='';
// }
$(document).ready(function(){
    var interval = window.setInterval(rotateSlides, 6000)

    function rotateSlides() {
        var $firstSlide1 = $('#lista_hospitais').find('.slide:first');
        var width1 = $firstSlide1.width();

        $firstSlide1.animate({marginLeft: -width1}, 1000, function(){
            var $lastSlide1 = $("#lista_hospitais").find(".slide:last");
            $lastSlide1.after($firstSlide1);
            $firstSlide1.css({marginLeft: 20})
        })

        var $firstSlide2 = $('#lista_news').find('.slide_news:first');
        var width2 = $firstSlide2.width();

        $firstSlide2.animate({marginLeft: -width2}, 1000, function(){
            var $lastSlide2 = $("#lista_news").find(".slide_news:last");
            $lastSlide2.after($firstSlide2);
            $firstSlide2.css({marginLeft: 20})
        }) 
    }
    $('#arrow_left1').click(previousSlide1);
    $('#arrow_right1').click(nextSlide1);
    // $('.slide').click(nextSlide1);
    

    function nextSlide1(){
        window.clearInterval(interval);
        var $currentSlide1 = $('#lista_hospitais').find('.slide:first');
        var width1 = $currentSlide1.width();
        $currentSlide1.animate({marginLeft: -width1}, 1000, function(){
            var $lastSlide1 = $('#lista_hospitais').find('.slide:last')
            $lastSlide1.after($currentSlide1);
            $currentSlide1.css({marginLeft: 20})
            interval = window.setInterval(rotateSlides, 6000);
        });
    }

    function previousSlide1(){
        window.clearInterval(interval);
        var $currentSlide1 = $("#lista_hospitais").find('.slide:first');
        var width1 = $currentSlide1.width();
        var $previousSlide1 = $('#lista_hospitais').find('.slide:last')
        $previousSlide1.css({marginLeft: -width1})
        $currentSlide1.before($previousSlide1);
        $previousSlide1.animate({marginLeft: 20}, 1000, function(){
            interval = window.setInterval(rotateSlides, 3000);
        });
    }

    $('#arrow_left2').click(previousSlide2);
    $('#arrow_right2').click(nextSlide2);
    // $('.slide_news').click(nextSlide2);

    function nextSlide2(){
        window.clearInterval(interval);
        var $currentSlide2 = $('#lista_news').find('.slide_news:first');
        var width2 = $currentSlide2.width();
        $currentSlide2.animate({marginLeft: -width2}, 1000, function(){
            var $lastSlide2 = $('#lista_news').find('.slide_news:last')
            $lastSlide2.after($currentSlide2);
            $currentSlide2.css({marginLeft: 20})
            interval = window.setInterval(rotateSlides, 3000);
        });
    }

    function previousSlide2(){
        window.clearInterval(interval);
        var $currentSlide2 = $("#lista_news").find('.slide_news:first');
        var width2 = $currentSlide2.width();
        var $previousSlide2 = $('#lista_news').find('.slide_news:last')
        $previousSlide2.css({marginLeft: -width2})
        $currentSlide2.before($previousSlide2);
        $previousSlide2.animate({marginLeft: 20}, 1000, function(){
            interval = window.setInterval(rotateSlides, 3000);
        });
    }

    // $("#menu_icon").click(function(){
    //     $("#menuList").toggle();
    // })
});

var menuList = document.getElementById("menuList");

function togglemenu() {
    if(menuList.style.display == "none")
    {
        menuList.style.display = "flex";
        menuList.style.maxHeight = "190px";
    }
    else
    {
        menuList.style.display = "none";
        
    }
}

  
  
 
  



// var swiper = new Swiper(".mySwiper", {
//     slidesPerView: 3,
//     spaceBetween: 25,
//     // slidesPerGroup: 3,
//     loop: true,
//     // loopFillGroupWithBlank: true,
//     centerSlide: 'true',
//     fade: 'true',
//     grabCursor: 'true',
//     pagination: {
//       el: ".swiper-pagination",
//       clickable: true,
//     },
//     navigation: {
//       nextEl: ".swiper-button-next",
//       prevEl: ".swiper-button-prev",
//     },

//     breakpoints:{
//         0: {
//             slidesPerView: 1,
//         },
//         520: {
//             slidesPerView: 2,
//         },
//         950: {
//             slidesPerView: 2,
//         },
//     },
// });

//OWL CAROUSEL-->

// $('.loop').owlCarousel({
// center: true,
// items:2,
// loop:true,
// margin:10,
// responsive:{
// 600:{
// items:4
// }
// }
// });
// //INICIANDO
// $(document).ready(function(){
//     $(".owl-carousel").owlCarousel();
// });