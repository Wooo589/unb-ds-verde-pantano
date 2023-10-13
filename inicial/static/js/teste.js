var data = [
    {
        id: 0,
        value: 'DF',
        text: 'Distrito Federal'
    },
    {
        id: 1,
        value: 'SP',
        text: 'São Paulo'
    },
    {
        id: 2,
        value: 'RR',
        text: 'Roráima'
    }
];

$(document).ready(function(){
    $(".select-btn#selecionar_uf2").click(function(){
        $(".wrapper#selecionar_uf").toggleClass("active");
    });

    $(".select-btn#selecionar_cidade2").click(function(){
        $(".wrapper#selecionar_cidade").toggleClass("active");
    });

    $(".select-btn#especialidade2").click(function(){
        $(".wrapper#especialidade").toggleClass("active");
    });

    $(".select-btn#selecionar_local2").click(function(){
        $(".wrapper#selecionar_local").toggleClass("active");
    });

    $(".basic-select").select2({
        placeholder: 'Pesquisar',
    });
});