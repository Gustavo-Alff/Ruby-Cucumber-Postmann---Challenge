@temp
Dado("que acessei o simulador de investimentos da poupança") do
    visit '/html/ferramenta/simulador-investimento-poupanca/'
  end
  
  Quando("insiro as informações no simulador") do
        
    find('input[value=paraVoce]').set(true)
    fill_in 'valorAplicar', with: '2000'
    fill_in 'valorInvestir', with: '2000'
    meses = fill_in 'tempo', with: '100'
    click_button 'Simular'
  end
  
  Então("visualizo as opções de valores para serem investimentos") do
    expect(find('span[class=texto]')).to have_content 'Em 100 meses você terá guardado' 
    expect(find('span[class=valor]')).to have_content 'R$ 2.305'

  end
  
  Quando("insiro as informações com valor aplicar menor que o permitido") do
    find('input[value=paraVoce]').set(true)
    fill_in 'valorAplicar', with: '1900'
    fill_in 'valorInvestir', with: '2000'
    meses = fill_in 'tempo', with: '100'
    click_button 'Simular'.null
  end
  
  Então("recebo uma mensagem orientando sobre qual o valor mínimo para ser aplicado") do
    expect(find('label[id=valorAplicar-error]')).to have_content 'Valor mínimo de 20.00'
  end
  
  Quando("insiro as informações com valor poupar menor que o permitido") do
    find('input[value=paraVoce]').set(true)
    fill_in 'valorAplicar', with: '2000'
    fill_in 'valorInvestir', with: '1900'
    meses = fill_in 'tempo', with: '100'
    
  end
  
  Então("recebo uma mensagem orientando sobre qual o valor mínimo para ser poupado") do
    expect(find('label[id=valorInvestir-error]')).to have_content 'Valor mínimo de 20.00'
  end