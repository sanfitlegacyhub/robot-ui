***Settings***
Resource    ../Conf/common_settings.robot

***keywords***

addNetSuiteAccountInAddCustomOperationPage
    [documentation]    This will add NetSuite account in add custome operation page
    [Arguments]    ${accountName}
    navigateToAddCustomOperationPage
    wait until page contains element    ${PO_addAccount}
    click element    ${PO_addAccount}
    addNetSuiteAccount    ${accountName}

addObjectCustomActionUsingNewNetSuiteAccount
    [documentation]    This will create add object custom operation of NetSuite
    [Arguments]    ${customActionName}
    addNetSuiteAccountInAddCustomOperationPage    ${newCommonAccountName}
    wait until page contains element    ${PO_customActionName}
    input text    ${PO_customActionName}   ${customActionName}
    Sleep    4s
    click element  ${PO_nextButton}
    wait until page contains element    ${PO_selectOperationLabel}
    wait until page contains element    ${PO_searchBox}
    input text    ${PO_searchBox}    add
    Sleep    2s
    click element    ${PO_addOperationRadioBtnToCreateCustomOperation}
    Sleep    2s
    click element    ${PO_nextButton}
    wait until page contains element    ${PO_selectBusinessObjectLabel}
    wait until page contains element    ${PO_searchBox}
    input text    ${PO_searchBox}    Account {urn:accounting_2018_2.lists.webservices.netsuite.com}
    Sleep    2s
    click element    ${PO_accountBOradioBtnToCreateNetSuiteCustomOperation}
    Sleep    2s
    click element    ${PO_nextButton}
    wait until page contains element    ${PO_selectDataFieldsLabel}
    click element    ${PO_nextButton}
    wait until page contains element    ${PO_selectSchemaObjectLabel}
    click element    ${PO_nextButton}
    wait until page contains element    ${PO_confirmAction}
    click element    ${PO_doneButton}

getObjectCustomActionUsingExistingNetSuiteAccount
    [documentation]    This will create get object custom operation of NetSuite
    [Arguments]    ${customActionName}
    navigateToAddCustomOperationPage
    wait until page contains element    ${PO_accountSelectionDropdownInAddCustomOperationPage}
    click element    ${PO_accountSelectionDropdownInAddCustomOperationPage}
    Sleep  2s
    click element  //*[text()='${newCommonAccountName}']
    wait until page contains element    ${PO_customActionName}
    input text    ${PO_customActionName}   ${customActionName}
    Sleep    4s
    click element  ${PO_nextButton}
    wait until page contains element    ${PO_selectOperationLabel}
    wait until page contains element    ${PO_searchBox}
    input text    ${PO_searchBox}    get
    Sleep    2s
    click element    ${PO_getOperationRadioBtnToCreateCustomOperation}
    Sleep    2s
    click element    ${PO_nextButton}
    wait until page contains element    ${PO_selectSchemaObjectLabel}
    click element    ${PO_nextButton}
    wait until page contains element    ${PO_selectBusinessObjectLabel}
    wait until page contains element    ${PO_searchBox}
    input text    ${PO_searchBox}    Account {urn:accounting_2018_2.lists.webservices.netsuite.com}
    Sleep    2s
    click element    ${PO_accountBOradioBtnToCreateNetSuiteCustomOperation}
    Sleep    2s
    click element    ${PO_nextButton}
    wait until page contains element    ${PO_selectDataFieldsLabel}
    wait until page contains element    ${PO_searchBox}
    input text    ${PO_searchBox}    @internalId
    Sleep    2s
    click element    ${PO_internalIdDataFieldCheckboxToCreateNetSuiteCustomOperation}
    Sleep    2s
    input text    ${PO_searchBox}    listAcct:acctNumber   clear=True
    Sleep    2s
    click element    ${PO_acNumberDataFieldCheckboxToCreateNetSuiteCustomOperation}
    Sleep    2s
    input text    ${PO_searchBox}    listAcct:acctName   clear=True
    Sleep    2s
    click element    ${PO_acNameDataFieldCheckboxToCreateNetSuiteCustomOperation}
    Sleep    2s
    click element    ${PO_nextButton}
    wait until page contains element    ${PO_confirmAction}
    click element    ${PO_doneButton}

