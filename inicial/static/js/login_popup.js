$(document).ready(function(){
    $(".login_box2").click(function(){
        $(".modal_box_login").removeClass("hidden");
    });

    $(".voltar2").click(function(){
        $(".modal_box_login").addClass("hidden");
    });

    $(".link_esqueciSenha").click(function(){
        $(".modal_login").addClass("hidden");
        $(".modal_esqueciSenha").removeClass("hidden");
    });

    $(".voltar3").click(function(){
        $(".modal_esqueciSenha").addClass("hidden");
        $(".modal_login").removeClass("hidden");
    });
    
    $(".message").click(function(){
        $(".message").hide();
    });
});