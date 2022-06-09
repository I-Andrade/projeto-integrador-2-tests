*** Settings ***
Resource    ResourceAPI.robot
Suite Setup        Conectar a minha API


*** Test Cases ***
Buscar todos os produtos
    Requisitar todos produtos

Buscar todos os clientes
    Requisitar todos clientes

Buscar todas Formas de Pagamento
    Requisitar todas Formas de Pagamento

Requisitar todas Transportadoras
    Requisitar todas Transportadoras