getAllObjectsCustomActionUsingNewNetSuiteAccount
    [documentation]    This will create get all objects custom operation of NetSuite
    [Arguments]    ${customActionName}
    addNetSuiteAccountInAddCustomOperationPage    ${newCommonAccountName}
    wait until page contains element    ${PO_customActionName}
    input text    ${PO_customActionName}   ${customActionName}
    Sleep    4s
    click element  ${PO_nextButton}
    wait until page contains element    ${PO_selectOperationLabel}
    wait until page contains element    ${PO_searchBox}
    input text    ${PO_searchBox}    getAll
    Sleep    2s
    click element    ${PO_getAllOperationRadioBtnToCreateCustomOperation}
    Sleep    2s
    click element    ${PO_nextButton}
    wait until page contains element    ${PO_selectBusinessObjectLabel}
    wait until page contains element    ${PO_searchBox}
    input text    ${PO_searchBox}    BudgetCategory {urn:accounting_2018_2.lists.webservices.netsuite.com}
    Sleep    2s
    click element    ${PO_BudgetCategoryBOradioBtnToCreateNetSuiteCustomOperation}
    Sleep    2s
    click element    ${PO_nextButton}
    wait until page contains element    ${PO_selectDataFieldsLabel}
    wait until page contains element    ${PO_searchBox}
    input text    ${PO_searchBox}    @internalId
    Sleep    2s
    click element    ${PO_internalIdDataFieldCheckboxToCreateNetSuiteCustomOperation}
    Sleep    2s
    click element    ${PO_nextButton}
    wait until page contains element    ${PO_confirmAction}
    click element    ${PO_doneButton}

editGetAllObjectsCustomActionOfNetSuite
    [documentation]    This will create get all objects custom operation of NetSuite
    [Arguments]    ${customActionName}
    wait until page contains element    ${PO_actionSelectionDropdown}
    click element   ${PO_actionSelectionDropdown}
    input text  ${PO_actionSelectionDropdown}   ${customActionName}
    wait until page contains element    ${PO_edit_CustomOperation}
    click element    ${PO_edit_CustomOperation}
    wait until page contains element    ${PO_edit_CustomOperation_Confirm}
    click element    ${PO_edit_CustomOperation_Confirm}
    wait until page contains element    ${PO_connectToAccountLabel}
    wait until page contains element    ${PO_nextButton}
    click element  ${PO_nextButton}
    wait until page contains element    ${PO_selectOperationLabel}
#    wait until page contains element    ${PO_searchBox}
#    input text    ${PO_searchBox}    getAll
#    Sleep    2s
#    click element    ${PO_getAllOperationRadioBtnToCreateCustomOperation}
#    Sleep    2s
    click element    ${PO_nextButton}
    wait until page contains element    ${PO_selectBusinessObjectLabel}
    wait until page contains element    ${PO_searchBox}
    input text    ${PO_searchBox}    CampaignCategory {urn:marketing_2018_2.lists.webservices.netsuite.com}
    Sleep    2s
    click element    ${PO_CampaignCategoryBOradioBtnToCreateNetSuiteCustomOperation}
    Sleep    2s
    click element    ${PO_nextButton}
    wait until page contains element    ${PO_selectDataFieldsLabel}
    wait until page contains element    ${PO_searchBox}
    input text    ${PO_searchBox}    @internalId
    Sleep    2s
    click element    ${PO_internalIdDataFieldCheckboxToCreateNetSuiteCustomOperation}
    Sleep    2s
    click element    ${PO_nextButton}
    wait until page contains element    ${PO_confirmAction}
    click element    ${PO_doneButton}

updateObjectCustomActionUsingExistingNetSuiteAccount
    [documentation]    This will create update object custom operation of NetSuite
    [Arguments]    ${customActionName}
    navigateToAddCustomOperationPage
    wait until page contains element    ${PO_accountSelectionDropdownInAddCustomOperationPage}
    click element    ${PO_accountSelectionDropdownInAddCustomOperationPage}
    Sleep  2s
    click element  //*[text()='${newCommonAccountName}']
    wait until page contains element    ${PO_customActionName}
    input text    ${PO_customActionName}   ${customActionName}
    Sleep    4s
    click element  ${PO_nextButton}
    wait until page contains element    ${PO_selectOperationLabel}
    wait until page contains element    ${PO_searchBox}
    input text    ${PO_searchBox}    update
    Sleep    2s
    click element    ${PO_updateOperationRadioBtnToCreateCustomOperation}
    Sleep    2s
    click element    ${PO_nextButton}
    wait until page contains element    ${PO_selectBusinessObjectLabel}
    wait until page contains element    ${PO_searchBox}
    input text    ${PO_searchBox}    Account {urn:accounting_2018_2.lists.webservices.netsuite.com}
    Sleep    2s
    click element    ${PO_accountBOradioBtnToCreateNetSuiteCustomOperation}
    Sleep    2s
    click element    ${PO_nextButton}
    wait until page contains element    ${PO_selectDataFieldsLabel}
    wait until page contains element    ${PO_searchBox}
    input text    ${PO_searchBox}    listAcct:acctName
    Sleep    2s
    click element    ${PO_acNameDataFieldCheckboxToCreateNetSuiteCustomOperation}
    Sleep    2s
    click element    ${PO_nextButton}
    wait until page contains element    ${PO_selectSchemaObjectLabel}
    click element    ${PO_nextButton}
    wait until page contains element    ${PO_confirmAction}
    click element    ${PO_doneButton}

