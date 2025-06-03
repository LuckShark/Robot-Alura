*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                    http://localhost:3000/
${CAMPO_NOME}             id:form-nome
${CAMPO_CARGO}            id:form-cargo
${CAMPO_IMAGEM}           id:form-imagem
${CAMPO_TIME}             class:lista-suspensa
${BOTAO_CARD}             id:form-botao
${OPCAO_PROGRAMACAO}      //option[contains(.,'Programação')]
${OPCAO_FRONT}            //option[contains(.,'Front-End')]
${OPCAO_DADOS}            //option[contains(.,'Data Science')]
${OPCAO_DEVOPS}           //option[contains(.,'Devops')] 
${OPCAO_UX}               //option[contains(.,'UX e Design')]
${OPCAO_MOBILE}           //option[contains(.,'Mobile')]
${OPCAO_INOVACAO}         //option[contains(.,'Inovação e Gestão')]

*** Test Cases ***
Verificar se ao preencher os campos do form os dados são inseridos na lista e um card é criado
    Dado que eu acesso o Organo
    E preencha os campos do form
    E clique no botão criar card
    Então indentificar o card no time esperado

*** Keywords ***
Dado que eu acesso o Organo
    Open Browser     url=http://localhost:3000/   browser=Chrome
E preencha os campos do form
    Input Text       ${CAMPO_NOME}       Akemi
    Input Text       ${CAMPO_CARGO}      Desenvolvedora 
    Input Text       ${CAMPO_IMAGEM}     https://picsum.photos/200/300
    Click Element    ${CAMPO_TIME}
    Click Element    ${OPCAO_PROGRAMACAO}
E clique no botão criar card
    Click Element     ${BOTAO_CARD}
Então indentificar o card no time esperado
    Element Should Be Visible    class:colaborador
