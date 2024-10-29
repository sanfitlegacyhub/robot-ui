***Settings***
Resource    ../Conf/common_settings.robot

***Keywords***


addAccount_Marketo
    [documentation]    To create an account for Marketo connector
    wait until page contains element    ${PO_defaultAccountName}
    input text    ${PO_defaultAccountName}    ${newCommonAccountName}
    Wait Until Element Is Enabled    ${PO_addButton}
    click element    ${PO_addButton}
    Sleep    8s
    ${mainPageHandle}=    Switch Window    NEW
    Maximize Browser Window
    wait until page contains element    ${PO_domain}
    ${marketoServerURL}    getDataFromDB    Con1.serverURL
    ${marketoClientID}    getDataFromDB    Con1.clientId
    ${marketoClientSecret}    getDataFromDB    Con1.clientSecret
    input text    ${PO_domain}    ${marketoServerURL}
    input text    ${PO_defaultAuthclientID}    ${marketoClientID}
    input password    ${PO_defaultAuthclientSecret}    ${marketoClientSecret}
    click button    ${PO_allowButton}
    Switch Window    ${mainPageHandle}
    wait until page contains    successfully