deleteObjectCustomActionUsingExistingNetSuiteAccount
    [documentation]    This will create delete object custom operation of NetSuite
    [Arguments]    ${customActionName}
    navigateToAddCustomOperationPage
    wait until page contains element    ${PO_accountSelectionDropdownInAddCustomOperationPage}
    click element    ${PO_accountSelectionDropdownInAddCustomOperationPage}
    Sleep  2s
    click element  //*[text()='${newCommonAccountName}']
    wait until page contains element    ${PO_customActionName}
    input text    ${PO_customActionName}   ${customActionName}
    Sleep    4s
    click element  ${PO_nextButton}
    wait until page contains element    ${PO_selectOperationLabel}
    wait until page contains element    ${PO_searchBox}
    input text    ${PO_searchBox}    delete
    Sleep    2s
    click element    ${PO_deleteOperationRadioBtnToCreateCustomOperation}
    Sleep    2s
    click element    ${PO_nextButton}
    wait until page contains element    ${PO_selectSchemaObjectLabel}
    click element    ${PO_nextButton}
    Sleep  2s
    click element    ${PO_nextButton}
    wait until page contains element    ${PO_confirmAction}
    click element    ${PO_doneButton}

addNetSuiteAccount
    [documentation]    To create an account for NetSuite connector
    [Arguments]    ${accountName}
    wait until page contains element    ${PO_connectionAccountName}
    Press Keys  ${PO_connectionAccountName}  CTRL+a+DELETE
    input text    ${PO_connectionAccountName}    ${accountName}
    ${NetSuiteServerURL}    getDataFromDB    Con12.serverURL
    ${NetSuiteAccountID}    getDataFromDB    Con12.accountId
    ${NetSuiteConsumerKey}    getDataFromDB    Con12.consumerKey
    ${NetSuiteConsumerSecret}    getDataFromDB    Con12.consumerSecret
    ${NetSuiteTokenID}    getDataFromDB    Con12.tokenId
    ${NetSuiteTokenSecret}    getDataFromDB    Con12.tokenSecret
    Press Keys  ${PO_serverUrl}  CTRL+a+DELETE
    input text    ${PO_serverUrl}    ${NetSuiteServerURL}
    input text    ${PO_accountID}    ${NetSuiteAccountID}
    input text    ${PO_consumerKey}    ${NetSuiteConsumerKey}
    input text    ${PO_consumerSecret}    ${NetSuiteConsumerSecret}
    input text    ${PO_tokenID}    ${NetSuiteTokenID}
    input text    ${PO_tokenSecret}    ${NetSuiteTokenSecret}
    wait until element is enabled    ${PO_addButton}
    click button    ${PO_addButton}
    wait until page contains    successfully

configureAddObjectPipelineOfNetSuite
    [documentation]   this keyword configures pipeline for add object custom operation
    [Arguments]    ${input_accountType}   ${input_accountNumber}   ${input_accountName}
    wait until page contains element    ${PO_editMapping}
    click element    ${PO_editMapping}
    Wait until page contains element    ${PO_expandCol2P1InPipeline}
    click element    ${PO_expandCol2P1InPipeline}
    wait until page contains element    ${PO_ns_acctTypeLabelInPipeline}
    double click element    ${PO_ns_acctTypeLabelInPipeline}
	wait until page contains element    ${PO_dropdownInPipeline}
	click element    ${PO_dropdownExpandBtnInPipeline}
	Sleep  3s
	click element    xpath://*[@id="listAcct:acctType"]//span[contains(text(),'${input_accountType}')]
	wait until page contains element    ${PO_saveButtonInPipeline}
    click button    ${PO_saveButtonInPipeline}
    Sleep  3s
    wait until page contains element    ${PO_ns_acctNumberLabelInPipeline}
    double click element    ${PO_ns_acctNumberLabelInPipeline}
	input text    ${PO_textFieldInPipeline}   ${input_accountNumber}    clear=true
    wait until page contains element    ${PO_saveButtonInPipeline}
    click button    ${PO_saveButtonInPipeline}
    Sleep  3s
    wait until page contains element    ${PO_ns_acctNameLabelInPipeline}
    double click element    ${PO_ns_acctNameLabelInPipeline}
    input text    ${PO_textFieldInPipeline}   ${input_accountName}    clear=true
    wait until page contains element    ${PO_saveButtonInPipeline}
    click button    ${PO_saveButtonInPipeline}
    wait until page contains element    ${PO_closePipeline}
    click element    ${PO_closePipeline}

