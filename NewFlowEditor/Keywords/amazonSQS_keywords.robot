***Settings***
Resource    ../Conf/common_settings.robot
#Resource    ../../PageObjects/default_po.robot

***keywords***

addaccount_amazonSQS
    [documentation]    To create an account for AmazonSQS connector
    wait until page contains element    ${PO_connectionAccountName}
    Press Keys  ${PO_connectionAccountName}  CTRL+a+DELETE
    input text    ${PO_connectionAccountName}    ${newCommonAccountName}
    ${SQSServerURL}    getDataFromDB    Con8.serverURL
    ${SQSaccessKey}    getDataFromDB    Con8.accessKey
    ${SQSsecretKey}    getDataFromDB    Con8.secretKey
    Press Keys  ${PO_serverUrl}  CTRL+a+DELETE
    input text    ${PO_serverUrl}    ${SQSServerURL}
    input text    ${PO_accessKey}    ${SQSaccessKey}
    input text    ${PO_secretKey}    ${SQSsecretKey}
    wait until element is enabled    ${PO_addButton}
    click button    ${PO_addButton}
    wait until page contains    successfully