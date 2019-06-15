jQuery(document).ready(function() {
  jQuery('#form-aluno').on('submit', function (evento) {
    evento.preventDefault();
    var nome = jQuery('[name="nome"]').val()
    var altura = jQuery('[name="altura"]').val()
    var idade = jQuery('[name="idade"]').val()
    jQuery('#erros').html("CARREGANDO...")
    $.ajax({
      url: 'http://localhost:8000/salvar_aluno.php',
      type: 'POST',
      dataType: 'json',
      data: {
        'nome': nome,
        'altura': altura,
        'idade': idade
      }
    })
    .fail(function(){
      jQuery('#erro').empty();
      alert('não foi possível processar o seu pedido');
    })
    .done(function (resposta) {
      jQuery('#erros').empty();
      if (!resposta.contem_erros) {
        alert(resposta.mensagem)
      } else {
        var erro_nome = resposta.mensagens.nome
        var erro_idade = resposta.mensagens.idade
        jQuery('#erros').append(erro_nome)
        jQuery('#erros').append(erro_idade)

      }
      console.log(resposta)
    })
    // alert("Nome: " + nome)
    // alert("Altura: " + altura)
    // alert("Idade: " + idade)


  });
});

function trazer_dados () {
  jQuery.ajax({
    url: '/',
    type: 'GET',
    dataType: 'json',
success: function(resposta) {
      jQuery("#resultado").append(resposta.nome)
      console.log(resposta.nome)
    }
  });
}
