***Settings***
Resource    ../Conf/common_settings.robot

***keywords***

#addODataCredTypeAccountInAddCustomOperationPage
#    [documentation]    This will add OData account in add custom operation page
#    [Arguments]    ${accountName}
#    navigateToAddCustomOperationPage
#    wait until page contains element    ${PO_authTypeSelectionDropdownInAddCustomOperationPage}
#    click element    ${PO_authTypeSelectionDropdownInAddCustomOperationPage}
#    wait until page contains element    ${PO_credTypeAuthInAddCustomOperationPage}
#    click element  ${PO_credTypeAuthInAddCustomOperationPage}
#    wait until page contains element    ${PO_addAccount}
#    click element    ${PO_addAccount}
#    addODataCredTypeAccount    ${accountName}

addODataOAuthTypeAccountInAddCustomOperationPage
    [documentation]    This will add OData account in add custom operation page
    [Arguments]    ${accountName}
    navigateToAddCustomOperationPage
    wait until page contains element    ${PO_authTypeSelectionDropdownInAddCustomOperationPage}
    click element    ${PO_authTypeSelectionDropdownInAddCustomOperationPage}
    wait until page contains element    ${PO_oauthTypeAuthInAddCustomOperationPage}
    click element  ${PO_oauthTypeAuthInAddCustomOperationPage}
    wait until page contains element    ${PO_addAccount}
    click element    ${PO_addAccount}
    addODataOAuthTypeAccount    ${accountName}

createAccountCustomActionUsingNewOAuthTypeODataAccount
    [documentation]    This test case is for create account custom operation using OData OAuth account
    [Arguments]    ${customActionName}
    addODataOAuthTypeAccountInAddCustomOperationPage    ${newCommonAccountName}
    wait until page contains element    ${PO_customActionName}
    input text    ${PO_customActionName}   ${customActionName}
    wait until element is enabled   ${PO_nextButton}
    click element  ${PO_nextButton}
    wait until page contains element    ${PO_selectOperationLabel}
    wait until page contains element    ${PO_searchBox}
    input text    ${PO_searchBox}    Create
    Sleep    2s
    click element    ${PO_createOperationRadioBtnInAddCustomOperationPage}
    wait until element is enabled   ${PO_nextButton}
    click element    ${PO_nextButton}
    wait until page contains element    ${PO_selectBusinessObjectLabel}
    wait until page contains element    ${PO_searchBox}
    input text    ${PO_searchBox}    accounts(Microsoft.Dynamics.CRM.account)
    Sleep    2s
    click element    ${PO_MSdynamicAccountBOradioBtnInAddCustomOperationPage}
    wait until element is enabled   ${PO_nextButton}
    click element    ${PO_nextButton}
    wait until page contains element    ${PO_selectDataFieldsLabel}
    wait until page contains element    ${PO_searchBox}
    input text    ${PO_searchBox}    name
    Sleep    2s
    click element    ${PO_nameDataFieldCheckboxInAddCustomOperationPage}
    Sleep    2s
    input text    ${PO_searchBox}    address1_city    clear=true
    wait until page contains element  ${PO_address1_cityDataFieldCheckboxInAddCustomOperationPage}
    Sleep  2s
    click element    ${PO_address1_cityDataFieldCheckboxInAddCustomOperationPage}
    wait until element is enabled   ${PO_nextButton}
    click element    ${PO_nextButton}
    wait until page contains element    ${PO_confirmAction}
    click element    ${PO_doneButton}
    Sleep  3s

