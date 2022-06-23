*** Settings ***
Library     RequestsLibrary
Library     Collections

*** Variables ***
${URL_API}    https://amouramour-api.herokuapp.com

*** Keywords ***
Conectar a minha API
    Create Session    API_AMOUR    ${URL_API} 

Requisitar todos produtos
    ${RESPOSTA}    Get Request    API_AMOUR    Produto
    Log            ${RESPOSTA.text} 

Requisitar todos clientes
    ${RESPOSTA}    Get Request    API_AMOUR    Cliente
    Log            ${RESPOSTA.text} 

Requisitar todas Formas de Pagamento
    ${RESPOSTA}    Get Request    API_AMOUR    FormaPagto
    Log            ${RESPOSTA.text} 

Requisitar todos Pedidos
    ${RESPOSTA}    Get Request    API_AMOUR    Pedido
    Log            ${RESPOSTA.text} 

Requisitar todas Transportadoras
    ${RESPOSTA}    Get Request    API_AMOUR    Transportadora
    Log            ${RESPOSTA.text} 

Consultar produto específico
    [Arguments]         ${PRODUTO_DESEJADO}
    ${RESPOSTA}=        Get Request  Produto  /${PRODUTO_DESEJADO}
    Log                 Resposta: ${RESPOSTA.text()}
    Set Test Variable   ${RESPOSTA}
 