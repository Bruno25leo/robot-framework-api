*** Settings ***
Resource    ../../resources/address/check_address.robot

*** Test Cases ***
Verificar endereço por CEP válido
    Listar informações de endereço usando o CEP "${VALID_CEP}" para API "${API_NAME}" com status "${STATUS_OK}"
    Validar retorno do "${VALID_CEP}" da API "${API_NAME}"

Verificar endereço por CEP inválido
    Listar informações de endereço usando o CEP "${INVALID_CEP}" para API "${API_NAME}" com status "${STATUS_OK}"
    Validar retorno do "${INVALID_CEP}" da API "${API_NAME}"

Verificar endereço por CEP incorreto
    Listar informações de endereço usando o CEP "${INCORRECT_CEP}" para API "${API_NAME}" com status "${STATUS_BAD_REQUEST}"
    Validar retorno do "${INCORRECT_CEP}" da API "${API_NAME}"

Verificar endereço por CEP incorreto com caracteres especiais
    Listar informações de endereço usando o CEP "${SPECIAL_CHARACTERS_INCORRECT_CEP}" para API "${API_NAME}" com status "${STATUS_BAD_REQUEST}"
    Validar retorno do "${SPECIAL_CHARACTERS_INCORRECT_CEP}" da API "${API_NAME}"