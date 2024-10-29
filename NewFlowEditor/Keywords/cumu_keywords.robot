***Settings***
Resource    ../Conf/common_settings.robot
#Resource    ../../PageObjects/default_po.robot

***keywords***

addaccount_cumulocity
    [documentation]    To create an account for Cumulocity connector
    wait until page contains element    ${PO_connectionAccountName}
    Press Keys  ${PO_connectionAccountName}  CTRL+a+DELETE
    input text    ${PO_connectionAccountName}    ${newCommonAccountName}
    ${cumuServerURL}    getDataFromDB    Con3.serverURL
    ${cumuuid}    getDataFromDB    Con3.username
    ${cumupwd}    getDataFromDB    Con3.password
    Press Keys  ${PO_serverUrl}  CTRL+a+DELETE
    input text    ${PO_serverUrl}    ${cumuServerURL}
    input text    ${PO_addAccountUserName}    ${cumuuid}
    input text    ${PO_addAccountPassword}    ${cumupwd}
    wait until element is enabled    ${PO_addButton}
    click button    ${PO_addButton}
    wait until page contains    successfully