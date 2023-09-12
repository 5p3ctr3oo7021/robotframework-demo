*** Settings ***
Library    Collections

*** Keywords ***
Szorzok
    [Arguments]    ${mit}    ${mivel}
    ${eredmeny}=    Set Variable  ${${mit}*${mivel}}
    RETURN  ${eredmeny}

Osszeadok
    [Arguments]    ${required}    ${optional}=5
    ${eredmeny}=    Set Variable    ${${required}+${optional}}
    RETURN  ${eredmeny}

Listakeres
    [Arguments]     ${lista_elem}   ${lista}
    ${flag}=    Set Variable    0
    FOR    ${element}    IN    @{lista}
        IF    $lista_elem == $element
        ${flag}=    Set Variable    ${${flag}+1}
        END
    END
    IF    ${flag} >= 1
        Log To Console    IGAZ: A listában VAN ilyen elem.
    ELSE
        Log To Console    HAMIS: A listában NINCS ilyen elem.
    END

*** Variables ***
@{honapok_list} =  januar   februar   marcius   aprilis     majus   junius  julius  augusztus   szeptember  oktober     november    december

*** Test Cases ***
Az összes hónap kilistázása
    Log To Console      Csak a marcius kiírása: ${honapok_list}[2]
    Log To Console    Kiírás egyenként ciklusban
    FOR    ${element}    IN    @{honapok_list}
        Log To Console  ${element}
    END
    
    Log To Console    Így is ki lehet listázni
    Log List    ${honapok_list}

Az első HAT elem listázása
    Log To Console    ${honapok_list}[0:6]

November TC
    ${novi} =    Set Variable    ${honapok_list}[10]
    Log To Console    ${novi}[0:3]

Szorzós keywoords
    ${szorzok_eredmeny}=  Szorzok    2    5
    Log To Console    ${szorzok_eredmeny}
    
Összeadás
    ${ered}=    Osszeadok    3      3
    Log To Console    ${ered}
    
Listakeresés
    Listakeres    november    ${honapok_list}