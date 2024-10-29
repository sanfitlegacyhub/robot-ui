***Settings***
Resource    ../Conf/common_settings.robot
#Resource    ../../PageObjects/default_po.robot

***keywords***

addCustomOperation_Account_AmazonDynamoDB
    [documentation]    To add a custom operation for Amazon connector. Takes Accountname and action name as arguments
    [Arguments]    ${newCommonAccountName}    ${actionName}    
    wait until page contains element    ${PO_connectorDropdown}
    click element    ${PO_connectorDropdown}
    wait until page contains element   ${PO_addCustomOperation} 
    click element    ${PO_addCustomOperation} 
    wait until page contains element    ${PO_addAccount}
    click element    ${PO_addAccount}
    addaccount_amazonDynamoDB    ${newCommonAccountName} 
    wait until page contains element    ${PO_customActionName}
    input text    ${PO_customActionName}   ${actionName}
    Sleep    4s
    click element  ${PO_nextButton}


addCustomOperation_Action_AmazonDynamoDB
    [documentation]    To add a custom action for Amazon connector. Takes operation to search and BO as arguments
    [Arguments]    ${customOperationToSearch}    
    wait until page contains element    ${PO_searchBox}
    input text    ${PO_searchBox}    ${customOperationToSearch}
    #select radio button    ${customOperationToSearch}
    Sleep    2s
    click element    xpath://label[@class='radio-btn-label'][@for='List Tables']
    Sleep    2s
    click element    ${PO_nextButton}
    wait until page contains element    ${PO_confirmAction}
    click element    ${PO_doneButton}

addaccount_amazonDynamoDB
    [documentation]    To create an account for Amazon DB connector
    [Arguments]    ${newCommonAccountName}
    wait until page contains element    ${PO_connectionAccountName}
    Press Keys  ${PO_connectionAccountName}  CTRL+a+DELETE
    input text    ${PO_connectionAccountName}    ${newCommonAccountName}
    ${amazonDBServerURL}    getDataFromDB    Con11.serverURL
    ${DBaccessKey}    getDataFromDB    Con11.accessKey
    ${DBsecretKey}    getDataFromDB    Con11.secretKey
    Press Keys  ${PO_serverUrl}  CTRL+a+DELETE
    input text    ${PO_serverUrl}    ${amazonDBServerURL}
    input text    ${PO_accessKey}    ${DBaccessKey}
    input text    ${PO_secretKey}    ${DBsecretKey}
    wait until element is enabled    ${PO_addButton}
    click button    ${PO_addButton}
    wait until page contains    successfully