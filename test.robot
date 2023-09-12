*** Settings ***
Library    Collections

*** Keywords ***
szorzok


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