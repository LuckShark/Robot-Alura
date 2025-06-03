*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Abrir o navegador e acessar o site do organo
    Open Browser     url=http://localhost:3000/   browser=Chrome

Preencher os campos do formulário
    Input Text    id:form-nome    João
    Input Text    id:form-cargo    Desenvolvedor
    Input Text    id:form-imagem    https://picsum.photos/200/300
    Click Element   class:lista-suspensa
    Click Element    //option[contains(.,'Programação')]