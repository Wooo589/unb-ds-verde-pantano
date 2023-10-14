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
    
    $.fn.select2.defaults.set("allowClear", "true");

    $(".select-uf").select2({
        placeholder: 'Selecionar UF',
    });

    $(".select-municipio").select2({
        placeholder: 'Selecionar Município',
    });

    $(".select-especialidade").select2({
        placeholder: 'Selecionar Especialidade',
    });

    $(".select-local").select2({
        placeholder: 'Selecionar Local',
    });
});