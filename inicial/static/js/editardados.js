var count1 = 0;
var count2 = 0;
var count3 = 0;
var count4 = 0;
var count5 = 0;
var count6 = 0;
var count7 = 0;
var count8 = 0;

$(document).ready(function(){
    $("#btnPesquisar").click(function(){
     $("#top-bar1").toggle("fast");
     $("#top-bar2").hide("fast");
     $("#top-bar3").hide("fast");
     $("#fechar_aba").show("fast");
   });
   $("#locais_de_atendimento").click(function(){
     $("#top-bar2").toggle("fast");
     $("#top-bar1").hide();
     $("#top-bar3").hide();
     $("#fechar_aba").show("fast");
   });
   $("#outras_duvidas").click(function(){
     $("#top-bar3").toggle("fast");
     $("#top-bar1").hide();
     $("#top-bar2").hide();
     $("#fechar_aba").show("fast");
   });
   $("#fechar_aba").click(function(){
     $("#top-bar1").hide();
     $("#top-bar2").hide();
     $("#top-bar3").hide();
   });
   $(".voltar").click(function(){
     $("#top-bar1").show();
     $("#top-bar2").hide();
     $("#top-bar3").hide();
     $("#fechar_aba").show("fast");
   }); 
   $(".login_box").click(function(){
     $("#top-bar1").hide();
     $("#top-bar2").hide();
     $("#top-bar3").hide();
   }); 
   $("#sim1").click(function(){
    $("#answer1").addClass("on");
   });
   $("#sim2").click(function(){
    $("#answer2").addClass("on");
   });
   $("#nao1").click(function(){
    $("#answer1").removeClass("on");
    $('input[name="freq1"]').prop('checked', false).change();               
   });
   $("#nao2").click(function(){
    $("#answer2").removeClass("on");
    $('input[name="freq2"]').prop('checked', false).change(); 
   });
   $("#sim3").click(function(){
    $("#outer_box_doenca_cronica").addClass("on");
   });
   $("#sim4").click(function(){
    $("#outer_box_sintoma").addClass("on");
   });
   $("#sim5").click(function(){
    $("#outer_box_diagnostico").addClass("on");
   });
   $("#sim6").click(function(){
    $("#outer_box_cirurgia").addClass("on");
   });
   $("#sim7").click(function(){
    $("#outer_box_internacao").addClass("on");
   });
   $("#sim8").click(function(){
   });
   $("#sim9").click(function(){
    $("#outer_med_cp").addClass("on");
   });
   $("#sim10").click(function(){
    $("#outer_med_sp").addClass("on");
   });
   $(".add_condicao_familiar").click(function(){
    $(".condicao_familiar").addClass("on");
   });
    $("#nao3").click(function(){
     $("#outer_box_doenca_cronica").removeClass("on");
    });
   $("#nao4").click(function(){
    $("#outer_box_sintoma").removeClass("on");
   });
   $("#nao5").click(function(){
    $("#outer_box_diagnostico").removeClass("on");
   });
   $("#nao6").click(function(){
    $("#outer_box_cirurgia").removeClass("on");
   });
   $("#nao7").click(function(){
    $("#outer_box_internacao").removeClass("on");
   });
   $("#nao8").click(function(){
    $("#outer_condicao_familiar").removeClass("on");
   });
   $("#nao9").click(function(){
    $("#outer_med_cp").removeClass("on");
    $('input[name="freq3"]').prop('checked', false).change(); 
   });
   $("#nao10").click(function(){
    $("#outer_med_sp").removeClass("on");
    $('input[name="freq4"]').prop('checked', false).change(); 
   });
  
  $("body").on("click", ".add_doenca_cronica", function(){
    count1++;
    var $address = $(this).parents('.inner_box_doenca_cronica');
    var nextHtml = $address.clone();
    nextHtml.prop('checked', false); 
    nextHtml.attr('id', 'address' + count1);
    var hasRmBtn = $('.rmbtn', nextHtml).length > 0;
    if (!hasRmBtn){
      var rm = "<button type='button' class='rmbtn'>Remove</button>";
      $('.addmoreadd1', nextHtml).append(rm);
      $('.add_doenca_cronica', nextHtml).remove(); 
    }
    else {
      $('.add_doenca_cronica', nextHtml).remove();
    }
    $address.after(nextHtml);
   });
   $("body").on("click", ".rmbtn", function(){
    $(this).parents('.inner_box_doenca_cronica').remove();
   });

   $("body").on("click", ".add_sintoma", function(){
    count2++;
    var $address = $(this).parents('.inner_box_sintoma');
    var nextHtml = $address.clone();
    nextHtml.attr('id', 'address' + count2);
    var hasRmBtn = $('.rmbtn', nextHtml).length > 0;
    if (!hasRmBtn){
      var rm = "<button type='button' class='rmbtn'>Remove</button>";
      $('.addmoreadd2', nextHtml).append(rm);
      $('.add_sintoma', nextHtml).remove();
    }
    else {
      $('.add_sintoma', nextHtml).remove();
    }
    $address.after(nextHtml);
   });
   $("body").on("click", ".rmbtn", function(){
    $(this).parents('.inner_box_sintoma').remove();
   });

   $("body").on("click", ".add_diagnostico", function(){
    count3++;
    var $address = $(this).parents('.inner_box_diagnostico');
    var nextHtml = $address.clone();
    nextHtml.attr('id', 'address' + count3);
    var hasRmBtn = $('.rmbtn', nextHtml).length > 0;
    if (!hasRmBtn){
      var rm = "<button type='button' class='rmbtn'>Remove</button>";
      $('.addmoreadd3', nextHtml).append(rm);
      $('.add_diagnostico', nextHtml).remove();
    }
    else {
      $('.add_diagnostico', nextHtml).remove();
    }
    $address.after(nextHtml);
   });
   $("body").on("click", ".rmbtn", function(){
    $(this).parents('.inner_box_diagnostico').remove();
   });

   $("body").on("click", ".add_cirurgia", function(){
    count4++;
    var $address = $(this).parents('.inner_box_cirurgia');
    var nextHtml = $address.clone();
    nextHtml.attr('id', 'address' + count4);
    var hasRmBtn = $('.rmbtn', nextHtml).length > 0;
    if (!hasRmBtn){
      var rm = "<button type='button' class='rmbtn'>Remove</button>";
      $('.addmoreadd4', nextHtml).append(rm);
      $('.add_cirurgia', nextHtml).remove();
    }
    else {
      $('.add_cirurgia', nextHtml).remove();
    }
    $address.after(nextHtml);
   });
   $("body").on("click", ".rmbtn", function(){
    $(this).parents('.inner_box_cirurgia').remove();
   });

   $("body").on("click", ".add_internacao", function(){
    count5++;
    var $address = $(this).parents('.inner_box_internacao');
    var nextHtml = $address.clone();
    nextHtml.attr('id', 'address' + count5);
    var hasRmBtn = $('.rmbtn', nextHtml).length > 0;
    if (!hasRmBtn){
      var rm = "<button type='button' class='rmbtn'>Remove</button>";
      $('.addmoreadd5', nextHtml).append(rm);
      $('.add_internacao', nextHtml).remove();
    }
    else {
      $('.add_internacao', nextHtml).remove();
    }
    $address.after(nextHtml);
   });
   $("body").on("click", ".rmbtn", function(){
    $(this).parents('.inner_box_internacao').remove();
   });

   $("body").on("click", ".add_condicao_familiar", function(){
    count6++;
    var $address = $(this).parents('.inner_condicao_familiar');
    var nextHtml = $address.clone();
    nextHtml.attr('id', 'address' + count6);
    $('.1grau', nextHtml).attr('name', 'parentesco' + count6);
    $('.2grau', nextHtml).attr('name', 'parentesco' + count6);
    $('.3grau', nextHtml).attr('name', 'parentesco' + count6);
    var hasRmBtn = $('.rmbtn', nextHtml).length > 0;
    if (!hasRmBtn){
      var rm = "<button type='button' class='rmbtn'>Remove</button>";
      $('.addmoreadd6', nextHtml).append(rm);
      $('.add_condicao_familiar', nextHtml).remove();
    }
    else {
      $('.add_condicao_familiar', nextHtml).remove();
    }
    $address.after(nextHtml);
   });
   $("body").on("click", ".rmbtn", function(){
    $(this).parents('.inner_condicao_familiar').remove();
   });

   $("body").on("click", ".add_med_cp", function(){
    count7++;
    var $address = $(this).parents('.inner_med_cp');
    var nextHtml = $address.clone();
    nextHtml.attr('id', 'address' + count7);
    var hasRmBtn = $('.rmbtn', nextHtml).length > 0;
    if (!hasRmBtn){
      var rm = "<button type='button' class='rmbtn'>Remove</button>";
      $('.addmoreadd7', nextHtml).append(rm);
      $('.add_med_cp', nextHtml).remove();
    }
    else {
      $('.add_med_cp', nextHtml).remove();
    }
    $address.after(nextHtml);
   });
   $("body").on("click", ".rmbtn", function(){
    $(this).parents('.inner_med_cp').remove();
   });

   $("body").on("click", ".add_med_sp", function(){
    count8++;
    var $address = $(this).parents('.inner_med_sp');
    var nextHtml = $address.clone();
    nextHtml.attr('id', 'address' + count8);
    var hasRmBtn = $('.rmbtn', nextHtml).length > 0;
    if (!hasRmBtn){
      var rm = "<button type='button' class='rmbtn'>Remove</button>";
      $('.addmoreadd8', nextHtml).append(rm);
      $('.add_med_sp', nextHtml).remove();
    }
    else {
      $('.add_med_sp', nextHtml).remove();
    }
    $address.after(nextHtml);
   });
   $("body").on("click", ".rmbtn", function(){
    $(this).parents('.inner_med_sp').remove();
   });
});

 $(window).scroll(function() {
     if ($(this).scrollTop() > 1){  
     $("#top-bar1").addClass("fixed");
     $("#top-bar2").addClass("fixed");
     $("#top-bar3").addClass("fixed");
     }
     else{
     $("#top-bar1").removeClass("fixed");
     $("#top-bar2").removeClass("fixed");
     $("#top-bar3").removeClass("fixed");
     }
 });