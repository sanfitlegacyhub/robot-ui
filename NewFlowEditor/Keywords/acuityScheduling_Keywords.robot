***Settings***
Resource    ../Conf/common_settings.robot
#Resource    ../../PageObjects/default_po.robot

***keywords***


addAccount_AcuityScheduling
    [documentation]    To create an account for Acuity Scheduling
    wait until page contains element    ${PO_connectionAccountName}
    Press Keys  ${PO_connectionAccountName}  CTRL+a+DELETE
    input text    ${PO_connectionAccountName}    ${newCommonAccountName}
    ${AcuityClientID}    getDataFromDB    Con10.clientId
    ${AcuityClientSecret}    getDataFromDB    Con10.clientSecret
    ${AcuityAccessToken}    getDataFromDB    Con10.accessToken
    ${AcuityGrantType}    getDataFromDB    Con10.grantType
    input text    ${PO_clientID}    ${AcuityClientID}
    input text    ${PO_clientSecret}    ${AcuityClientSecret}
    input text    ${PO_accessToken}    ${AcuityAccessToken}
    input text    ${PO_grantType}    ${AcuityGrantType}
    wait until element is enabled    ${PO_addButton}
    click button    ${PO_addButton}
    wait until page contains    successfully