***Settings***
Resource    ../Conf/common_settings.robot

***keywords***

addAccount_Salesforce
    [documentation]  This keyword adds Salesforce Credential type account
    [Arguments]     ${AccountName}
    wait until page contains element    ${PO_connectionAccountName}
    Press Keys  ${PO_connectionAccountName}  CTRL+a+DELETE
    input text    ${PO_connectionAccountName}    ${AccountName}
    ${SalesforceUsername}    getDataFromDB    Con6.username
    ${SalesforcePassword}    getDataFromDB    Con6.password
    input text  ${PO_addAccountUserName}  ${SalesforceUsername}
    input text  ${PO_addAccountPassword}  ${SalesforcePassword}
    wait until element is enabled    ${PO_addButton}
    click element   ${PO_addButton}
    wait until page contains    successfully

addSalesforceCRMOAuthAccount
    [documentation]  This keyword adds Salesforce OAuth type account
    wait until page contains element    ${PO_connectionAccountName}
    Press Keys  ${PO_connectionAccountName}  CTRL+a+DELETE
    input text    ${PO_connectionAccountName}    ${newCommonAccountName}
    ${SF_ClientID}    getDataFromDB    Con6.clientId
    ${SF_ClientSecret}    getDataFromDB    Con6.clientSecret
    ${SF_AccessToken}    getDataFromDB    Con6.accessToken
    ${SF_RefreshToken}    getDataFromDB    Con6.refreshToken
    ${SF_RefreshURL}    getDataFromDB    Con6.refreshURL
    ${SF_GrantType}    getDataFromDB    Con6.grantType
    ${SF_InstanceURL}    getDataFromDB    Con6.instanceURL
    ${SF_ServerURL}    getDataFromDB    Con6.serverURL
    input text  ${PO_clientID}  ${SF_ClientID}
    input text  ${PO_clientSecret}  ${SF_ClientSecret}
    input text  ${PO_accessToken}  ${SF_AccessToken}
    input text  ${PO_refreshToken}  ${SF_RefreshToken}
    input text  ${PO_refreshURL}  ${SF_RefreshURL}
    input text  ${PO_grantType}  ${SF_GrantType}
    input text  ${PO_instanceURL}  ${SF_InstanceURL}
    Press Keys  ${PO_urlServer}  CTRL+a+DELETE
    input text  ${PO_urlServer}  ${SF_ServerURL}
    wait until element is enabled    ${PO_addButton}
    click element   ${PO_addButton}
    wait until page contains    successfully

addSalesforceCRMjwtAccount
    [documentation]  This keyword addes an JWT account for salesforce.
    [Arguments]    ${jwtKeystore}   ${jwtKeyAlias}
    wait until page contains element    ${PO_connectionAccountName}
    Press Keys  ${PO_connectionAccountName}  CTRL+a+DELETE
    input text    ${PO_connectionAccountName}    ${newCommonAccountName}
    ${salesforceServerURL}    getDataFromDB    Con6.jwtServerURL
    ${salesforceJwtIssuer}    getDataFromDB    Con6.issuer
    ${salesforceJwtSubject}    getDataFromDB    Con6.subject
    Press Keys  ${PO_serverUrl}  CTRL+a+DELETE
    input text    ${PO_serverUrl}    ${salesforceServerURL}
    input text    ${PO_jwtIssuer}    ${salesforceJwtIssuer}
    input text    ${PO_jwtSubject}    ${salesforceJwtSubject}
    click element    ${PO_jwtKeystoreDropDown}
    wait until page contains element    ${PO_jwtKeystoreInputField}
    input text    ${PO_jwtKeystoreInputField}    ${jwtKeystore}
    press keys    ${PO_jwtKeystoreInputField}   RETURN
    click element    ${PO_jwtKeyAliasDropDown}
    wait until page contains element    ${PO_jwtKeyAliasInputField}
    input text    ${PO_jwtKeyAliasInputField}    ${jwtKeyAlias}
    press keys    ${PO_jwtKeyAliasInputField}   RETURN
    wait until element is enabled    ${PO_addButton}
    click element   ${PO_addButton}
    wait until page contains    successfully

configureCreateAccountSalesforce
    [documentation]   this keyword configures createAccounts predefined operation
	[Arguments]    ${input_accountname}
    wait until page contains element    ${PO_editMapping}
    click element    ${PO_editMapping}
    Wait until page contains element    ${PO_expandCol2P1InPipeline}
    click element    ${PO_expandCol2P1InPipeline}
    wait until page contains element    ${PO_expandCol2P1C1InPipeline}
    click element    ${PO_expandCol2P1C1InPipeline}
    wait until page contains element    ${PO_sf_AccountNameLabelInPipeline}
    double click element    ${PO_sf_AccountNameLabelInPipeline}
	wait until page contains element    ${PO_textFieldInPipeline}
	input text    ${PO_textFieldInPipeline}   ${input_accountname}
    wait until page contains element    ${PO_saveButtonInPipeline}
    click button    ${PO_saveButtonInPipeline}
    wait until page contains element    ${PO_closePipeline}
    click element    ${PO_closePipeline}

