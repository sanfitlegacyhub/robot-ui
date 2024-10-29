***Settings***
Resource    ../Conf/common_settings.robot
#Resource    ../../PageObjects/default_po.robot

***keywords***

addaccount_amazonSNS
    [documentation]    To create an account for Amazon SNS connector
    wait until page contains element    ${PO_connectionAccountName}
    Press Keys  ${PO_connectionAccountName}  CTRL+a+DELETE
    input text    ${PO_connectionAccountName}    ${newCommonAccountName}
    ${amazonSNSServerURL}    getDataFromDB    Con5.serverURL
    ${SNSaccessKey}    getDataFromDB    Con5.accessKey
    ${SNSsecretKey}    getDataFromDB    Con5.secretKey
    Press Keys  ${PO_serverUrl}  CTRL+a+DELETE
    input text    ${PO_serverUrl}    ${amazonSNSServerURL}
    input text    ${PO_accessKey}    ${SNSaccessKey}
    input text    ${PO_secretKey}    ${SNSsecretKey}
    wait until element is enabled    ${PO_addButton}
    click button    ${PO_addButton}
    wait until page contains    successfully