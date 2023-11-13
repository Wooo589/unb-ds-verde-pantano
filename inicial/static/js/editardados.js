
const doenca_cronica =
`<div class='inner_box_doenca_cronica'>
  <input type='text' id='doenca_cronica' name='doenca_cronica' value='doenca_cronica'>
  <input type='image' id='comp_doenca_cronica' name='comp_doenca_cronica'>
</div>`

const sintoma =
`<div class='inner_box_sintoma'>
  <input type='text' name='sintomas' id='sintomas'>
  <span>Adicione a data e o horário aproximado de início do sintoma:</span>
  <input type='datetime-local'>
</div>`

const diagnostico =
`<div class='inner_box_diagnostico'>
  <input type='text' name='doencas-diag' id='doencas-diag'>
</div>`

const cirurgia =
`<div class='inner_box_cirurgia'>
  <div>
    <span>Cirurgia realizada:<input type='text' name='cirurgias' id='cirurgias'></span>
  </div>
  <div>
    <span>Data:<input type='date' name='data_cirurgia' id='data_cirurgia'></span>
  </div>
</div>`

const internacao =
`<div class='inner_box_internacao'>
  <div>
    <span>Motivo:</span>
    <input type='text' name='motivo_internacao' id='motivo_internacao'>
  </div>
  <div>
    <span>Data:<input type='date' name='data_internacao' id='data_internacao'></span>
  </div>
</div>`

const condicao_familiar = 
`<div>
  <span>Grau de parentesco:</span>
  <input type='radio' id='1grau' value='1grau'>
    <label for='1grau'>1º grau</label>
  <input type='radio' id='2grau' value='2grau'>
    <label for='2grau'>2º grau</label>
  <input type='radio' id='3grau' value='3grau'>
    <label for='3grau'>3º grau</label>
  </div>
  <div>
    <span>Condição:</span>
  <input type='text' id='condicao' value='condicao'>
  </div>
</div>`;

const medicamento_cp =
`<div class="c2">
    <div>
      <span>Medicamento:</span>
      <input type="text">
    </div>
    <div>
      <span>Frequência:</span>
      <div class="f">
          <div>
            <input type="radio" id="d2" name="freq2" value="d2" onclick="function">
            <label for="d2">Diariamente</label>
          </div>
          <div>
            <input type="radio" id="s2" name="freq2" value="s2">
            <label for="s2">Semanalmente</label>
          </div>
          <div>
            <input type="radio" id="m2" name="freq2" value="m2">
            <label for="m2">Mensalmente</label>
          </div>
          <div>
            <input type="radio" id="a2" name="freq2" value="a2">
            <label for="a2">Anualmente</label>
          </div>  
      </div>
    </div>
</div>`

const medicamento_sp =
`<div class="c2">
    <div>
      <span>Medicamento:</span>
      <input type="text">
    </div>
    <div>
      <span>Frequência:</span>
      <div class="f">
          <div>
            <input type="radio" id="d3" name="freq3" value="d3">
            <label for="d3">Diariamente</label>
          </div>
          <div>
            <input type="radio" id="s3" name="freq3" value="s3">
            <label for="s3">Semanalmente</label>
          </div> 
          <div>
            <input type="radio" id="m3" name="freq3" value="m3">
            <label for="m3">Mensalmente</label>
          </div>
          <div>
            <input type="radio" id="a3" name="freq3" value="a3">
            <label for="a3">Anualmente</label>
          </div>
      </div>
    </div>
</div>`

const freq_d2 =
`<div>
  <input type="number">
  <span>vez(es) por dia.</span>
</div>`
const freq_s2 =
`<div>
  <input type="number">
  <span>vez(es) por semana.</span>
</div>`
const freq_m2 =
`<div>
  <input type="number">
  <span>vez(es) por mês.</span>
</div>`
const freq_a2 =
`<div>
  <input type="number">
  <span>vez(es) por ano.</span>
</div>`
const freq_d3 =
`<div>
  <input type="number">
  <span>vez(es) por dia.</span>
</div>`
const freq_s3 =
`<div>
  <input type="number">
  <span>vez(es) por semana.</span>
</div>`
const freq_m3 =
`<div>
  <input type="number">
  <span>vez(es) por mês.</span>
</div>`
const freq_a3 =
`<div>
  <input type="number">
  <span>vez(es) por ano.</span>
</div>`

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
   });
   $("#nao2").click(function(){
    $("#answer2").removeClass("on");
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
   $("#nao3").click(function(){
    $("#outer_box_doenca_cronica").removeClass("on");
    $("#add_doenca_cronica").removeClass("on");
    $('.inner_box_doenca_cronica').remove();
   });
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
   $("#add_doenca_cronica").click(function(){
    $('#outer_box_doenca_cronica').append(doenca_cronica);
   });
   $("#add_sintoma").click(function(){
    $("#outer_box_sintoma").append(sintoma);
   });
   $("#add_diagnostico").click(function(){
    $("#outer_box_diagnostico").append(diagnostico);
   });
   $("#add_cirurgia").click(function(){
    $("#outer_box_cirurgia").append(cirurgia);
   });
   $("#add_internacao").click(function(){
    $("#outer_box_internacao").append(internacao);
   });
   $("#add_condicao_familiar").click(function(){
    $("#outer_condicao_familiar").append(condicao_familiar);
   });
   $("#add_medicamento_cp").click(function(){
    $("#outer_med_cp").append(medicamento_cp);
   });
   $("#add_medicamento_sp").click(function(){
    $("#outer_med_sp").append(medicamento_sp);
   });
  //  $('#d2').one("click", function(){
  //   $('#outer_med_cp').append(freq_d2);
  //   $('#outer_med_cp').remove(freq_s2);
  //   $('#outer_med_cp').remove(freq_m2);
  //   $('#outer_med_cp').remove(freq_a2);
  //  });
   if($('#d2').checked == true){
    $('#outer_med_cp').append(freq_d2);
    // $('#outer_med_cp').remove(freq_s2);
    // $('#outer_med_cp').remove(freq_m2);
    // $('#outer_med_cp').remove(freq_a2);
   }
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