configureDeleteAccountByIDSalesforce
    [documentation]   this keyword configures deleteAccountbyID predefined operation
    [Arguments]    ${flowserviceStepNumber}
    wait until page contains element    xpath://step-ui/div/div/step-ui[${flowserviceStepNumber}]//span[@title='Edit Mapping']
    click element    xpath://step-ui/div/div/step-ui[${flowserviceStepNumber}]//span[@title='Edit Mapping']
    Wait until page contains element    ${PO_expandCol2P1InPipeline}
    click element    ${PO_expandCol2P1InPipeline}
    Wait until page contains element    ${PO_expandCol1P2InPipeline}
    click element    ${PO_expandCol1P2InPipeline}
    Wait until page contains element    ${PO_expandCol1P2C1InPipeline}
    click element    ${PO_expandCol1P2C1InPipeline}
    drag and drop    ${PO_accountIDlabelInCol1ofPipeline}    ${PO_accountIDsLabelInCol2ofPipeline}
    Wait until page contains    Indexed Mapping
    sleep    3s
    click element    ${PO_Maponarraylevel}
    wait until page contains element    ${PO_saveButtonInPipeline}
    click element    ${PO_saveButtonInPipeline}

configureUpdateAccountByIDSalesforce
    [documentation]   this keyword configures updateAccountbyID predefined operation
    [Arguments]    ${flowserviceStepNumber}    ${accountNameToBeUpdated}
    wait until page contains element    xpath://step-ui/div/div/step-ui[${flowserviceStepNumber}]//span[@title='Edit Mapping']
    click element    xpath://step-ui/div/div/step-ui[${flowserviceStepNumber}]//span[@title='Edit Mapping']
    Wait until page contains element    ${PO_expandCol2P1InPipeline}
    click element    ${PO_expandCol2P1InPipeline}
    Wait until page contains element    ${PO_expandCol2P1C1InPipeline}
    click element    ${PO_expandCol2P1C1InPipeline}
    Wait until page contains element    ${PO_expandCol1P2InPipeline}
    click element    ${PO_expandCol1P2InPipeline}
    Wait until page contains element    ${PO_expandCol1P2C1InPipeline}
    click element    ${PO_expandCol1P2C1InPipeline}
    drag and drop    ${PO_accountIDlabelInCol1ofPipeline}    ${PO_accountIDlabelInCol2ofPipeline}
    wait until page contains element    ${PO_sf_AccountNameLabelInPipeline}
    double click element    ${PO_sf_AccountNameLabelInPipeline}
	wait until page contains element    ${PO_textFieldInPipeline}
	input text    ${PO_textFieldInPipeline}    ${accountNameToBeUpdated}
    wait until page contains element    ${PO_saveButtonInPipeline}
    click button    ${PO_saveButtonInPipeline}
    wait until page contains element    ${PO_closePipeline}
    click element    ${PO_closePipeline}

configureQueryAccountByIDSalesforce
    [documentation]   this keyword configures queryAccountbyID predefined operation
    [Arguments]    ${flowserviceStepNumber}
    wait until page contains element    xpath://step-ui/div/div/step-ui[${flowserviceStepNumber}]//span[@title='Edit Mapping']
    click element    xpath://step-ui/div/div/step-ui[${flowserviceStepNumber}]//span[@title='Edit Mapping']
    Wait until page contains element    ${PO_expandCol2P1InPipeline}
    click element    ${PO_expandCol2P1InPipeline}
    Wait until page contains element    ${PO_expandCol1P2InPipeline}
    click element    ${PO_expandCol1P2InPipeline}
    Wait until page contains element    ${PO_expandCol1P2C1InPipeline}
    click element    ${PO_expandCol1P2C1InPipeline}
    drag and drop    ${PO_accountIDlabelInCol1ofPipeline}    ${PO_accountIDsLabelInCol2ofPipeline}
    Wait until page contains    Indexed Mapping
    click element    ${PO_Maponarraylevel}
    sleep   3s
    wait until page contains element    ${PO_saveButtonInPipeline}
    click element    ${PO_saveButtonInPipeline}
    wait until page contains element    ${PO_closePipeline}
    click element    ${PO_closePipeline}


editAccountsConnectionForSalesforceFromConnectorsTab
    [documentation]    This keyword will edit the connection.
    [Arguments]    ${connector}
    wait until page contains element    ${PO_connectorsSearchBox}
    input text    ${PO_connectorsSearchBox}    ${connector}    clear=True
    wait until page contains element    xpath://span[contains(@title,'${connector}')]
    click element    xpath://span[contains(@title,'${connector}')]//..//span[@class="delite-icon dlt-icon-chevron-down icon-chevron-down"]
    wait until page contains element    ${PO_deleteConnection}
    mouse over    ${PO_deleteConnection}
    wait until page contains element    xpath://span[contains(@title,'Edit')]
    click element    xpath://span[contains(@title,'Edit')]
    wait until page contains element    ${PO_connectionEditpageInFlowservice}
	${SalesforcePassword}    getDataFromDB    Con6.password
    input text  ${PO_addAccountPassword}  ${SalesforcePassword}
    wait until element is enabled    ${PO_saveButtonInPipeline}
    click element   ${PO_saveButtonInPipeline}
    wait until page contains    successfully












