*** Settings ***
Library     RequestsLibrary

Resource    ../../settings.robot

*** Variables ***
${API_NAME}                            VIA_CEP
${VALID_CEP}                           55815000
${INVALID_CEP}                         55555333
${INCORRECT_CEP}                       123456789
${SPECIAL_CHARACTERS_INCORRECT_CEP}    @@@@#####
${VALID_CEP_RESPONSE}                  { "cep": "55815-000", "logradouro": "Avenida Estácio Coimbra", "complemento": "lado par", "unidade": "", "bairro": "São José", "localidade": "Carpina", "uf": "PE", "estado": "Pernambuco", "regiao": "Nordeste", "ibge": "2604007", "gia": "", "ddd": "81", "siafi": "2379" }
${INVALID_CEP_RESPONSE}                { "erro": "true" }

*** Keywords ***
Listar informações de endereço usando o CEP "${test_case}" para API "${API_NAME}" com status "${status}"
    Create Session     alias=viacep    url=${API_URL}
    ${response}        GET On Session    alias=viacep    url=${test_case}/${JSON_TYPE}    expected_status=${status}
    Set Suite Variable    ${response}    ${response}

Validar retorno do "${test_case}" da API "${API_NAME}"
    IF         '${test_case}' == '${VALID_CEP}'
        ${VALID_CEP_RESPONSE_JSON}    Evaluate    json.loads('''${VALID_CEP_RESPONSE}''')    modules=json
        Status Should Be              ${STATUS_OK}          ${response}
        Should Be Equal               ${response.json()}    ${VALID_CEP_RESPONSE_JSON}
    ELSE IF    '${test_case}' == '${INVALID_CEP}'
        ${INVALID_CEP_RESPONSE_JSON}    Evaluate    json.loads('''${INVALID_CEP_RESPONSE}''')    modules=json
        Status Should Be                ${STATUS_OK}          ${response}
        Should Be Equal                 ${response.json()}    ${INVALID_CEP_RESPONSE_JSON}
    ELSE IF    '${test_case} == ${INCORRECT_CEP}' or '${test_case}' == '${SPECIAL_CHARACTERS_INCORRECT_CEP}'
        Status Should Be    ${STATUS_BAD_REQUEST}    ${response}
        Should Contain      ${response.content}    Verifique a URL
    END