readAccountCustomActionUsingExistingOAuthTypeODataAccount
    [documentation]    This will create OData custom operation to read MS Dynamic CRM account
    [Arguments]    ${customActionName}
    navigateToAddCustomOperationPage
    wait until page contains element    ${PO_authTypeSelectionDropdownInAddCustomOperationPage}
    click element    ${PO_authTypeSelectionDropdownInAddCustomOperationPage}
    wait until page contains element    ${PO_oauthTypeAuthInAddCustomOperationPage}
    click element  ${PO_oauthTypeAuthInAddCustomOperationPage}
    wait until page contains element    ${PO_oauthAccountSelectionDropdownInAddCustomOperationPage}
    click element    ${PO_oauthAccountSelectionDropdownInAddCustomOperationPage}
    Sleep  2s
    click element  //*[text()='${newCommonAccountName}']
    wait until page contains element    ${PO_customActionName}
    input text    ${PO_customActionName}   ${customActionName}
    wait until element is enabled   ${PO_nextButton}
    click element  ${PO_nextButton}
    wait until page contains element    ${PO_selectOperationLabel}
    wait until page contains element    ${PO_searchBox}
    input text    ${PO_searchBox}    Read
    Sleep    2s
    click element    ${PO_readOperationRadioBtnInAddCustomOperationPage}
    wait until element is enabled   ${PO_nextButton}
    click element    ${PO_nextButton}
    wait until page contains element    ${PO_selectBusinessObjectLabel}
    wait until page contains element    ${PO_searchBox}
    input text    ${PO_searchBox}    accounts(Microsoft.Dynamics.CRM.account)
    Sleep    2s
    click element    ${PO_MSdynamicAccountBOradioBtnInAddCustomOperationPage}
    wait until element is enabled   ${PO_nextButton}
    click element    ${PO_nextButton}
    wait until page contains element    ${PO_selectDataFieldsLabel}
    wait until page contains element    ${PO_searchBox}
    input text    ${PO_searchBox}    name
    Sleep    2s
    click element    ${PO_nameDataFieldCheckboxInAddCustomOperationPage}
    Sleep    2s
    input text    ${PO_searchBox}    address1_city    clear=true
    wait until page contains element  ${PO_address1_cityDataFieldCheckboxInAddCustomOperationPage}
    Sleep  2s
    click element    ${PO_address1_cityDataFieldCheckboxInAddCustomOperationPage}
    wait until element is enabled   ${PO_nextButton}
    click element    ${PO_nextButton}
    wait until page contains element    ${PO_confirmAction}
    click element    ${PO_doneButton}

upsertAccountCustomActionUsingExistingOAuthTypeODataAccount
    [documentation]    This will upsert MS Dynamic CRM account using OData OAuth type connection
    [Arguments]    ${customActionName}
    navigateToAddCustomOperationPage
    wait until page contains element    ${PO_authTypeSelectionDropdownInAddCustomOperationPage}
    click element    ${PO_authTypeSelectionDropdownInAddCustomOperationPage}
    wait until page contains element    ${PO_oauthTypeAuthInAddCustomOperationPage}
    click element  ${PO_oauthTypeAuthInAddCustomOperationPage}
    wait until page contains element    ${PO_oauthAccountSelectionDropdownInAddCustomOperationPage}
    click element    ${PO_oauthAccountSelectionDropdownInAddCustomOperationPage}
    Sleep  2s
    click element  //*[text()='${newCommonAccountName}']
    wait until page contains element    ${PO_customActionName}
    input text    ${PO_customActionName}   ${customActionName}
    wait until element is enabled   ${PO_nextButton}
    click element  ${PO_nextButton}
    wait until page contains element    ${PO_selectOperationLabel}
    wait until page contains element    ${PO_searchBox}
    input text    ${PO_searchBox}    Upsert
    Sleep    2s
    click element    ${PO_upsertOperationRadioBtnInAddCustomOperationPage}
    wait until element is enabled   ${PO_nextButton}
    click element    ${PO_nextButton}
    wait until page contains element    ${PO_selectBusinessObjectLabel}
    wait until page contains element    ${PO_searchBox}
    input text    ${PO_searchBox}    accounts(Microsoft.Dynamics.CRM.account)
    Sleep    2s
    click element    ${PO_MSdynamicAccountBOradioBtnInAddCustomOperationPage}
    wait until element is enabled   ${PO_nextButton}
    click element    ${PO_nextButton}
    wait until page contains element    ${PO_selectDataFieldsLabel}
    wait until page contains element    ${PO_searchBox}
    input text    ${PO_searchBox}    address1_city    clear=true
    wait until page contains element  ${PO_address1_cityDataFieldCheckboxInAddCustomOperationPage}
    Sleep  2s
    click element    ${PO_address1_cityDataFieldCheckboxInAddCustomOperationPage}
    wait until element is enabled   ${PO_nextButton}
    click element    ${PO_nextButton}
    wait until page contains element    ${PO_confirmAction}
    click element    ${PO_doneButton}