configureGetObjectPipelineInFlowServiceStepOfNetSuite
    [documentation]   this keyword configures pipeline for get object custom operation
    [Arguments]    ${flowserviceStepNumber}
    wait until page contains element    xpath://step-ui/div/div/step-ui[${flowserviceStepNumber}]//span[@title='Edit Mapping']
    click element    xpath://step-ui/div/div/step-ui[${flowserviceStepNumber}]//span[@title='Edit Mapping']
    Wait until page contains element    ${PO_expandCol2P1InPipeline}
    click element    ${PO_expandCol2P1InPipeline}
    Wait until page contains element    ${PO_expandCol1P2InPipeline}
    click element    ${PO_expandCol1P2InPipeline}
    drag and drop    ${PO_internalIdLabelInCol1ofRecordPipeline}    ${PO_internalIdLabelInCol2ofRecordPipeline}
    wait until page contains element    ${PO_closePipeline}
    click element    ${PO_closePipeline}

configureUpdateObjectPipelineInFlowServiceStepOfNetSuite
    [documentation]   this keyword configures pipeline for update object custom operation
    [Arguments]    ${flowserviceStepNumber}  ${input_accountName}
    wait until page contains element    xpath://step-ui/div/div/step-ui[${flowserviceStepNumber}]//span[@title='Edit Mapping']
    click element    xpath://step-ui/div/div/step-ui[${flowserviceStepNumber}]//span[@title='Edit Mapping']
    Wait until page contains element    ${PO_expandCol2P1InPipeline}
    click element    ${PO_expandCol2P1InPipeline}
    Wait until page contains element    ${PO_expandCol1P2InPipeline}
    click element    ${PO_expandCol1P2InPipeline}
    drag and drop    ${PO_internalIdLabelInCol1ofRecordPipeline}    ${PO_internalIdLabelInCol2ofAccountPipeline}
    wait until page contains element    ${PO_ns_acctNameLabelInPipeline}
    double click element    ${PO_ns_acctNameLabelInPipeline}
    input text    ${PO_textFieldInPipeline}   ${input_accountName}    clear=true
    wait until page contains element    ${PO_saveButtonInPipeline}
    click button    ${PO_saveButtonInPipeline}
    wait until page contains element    ${PO_closePipeline}
    click element    ${PO_closePipeline}

configureDeleteObjectPipelineInFlowServiceStepOfNetSuite
    [documentation]   this keyword configures pipeline for delete object custom operation
    [Arguments]    ${flowserviceStepNumber}
    wait until page contains element    xpath://step-ui/div/div/step-ui[${flowserviceStepNumber}]//span[@title='Edit Mapping']
    click element    xpath://step-ui/div/div/step-ui[${flowserviceStepNumber}]//span[@title='Edit Mapping']
    Wait until page contains element    ${PO_expandCol2P1InPipeline}
    click element    ${PO_expandCol2P1InPipeline}
    Wait until page contains element    ${PO_expandCol2P1C1InPipeline}
    click element    ${PO_expandCol2P1C1InPipeline}
    Wait until page contains element    ${PO_expandCol1P2InPipeline}
    click element    ${PO_expandCol1P2InPipeline}
    drag and drop    ${PO_internalIdLabelInCol1ofRecordPipeline}    ${PO_internalIdLabelInCol2ofPlatformMsgsPipeline}
    Sleep  2s
    drag and drop    ${PO_typeLabelInCol1ofRecordPipeline}    ${PO_typeLabelInCol2ofPlatformMsgsPipeline}
    wait until page contains element    ${PO_closePipeline}
    click element    ${PO_closePipeline}


