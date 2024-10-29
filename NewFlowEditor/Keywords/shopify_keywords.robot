***Settings***
Resource    ../Conf/common_settings.robot
#Resource    ../../PageObjects/default_po.robot

***keywords***

addCustomOperation_Account_Shopify
    [documentation]    To add a custom operation for Shopify connector. Takes Accountname and action name as arguments
    [Arguments]    ${newCommonAccountName}    ${actionName}    
    wait until page contains element    ${PO_connectorDropdown}
    click element    ${PO_connectorDropdown}
    wait until page contains element   ${PO_addCustomOperation} 
    click element    ${PO_addCustomOperation} 
    wait until page contains element    ${PO_addAccount}
    click element    ${PO_addAccount}
    addaccount_shopify    ${newCommonAccountName} 
    wait until page contains element    ${PO_customActionName}
    input text    ${PO_customActionName}   ${actionName}
    Sleep    4s
    click element  ${PO_nextButton}


addCustomOperation_Action_Shopify
    [documentation]    To add a custom action for Shopify connector. Takes operation to search and BO as arguments
    [Arguments]    ${customOperationToSearch}    ${BO}
    wait until page contains element    ${PO_searchBox}
    input text    ${PO_searchBox}    ${customOperationToSearch}
    #select radio button    ${customOperationToSearch}    ${customOperationToSearch}
    Sleep    2s
    click element    xpath://label[@class="radio-btn-label"][@for='${customOperationToSearch}']
    Sleep    2s
    click element    ${PO_nextButton}
    wait until page contains    ${PO_Text_selectBusinessObject}
    input text    ${PO_searchBox}    ${BO}
    click element    xpath://label[@class="radio-btn-label"][@for='${BO}${BO}']
    click element    ${PO_nextButton}
    wait until page contains    ${PO_Text_selectDataFields}
    click element    ${PO_nextButton}
    wait until page contains element    ${PO_confirmAction}
    click element    ${PO_doneButton}

addaccount_shopify
    [documentation]    To create an account for Shopify connector
    [Arguments]    ${newCommonAccountName}
    wait until page contains element    ${PO_connectionAccountName}
    input text    ${PO_connectionAccountName}    ${newCommonAccountName}    clear=True
    ${shopifyServerURL}    getDataFromDB    Con15.serverURL
    ${shopifyAPIKey}    getDataFromDB    Con15.apiKey
    input text    ${PO_serverUrl}    ${shopifyServerURL}    clear=True
    input text    ${PO_shopifyApiKey}    ${shopifyAPIKey}
    wait until element is enabled    ${PO_addButton}
    click button    ${PO_addButton}
    wait until page contains    successfully