deleteAccountCustomActionUsingExistingOAuthTypeODataAccount
    [documentation]    This will create MS Dynamic CRM delete account operation using OData OAuth connection
    [Arguments]    ${customActionName}
    navigateToAddCustomOperationPage
    wait until page contains element    ${PO_authTypeSelectionDropdownInAddCustomOperationPage}
    click element    ${PO_authTypeSelectionDropdownInAddCustomOperationPage}
    wait until page contains element    ${PO_oauthTypeAuthInAddCustomOperationPage}
    click element  ${PO_oauthTypeAuthInAddCustomOperationPage}
    wait until page contains element    ${PO_oauthAccountSelectionDropdownInAddCustomOperationPage}
    click element    ${PO_oauthAccountSelectionDropdownInAddCustomOperationPage}
    Sleep  2s
    click element  //*[text()='${newCommonAccountName}']
    wait until page contains element    ${PO_customActionName}
    input text    ${PO_customActionName}   ${customActionName}
    wait until element is enabled   ${PO_nextButton}
    click element  ${PO_nextButton}
    wait until page contains element    ${PO_selectOperationLabel}
    wait until page contains element    ${PO_searchBox}
    input text    ${PO_searchBox}    Delete
    Sleep    2s
    click element    ${PO_DeleteAccountOperationRadioBtnToCreateCustomOperation}
    wait until element is enabled   ${PO_nextButton}
    click element    ${PO_nextButton}
    wait until page contains element    ${PO_selectBusinessObjectLabel}
    wait until page contains element    ${PO_searchBox}
    input text    ${PO_searchBox}    accounts(Microsoft.Dynamics.CRM.account)
    Sleep    2s
    click element    ${PO_MSdynamicAccountBOradioBtnInAddCustomOperationPage}
    wait until element is enabled   ${PO_nextButton}
    click element    ${PO_nextButton}
    wait until page contains element    ${PO_selectDataFieldsLabel}
    click element    ${PO_nextButton}
    wait until page contains element    ${PO_confirmAction}
    click element    ${PO_doneButton}

addODataOAuthTypeAccount
    [documentation]    To create an OAuth type account for OData connector
    [Arguments]    ${accountName}
    Sleep  2s
    wait until page contains element    ${PO_connectionAccountName}
    Press Keys  ${PO_connectionAccountName}  CTRL+a+DELETE
    input text    ${PO_connectionAccountName}    ${accountName}
    ${ODataConsumerID}    getDataFromDB    Con13.consumerId
    ${ODataConsumerSecret}    getDataFromDB    Con13.consumerSecret
    ${ODataAccessToken}    getDataFromDB    Con13.accessToken
    ${ODataRefreshToken}    getDataFromDB    Con13.refreshToken
    ${ODataRefreshURL}    getDataFromDB    Con13.refreshURL
    ${ODataGrantType}    getDataFromDB    Con13.grantType
    ${ODataServerURL}    getDataFromDB    Con13.serverURL
    input text    ${PO_clientID}    ${ODataConsumerID}
    input text    ${PO_clientSecret}    ${ODataConsumerSecret}
    input text    ${PO_accessToken}    ${ODataAccessToken}
    input text    ${PO_refreshToken}    ${ODataRefreshToken}
    input text    ${PO_refreshURL}    ${ODataRefreshURL}
    input text    ${PO_grantType}    ${ODataGrantType}
    input text    ${PO_urlServer}    ${ODataServerURL}
    wait until element is enabled    ${PO_addButton}
    click button    ${PO_addButton}
    wait until page contains    successfully

#addODataCredTypeAccount
#    [documentation]    To create an credential type account of OData connector
#    [Arguments]    ${accountName}
#    wait until page contains element    ${PO_connectionAccountName}
#    Press Keys  ${PO_connectionAccountName}  CTRL+a+DELETE
#    input text    ${PO_connectionAccountName}    ${accountName}
#    Press Keys  ${PO_serverUrl}  CTRL+a+DELETE
#    input text    ${PO_serverUrl}    ${ODataServerURL}
#    input text    ${PO_addAccountUserName}    ${ODataUserName}
#    input text    ${PO_addAccountPassword}    ${ODataPassword}
#    click button    ${PO_addButton}
#    wait until page contains    successfully

