#language: pt

Funcionalidade: Simular Investimento    
    
Com o propósito de Simular um Investimento na Poupança como um Associado, 
eu gostaria de preencher o formulário de simulação 
e ver a tabela de resultado com Mês e Valor.

    Cenario: Formulário com valor correto
        Dado que acessei o simulador de investimentos da poupança
        Quando insiro as informações no simulador
        Então visualizo as opções de valores para serem investimentos

     Cenario: Formulário com valor aplicar menor que o minimo
        Dado que acessei o simulador de investimentos da poupança
        Quando insiro as informações com valor aplicar menor que o permitido
        Então recebo uma mensagem orientando sobre qual o valor mínimo para ser aplicado
     
     Cenario: Formulário com valor poupar menor que o minimo
        Dado que acessei o simulador de investimentos da poupança
        Quando insiro as informações com valor poupar menor que o permitido
        Então recebo uma mensagem orientando sobre qual o valor mínimo para ser poupado

    
    