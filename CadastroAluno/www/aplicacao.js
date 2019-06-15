$(document).ready(function () {
          //php -S localhost:8000
          $("#form-aluno").on("submit",function (evento) {
                evento.preventDefault();
                var nome = $("[name = 'nome']").val();
                var altura = $("[name = 'altura']").val();
                var idade = $("[name = 'idade']").val();
                $('#erros').html('CARREGANDO....')
                $.ajax({
                    url: "salva_aluno.php",
                    type: "POST",
                    dataType: "json",
                    data: {
                        'nome': nome,
                        'altura': altura,
                        'idade': idade
                    }

              }).done(function (resposta) {
                  $('#erros').empty();
                 // console.log(resposta);
                 if (resposta.contem_erros) {
                   //console.log(resposta.mensagens['sv']);
                     alert(resposta.mensagens['nome']);
                     alert(resposta.mensagens['idade']);
                     alert(resposta.mensagens['altura']);
                 }else{
                   console.log(resposta.contem_erros);
                    $('#erros').append(resposta.mensagens.sv);

                 }
              })
          })
      })
     function busca(busca) {
          $.ajax({
             url: "acao.php",
             type: "POST",
             dataType: "json",
             data: {//tipo de dado
                 'busca':"busca"//botão pra inicia a ação
             }

  }).done(function (resposta) {
    console.log('encontrei ' + resposta.quant + ' registros');
  console.log(resposta.busca[0,'0'].nome, resposta.busca[0,'0'].altura);
  // console.log(resposta)
             if(resposta.erros){

                 for (let i = 0; i < resposta.quant; i++) {
                  // console.log($('.lista-alunos'))
                      $('.lista-alunos  th.id').append('<tr><td>'+resposta.busca[i]['0'] +'</tr></td>')
                      $('.lista-alunos  th.nome').append('<tr><td>'+resposta.busca[i]['1'] +'</tr></td>')
                      $('.lista-alunos  th.altura').append('<tr><td>'+resposta.busca[i]['2'] +'</tr></td>')
                      $('.lista-alunos  th.idade').append('<tr><td>'+resposta.busca[i]['3'] +'</tr></td>')


                 }
              //    setTimeout(location.reload(),1000)
                //  location.assign(index.html);

             }
         })
     }
     busca()