configureCreateAccountPipelineOfOData
    [documentation]   this keyword configures pipeline for add MS Dynamic CRM account custom operation using OData
    [Arguments]    ${input_city}  ${input_acName}
    wait until page contains element    ${PO_editMapping}
    click element    ${PO_editMapping}
    Wait until page contains element    ${PO_expandCol2P1InPipeline}
    click element    ${PO_expandCol2P1InPipeline}
    Wait until page contains element    ${PO_expandCol2P1C1InPipeline}
    click element    ${PO_expandCol2P1C1InPipeline}
    wait until page contains element    ${PO_address1CityLabelInPipeline}
    double click element    ${PO_address1CityLabelInPipeline}
    wait until page contains element    ${PO_textFieldInPipeline}
    input text    ${PO_textFieldInPipeline}   ${input_city}    clear=true
    wait until page contains element    ${PO_saveButtonInPipeline}
    click button    ${PO_saveButtonInPipeline}
    wait until page contains element    ${PO_nameLabelInPipeline}
    double click element    ${PO_nameLabelInPipeline}
	wait until page contains element    ${PO_textFieldInPipeline}
	input text    ${PO_textFieldInPipeline}   ${input_acName}    clear=true
	wait until page contains element    ${PO_saveButtonInPipeline}
    click button    ${PO_saveButtonInPipeline}
    wait until page contains element    ${PO_closePipeline}
    click element    ${PO_closePipeline}

configureReadAccountPipelineOfOdata
    [documentation]   this keyword configures pipeline for get MS Dynamic CRM account in OData
    [Arguments]    ${flowserviceStepNumber}
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
    drag and drop    ${PO_accountIdLabelInCol1ofRecordPipeline}    ${PO_accountIdLabelInCol2ofRecordPipeline}
    wait until page contains element    ${PO_closePipeline}
    click element    ${PO_closePipeline}

configureUpsertAccountPipelineOfOdata
    [documentation]   this keyword configures pipeline for upsert MS Dynamic CRM account in OData
    [Arguments]    ${flowserviceStepNumber}  ${input_city}
    wait until page contains element    xpath://step-ui/div/div/step-ui[${flowserviceStepNumber}]//span[@title='Edit Mapping']
    click element    xpath://step-ui/div/div/step-ui[${flowserviceStepNumber}]//span[@title='Edit Mapping']
    Wait until page contains element    ${PO_expandCol2P1InPipeline}
    click element    ${PO_expandCol2P1InPipeline}
    Wait until page contains element    ${PO_expandCol2P1C2InPipeline}
    click element    ${PO_expandCol2P1C2InPipeline}
    Wait until page contains element    ${PO_expandCol1P2InPipeline}
    click element    ${PO_expandCol1P2InPipeline}
    Wait until page contains element    ${PO_expandCol1P2C1InPipeline}
    click element    ${PO_expandCol1P2C1InPipeline}
    drag and drop    ${PO_accountIdLabelInCol1ofRecordPipeline}    ${PO_accountIdLabelInCol2ofRecordPipeline}
    wait until page contains element    ${PO_address1CityLabelInPipeline}
    double click element    ${PO_address1CityLabelInPipeline}
    input text    ${PO_textFieldInPipeline}   ${input_city}    clear=true
    wait until page contains element    ${PO_saveButtonInPipeline}
    click button    ${PO_saveButtonInPipeline}
    wait until page contains element    ${PO_closePipeline}
    click element    ${PO_closePipeline}

configureDeleteAccountPipelineOfOData
    [documentation]   this keyword configures delete MS Dynamic CRM pipeline for OData
    [Arguments]    ${flowserviceStepNumber}
    wait until page contains element    xpath://step-ui/div/div/step-ui[${flowserviceStepNumber}]//span[@title='Edit Mapping']
    click element    xpath://step-ui/div/div/step-ui[${flowserviceStepNumber}]//span[@title='Edit Mapping']
    Wait until page contains element    ${PO_expandCol2P1InPipeline}
    click element    ${PO_expandCol2P1InPipeline}
    Wait until page contains element    ${PO_expandCol2P1C1InPipeline}
    click element    ${PO_expandCol2P1C1InPipeline}
    Wait until page contains element    ${PO_expandCol1P6InPipeline}
    click element    ${PO_expandCol1P6InPipeline}
    Wait until page contains element    ${PO_expandCol1P6C1InPipeline}
    click element    ${PO_expandCol1P6C1InPipeline}
    drag and drop    ${PO_accountIdLabelInCol1ofRecordPipeline}    ${PO_accountIdLabelInCol2ofRecordPipeline}
    wait until page contains element    ${PO_closePipeline}
    click element    ${PO_closePipeline}


