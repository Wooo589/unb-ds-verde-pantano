var coll = document.getElementsByClassName("login_box");
var i;

for (i = 0; i < coll.length; i++) {
  coll[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var content_account = this.nextElementSibling;
    if (content_account.style.display === "flex") {
      content_account.style.display = "none";
      this.style.borderRadius = "20px";
    } else {
      content_account.style.display = "flex";
      this.style.borderRadius = "20px 20px 0 0";
    }
  });
}
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
