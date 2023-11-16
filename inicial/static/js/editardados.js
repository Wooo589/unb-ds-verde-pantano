

var count1 = 0;
var count2 = 0;
var count3 = 0;
var count4 = 0;
var count5 = 0;
var count6 = 0;
var count7 = 0;
var count8 = 0;

// var doenca_cronica =
// `<div class="inner_box_doenca_cronica">
//   <input type="text" class="doenca_cronica"  name="doenca_cronica" value="doenca_cronica">
//   <input type="image" class="comp_doenca_cronica" name="comp_doenca_cronica">
// </div>`

// const sintoma =
//  `<div class='inner_box_sintoma'>
//   <input type='text' name='sintomas' id='sintomas"+count2+"'>
//   <span>Adicione a data e o horário aproximado de início do sintoma:</span>
//   <input type='datetime-local' id='datetime_sintoma"+count2+"'>
// </div>`

// const diagnostico =
// `<div class='inner_box_diagnostico'>
//   <input type='text' name='doencas-diag' id='doencas-diag"+count3+"'>
// </div>`

// const cirurgia =
// `<div class='inner_box_cirurgia'>
//   <div>
//     <span>Cirurgia realizada:<input type='text' name='cirurgias' id='cirurgias"+count4+"'></span>
//   </div>
//   <div>
//     <span>Data:<input type='date' name='data_cirurgia' id='data_cirurgia"+count4+"'></span>
//   </div>
// </div>`

// const internacao =
// `<div class='inner_box_internacao'>
//   <div>
//     <span>Motivo:</span>
//     <input type='text' name='motivo_internacao' id='motivo_internacao"+count5+"'>
//   </div>
//   <div>
//     <span>Data:<input type='date' name='data_internacao' id='data_internacao"+count5+"'></span>
//   </div>
// </div>`

// const condicao_familiar = 
// `<div>
//   <span>Grau de parentesco:</span>
//   <input type='radio' id='1grau"+count6+"' value='1grau"+count6+"'>
//     <label for='1grau"+count6+"'>1º grau</label>
//   <input type='radio' id='2grau"+count6+"' value='2grau"+count6+"'>
//     <label for='2grau"+count6+"'>2º grau</label>
//   <input type='radio' id='3grau"+count6+"' value='3grau"+count6+"'>
//     <label for='3grau"+count6+"'>3º grau</label>
//   </div>
//   <div>
//     <span>Condição:</span>
//   <input type='text' id='condicao"+count6+"' value='condicao"+count6+"'>
//   </div>
// </div>`

// const medicamento_cp =
// `<div class='c2'>
//     <div>
//       <span>Medicamento:</span>
//       <input type='text'>
//     </div>
//     <div>
//       <span>Frequência:</span>
//       <div class='f'>
//           <div>
//             <input type='radio' id='d3'"+count7+"' name='freq3' value='d3"+count7+"'>
//             <label for='d3"+count7+"'>Diariamente</label>
//           </div>
//           <div>
//             <input type="radio" id='s3"+count7+"' name='freq3' value='s3"+count7+"'>
//             <label for='s3"+count7+"'>Semanalmente</label>
//           </div>
//           <div>
//             <input type='radio' id='m3"+count7+"' name='freq3' value='m3"+count7+"'>
//             <label for='m3"+count7+"'>Mensalmente</label>
//           </div>
//           <div>
//             <input type='radio' id='a3"+count7+"' name='freq3' value='a3"+count7+"'>
//             <label for='a3"count7"'>Anualmente</label>
//           </div>  
//       </div>
//     </div>
//     <span>Neste período, quantas vezes você usa o medicamento?</span>
//     <input type='number' id='freq_med_cp"+count7+"' name='freq_med_cp'>
// </div>`

// const medicamento_sp =
// `<div class='c2'>
//     <div>
//       <span>Medicamento:</span>
//       <input type='text'>
//     </div>
//     <div>
//       <span>Frequência:</span>
//       <div class='f'>
//           <div>
//             <input type='radio' id='d4"+count8+"' name='freq4' value='d4"+count8+"'>
//             <label for='d4"+count8+"'>Diariamente</label>
//           </div>
//           <div>
//             <input type='radio' id='s4"+count8+"' name='freq4' value='s4"+count8+"'>
//             <label for='s4"+count8+"'>Semanalmente</label>
//           </div> 
//           <div>
//             <input type='radio' id='m4"+count8+"' name='freq4' value='m4"+count8+"'>
//             <label for='m4"+count8+"'>Mensalmente</label>
//           </div>
//           <div>
//             <input type='radio' id='a4"+count8+"' name='freq4' value='a4"+count8+"'>
//             <label for='a4"+count8+"'>Anualmente</label>
//           </div>
//       </div>
//       Neste período, quantas vezes você usa o medicamento?
//       <input type='number' id='freq_med_sp"+count8+"' name='freq_med_sp'>
//     </div>
// </div>`

