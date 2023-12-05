
//Evento de digitação no campo de pesquisa??
document.getElemenyById('input-pesquisa').addEventListener('input',function(){
    const query=this.value.trim();
    //Verifi"cando se a consulta não está vazia
    if(query!== ''){
        //Envia solicitação AJAX para o servidor para obter sugestões *??
        //SUBSTITUIR ESSA PARTE COM SUA LÓGICA REAL DE OBTENÇÃO DE SUGESTÕES DO SERVIDOR
        const suggestions = getSuggestionsFromServer(query);
        //Atualizar as sugestões no DOM *??
        displaySuggestions(suggestions);
    }
    else{
        //Se o campo de pesquisa estiver vazio, limpe as sugestões
        clearSuggestions();
    }
});
function getSuggestionsFromServer(query){
    //SIMULANDO UMA SOLICITAÇÃO AO SERVIDOR PARA OBTER SUGESTÕES
    //SUBSTITUIR ISSO COM SUA LÓGICA DE BUSCA REAL
    const suggestions=[
        'Hospital Regional do Gama',
        'Hospital Regional de Santa Maria',
        'Hospital Regional de Planaltina'
    ];
    return suggestions;
}
function displaySuggestions(suggestions){
    const sugestoesContainer=document.getElementById('sugestoes-container');
    sugestoesContainer.innerHTML='';//*??
    suggestions.forEach(function(suggestion){
        const suggestionElement=document.createElement('div');
        suggestionElement.textContent=suggestion;
        suggestionsContainer.appendChild(suggestionElement);
    });
}
function clearSuggestions(){
    const suggestionsContainer = document.getElementById('sugestoes-container');
    suggestionsContainer.innerHTML='';
}


//OWL CAROUSEL-->

$('.loop').owlCarousel({
center: true,
items:2,
loop:true,
margin:10,
responsive:{
600:{
items:4
}
}
});
//INICIANDO
$(document).ready(function(){
    $(".owl-carousel").owlCarousel();
});