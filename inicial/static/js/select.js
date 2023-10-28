$(document).ready(function(){
    $.fn.select2.defaults.set("allowClear", "true");

    $(".select-uf").select2({
        placeholder: 'Selecionar UF',
    });

    $(".select-municipio").select2({
        placeholder: 'Selecionar Cidade/Município',
    });

    $(".select-especialidade").select2({
        placeholder: 'Selecionar Especialidade',
    });

    $(".select-categoria").select2({
        placeholder: 'Selecionar Categoria',
    });

    $(".login_box").click(function(){
        $(".content_account").toggleClass("active");
    });
});