// const freq_d2 =
// `<div>
//   <input type="number">
//   <span>vez(es) por dia.</span>
// </div>`
// const freq_s2 =
// `<div>
//   <input type="number">
//   <span>vez(es) por semana.</span>
// </div>`
// const freq_m2 =
// `<div>
//   <input type="number">
//   <span>vez(es) por mês.</span>
// </div>`
// const freq_a2 =
// `<div>
//   <input type="number">
//   <span>vez(es) por ano.</span>
// </div>`
// const freq_d3 =
// `<div>
//   <input type="number">
//   <span>vez(es) por dia.</span>
// </div>`
// const freq_s3 =
// `<div>
//   <input type="number">
//   <span>vez(es) por semana.</span>
// </div>`
// const freq_m3 =
// `<div>
//   <input type="number">
//   <span>vez(es) por mês.</span>
// </div>`
// const freq_a3 =
// `<div>
//   <input type="number">
//   <span>vez(es) por ano.</span>
// </div>`

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
    $("#add_doenca_cronica").addClass("on");
   });
   $("#sim4").click(function(){
    $("#outer_box_sintoma").addClass("on");
    $("#add_sintoma").addClass("on");
   });
   $("#sim5").click(function(){
    $("#outer_box_diagnostico").addClass("on");
    $("#add_diagnostico").addClass("on");
   });
   $("#sim6").click(function(){
    $("#outer_box_cirurgia").addClass("on");
    $("#add_cirurgia").addClass("on");
   });
   $("#sim7").click(function(){
    $("#outer_box_internacao").addClass("on");
    $("#add_internacao").addClass("on");
   });
  //  $("#nao3").click(function(){
  //   $("#outer_box_doenca_cronica").removeClass("on");
  //   $("#add_doenca_cronica").removeClass("on");
  //   $('.inner_box_doenca_cronica').remove();
  //  });
   $("#nao4").click(function(){
    $("#outer_box_sintoma").removeClass("on");
    $("#add_sintoma").removeClass("on");
    $(".inner_box_sintoma").remove();
   });
   $("#nao5").click(function(){
    $("#outer_box_diagnostico").removeClass("on");
    $("#add_diagnostico").removeClass("on");
    $(".inner_box_diagnostico").remove();
   });
   $("#nao6").click(function(){
    $("#outer_box_cirurgia").removeClass("on");
    $("#add_cirurgia").removeClass("on");
    $(".inner_box_cirurgia").remove();
   });
   $("#nao7").click(function(){
    $("#outer_box_internacao").removeClass("on");
    $("#add_internacao").removeClass("on");
    $(".inner_box_internacao").remove();
   });
  // $("#add_doenca_cronica").click(function(){
  //   var count1 = 1;
  //   var $test = doenca_cronica;
  //   var nextHtml = $test;
  //   $("nextHtml > .doenca_cronica").prop("id", "doenca_cronica" + count1);
  //   $("nextHtml > .comp_doenca_cronica").prop("id", "comp_doenca_cronica" + count1);
  //   count1 = count1 + 1;
  //   $("#outer_box_doenca_cronica").append(nextHtml);
  //  });
  //  var rowNum = 0;

  //  $("body").on("click", ".add_doenca_cronica", function(){
  //   count1++;
  //   var $address = $(this).parents('.inner_box_doenca_cronica');
  //   var nextHtml = $address.clone();
  //   nextHtml.attr('id', 'address' + count1);
  //   var hasRmBtn = $('.rmbtn', nextHtml).length > 0;
  //   if (!hasRmBtn){
  //     var rm = "<button type='button' class='rmbtn'>Remove</button>";
  //     $('.addmoreadd1', nextHtml).append(rm);
  //     $('.add_doenca_cronica', nextHtml).remove();
  //   }
  //   else {
  //     $('.add_doenca_cronica', nextHtml).remove();
  //   }
  //   $address.after(nextHtml);
  //  });
  //  $("body").on("click", ".rmbtn", function(){
  //   $(this).parents('.inner_box_doenca_cronica').remove();
  //  });
  $("body").on("click", ".add_doenca_cronica", function(){
    count1++;
    var $address = $(this).parents('.inner_box_doenca_cronica');
    var nextHtml = $address.clone();
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

  //  $("#add_sintoma").click(function(){
  //   $("#outer_box_sintoma").append(sintoma);
  //   count2++;
  //  });
  //  $("#add_diagnostico").click(function(){
  //   $("#outer_box_diagnostico").append(diagnostico);
  //   count3++;
  //  });
  //  $("#add_cirurgia").click(function(){
  //   $("#outer_box_cirurgia").append(cirurgia);
  //   count4++;
  //  });
  //  $("#add_internacao").click(function(){
  //   $("#outer_box_internacao").append(internacao);
  //   count5++;
  //  });
  //  $("#add_condicao_familiar").click(function(){
  //   $("#outer_condicao_familiar").append(condicao_familiar);
  //   count6++;
  //  });
  //  $("#add_medicamento_cp").click(function(){
  //   $("#outer_med_cp").append(medicamento_cp);
  //   count7++;
  //  });
  //  $("#add_medicamento_sp").click(function(){
  //   $("#outer_med_sp").append(medicamento_sp);
  //   count8++;
  //  });
});
  //  $('#d2').one("click", function(){
  //   $('#outer_med_cp').append(freq_d2);
  //   $('#outer_med_cp').remove(freq_s2);
  //   $('#outer_med_cp').remove(freq_m2);
  //   $('#outer_med_cp').remove(freq_a2);
  //  });
  //  $("#s2").click(function(){
  //   $("#outer_med_cp").append(freq_s2);
  //   $("#outer_med_cp").remove(freq_d2);
  //   $("#outer_med_cp").remove(freq_m2);
  //   $("#outer_med_cp").remove(freq_a2);
  //  });
  //  $("#m2").click(function(){
  //   $("#outer_med_cp").append(freq_m2);
  //   $("#outer_med_cp").remove(freq_d2);
  //   $("#outer_med_cp").remove(freq_s2);
  //   $("#outer_med_cp").remove(freq_a2);
  //  });
  //  $("#a2").click(function(){
  //   $("#outer_med_cp").append(freq_a2);
  //   $("#outer_med_cp").remove(freq_d2);
  //   $("#outer_med_cp").remove(freq_s2);
  //   $("#outer_med_cp").remove(freq_m2);
  //  });
  //  $("#d3").click(function(){
  //   $("#outer_med_sp").append(freq_d3);
  //   $("#outer_med_sp").remove(freq_s3);
  //   $("#outer_med_sp").remove(freq_m3);
  //   $("#outer_med_sp").remove(freq_a3);
  //  });
  //  $("#s3").click(function(){
  //   $("#outer_med_sp").append(freq_s3);
  //   $("#outer_med_sp").remove(freq_d3);
  //   $("#outer_med_sp").remove(freq_m3);
  //   $("#outer_med_sp").remove(freq_a3);
  //  });
  //  $("#m3").click(function(){
  //   $("#outer_med_sp").append(freq_m3);
  //   $("#outer_med_sp").remove(freq_d3);
  //   $("#outer_med_sp").remove(freq_s3);
  //   $("#outer_med_sp").remove(freq_a3);
  //  });
  //  $("#a3").click(function(){
  //   $("#outer_med_sp").append(freq_a3);
  //   $("#outer_med_sp").remove(freq_d3);
  //   $("#outer_med_sp").remove(freq_s3);
  //   $("#outer_med_sp").remove(freq_m3);
  //  });
//   var count = 0;
//   $('#add_doenca_cronica').click(function(){
//     count++;
//     $('.doenca_cronica').clone(true).appendTo('#outer_box_doenca_cronica');
//     $('doenca_cronica').each(function() {
//       this.id = count;
//     });
//     return false;
//   });
//  });
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
//  $(function(){
  
//  });
//  var i = 0;
//  document.querySelector("#add_doenca_cronica").addEventListener("click", appendDIV);
//  function appendDIV(){
//   newDIV = doenca_cronica;
//   newDIV.id = "doenca_cronica" + i++;
//   document.body.appendChild(newDiv);
// }
