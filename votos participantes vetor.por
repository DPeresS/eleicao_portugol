programa {
  inclua biblioteca Matematica --> mat
  funcao inicio() {
    cadeia nome[5]
    inteiro opcao, voto[5], total=0
    
    //o usu�rio cadastra 5 nomes
    para(inteiro i=0; i<=4; i++){

      faca{
      escreva("Nome participante n� ",i+1,": ")
      leia(nome[i])
      voto[i]=0 //insere 0 em todo o vetor "voto"
      limpa()
      }enquanto(nome[i]=="")
    }
    limpa()
    
    //inicia a vota��o
    faca{
      se (opcao>0) total++
      escreva("\nDigite o n�mero correspondente do participante para votar ou 0 para SAIR:")
      escreva("\nParticipantes cadastrados:")
        para(inteiro i=0; i<=4; i++){
        escreva("\nParticipante n� ",i+1,": ",nome[i]) //lista os participantes cadastrados
        }
      escreva("\nSeu voto: ")
      leia(opcao)
        enquanto(opcao>5 ou opcao<0){ //vertificacao de voto v�lido
        escreva("\nEntrada Inv�lida ")
        escreva("\nSeu voto: ")
        leia(opcao)
        }
      se(opcao>0){ //computa o voto relacionado ao paritipante
       voto[opcao-1]=voto[opcao-1]+1 
       
      }
      limpa()
    }enquanto(opcao>0)
    
    se(total>0){    //verifica que algum participante recebeu algum voto
      escreva("\nTotal de votos computados: ", total, "\n") //lista o total geral de votos computados
      para(inteiro i=0; i<=4; i++){
      escreva("\nParticipante ",nome[i],": ", mat.arredondar((voto[i]/(total/100)),2), "%") //exibe a porcentagem dos votos de cada participante
    }senao escreva("\nN�o foram contabilizados votos.")  //exibe caso nenhum participante tenha recebido nenhum voto
  }
  }
    escreva("\n\n")
  }
}
