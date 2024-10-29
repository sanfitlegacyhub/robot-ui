***Settings***
Resource    ../Conf/common_settings.robot
#Resource    ../../PageObjects/default_po.robot

***keywords***

addCustomOperation_Account_Coupa
    [documentation]    To add Account in creating custom operation of Coupa V26
    [arguments]    ${customOperationName}    ${functionalArea}
    wait until page contains element    ${PO_connectorDropdown}
    click element    ${PO_connectorDropdown}
    wait until page contains element    ${PO_addCustomOperation}
    click element    ${PO_addCustomOperation}
    wait until page contains element    ${PO_addNewAccountIcon}
    click element    ${PO_addNewAccountIcon}
    addAccount_Coupa
    wait until page contains element    ${PO_customActionName}
    input text    ${PO_customActionName}    ${customOperationName}
    sleep    5s
    wait until page contains element    ${PO_functionalAreaDropdown}
    click element    ${PO_functionalAreaDropdown}
    click element    xpath://div[contains(text(),'${functionalArea}')]
    wait until page contains element    ${PO_next_button}
    click element    ${PO_next_button}

addCustomOperation_Operation_Coupa
    [documentation]    To Select the Operation and Business objects in creating Custom operation of Coupa V26
    [arguments]    ${actionName}    ${businessObject}    ${fields}
    wait until page contains element    ${PO_searchAction}
    click element    ${PO_searchAction}
    input text    ${PO_searchAction}    ${actionName}
    click element    ${PO_selectOpeartion}
    click element    ${PO_next_button}
    wait until page contains element    ${PO_searchBO}
    click element    ${PO_searchBO}
    input text    ${PO_searchBO}    ${businessObject}
    wait until page contains element    ${PO_selectBO}
    click element    ${PO_selectBO}
    wait until page contains element    ${PO_next_button}
    click element    ${PO_next_button}
    wait until page contains element    ${PO_searchFields}
    click element    ${PO_searchFields}
    input text    ${PO_searchFields}    ${fields}
    wait until page contains element    ${PO_check_box}
    click element    ${PO_check_box}
    wait until page contains element    ${PO_next_button}
    click element    ${PO_next_button}
    wait until page contains element    ${PO_done_button}
    click element    ${PO_done_button}
    sleep    5s



addCustOpforCreateAccount
    [documentation]    To Select the Operation and Business objects in creating Custom operation of Coupa
    [arguments]    ${actionName}    ${businessObject}    ${fields}
    wait until page contains element    ${PO_searchAction}
    click element    ${PO_searchAction}
    input text    ${PO_searchAction}    ${actionName}
    click element    ${PO_createOperationRadioBtnInAddCustomOperationPage}
    click element    ${PO_next_button}
    wait until page contains element    ${PO_searchBO}
    click element    ${PO_searchBO}
    input text    ${PO_searchBO}    ${businessObject}
    wait until page contains element    ${PO_selectBO}
    click element    ${PO_selectBO}
    wait until page contains element    ${PO_next_button}
    click element    ${PO_next_button}
    wait until page contains element    ${PO_CoupaAccountTypeSelection}
    click element    ${PO_CoupaAccountTypeSelection}
    Sleep    5s
    wait until page contains element    ${PO_searchFields}
    click element    ${PO_searchFields}
    input text    ${PO_searchFields}    ${fields}
    wait until page contains element    ${PO_segment-1}
    click element    ${PO_segment-1}
    wait until page contains element    ${PO_next_button}
    click element    ${PO_next_button}
    wait until page contains element    ${PO_done_button}
    click element    ${PO_done_button}
    sleep    5s

addCustOpforGetAccount
    [documentation]    To Select the Operation and Business objects in creating Custom operation of Coupa
    [arguments]    ${actionName}    ${businessObject}    ${fields}
    wait until page contains element    ${PO_searchAction}
    click element    ${PO_searchAction}
    input text    ${PO_searchAction}    ${actionName}
    click element    ${PO_getOperationRadioBtnInAddCustomOperationPage}
    click element    ${PO_next_button}
    wait until page contains element    ${PO_searchBO}
    click element    ${PO_searchBO}
    input text    ${PO_searchBO}    ${businessObject}
    wait until page contains element    ${PO_selectBO}
    click element    ${PO_selectBO}
    wait until page contains element    ${PO_next_button}
    click element    ${PO_next_button}
    wait until page contains element    ${PO_searchFields}
    click element    ${PO_searchFields}
    input text    ${PO_searchFields}    ${fields}
    wait until page contains element    ${PO_coupaidfield}
    click element    ${PO_coupaidfield}
    wait until page contains element    ${PO_next_button}
    click element    ${PO_next_button}
    wait until page contains element    ${PO_done_button}
    click element    ${PO_done_button}
    sleep    3s

addCustOpforUpdateAccount
    [documentation]    To Select the Operation and Business objects in creating Custom operation of Coupa
    [arguments]    ${actionName}    ${businessObject}    ${fields}
    wait until page contains element    ${PO_searchAction}
    click element    ${PO_searchAction}
    input text    ${PO_searchAction}    ${actionName}
    click element    ${PO_updateOperationRadioBtnInAddCustomOperationPage}
    click element    ${PO_next_button}
    wait until page contains element    ${PO_searchBO}
    click element    ${PO_searchBO}
    input text    ${PO_searchBO}    ${businessObject}
    wait until page contains element    ${PO_selectBO}
    click element    ${PO_selectBO}
    wait until page contains element    ${PO_next_button}
    click element    ${PO_next_button}
    wait until page contains element    ${PO_searchFields}
    click element    ${PO_searchFields}
    input text    ${PO_searchFields}    ${fields}
    wait until page contains element    ${PO_coupanamefield}
    click element    ${PO_coupanamefield}
    wait until page contains element    ${PO_next_button}
    click element    ${PO_next_button}
    wait until page contains element    ${PO_done_button}
    click element    ${PO_done_button}
    sleep    3s

addCustOpforDeactivateAccount
    [documentation]    To Select the Operation and Business objects in creating Custom operation of Coupa
    [arguments]    ${actionName}    ${businessObject}    ${fields}
    wait until page contains element    ${PO_searchAction}
    click element    ${PO_searchAction}
    input text    ${PO_searchAction}    ${actionName}
    click element    ${PO_updateOperationRadioBtnInAddCustomOperationPage}
    click element    ${PO_next_button}
    wait until page contains element    ${PO_searchBO}
    click element    ${PO_searchBO}
    input text    ${PO_searchBO}    ${businessObject}
    wait until page contains element    ${PO_selectBO}
    click element    ${PO_selectBO}
    wait until page contains element    ${PO_next_button}
    click element    ${PO_next_button}
    wait until page contains element    ${PO_searchFields}
    click element    ${PO_searchFields}
    input text    ${PO_searchFields}    ${fields}
    wait until page contains element    ${PO_coupaActivefield}
    click element    ${PO_coupaActivefield}
    wait until page contains element    ${PO_next_button}
    click element    ${PO_next_button}
    wait until page contains element    ${PO_done_button}
    click element    ${PO_done_button}
    sleep    3s



configureCreateAccountPipelineOfCoupa
    [documentation]    To configure the createAccunt for coupa in pipeline.
    [arguments]    ${accountTypename}    ${accountname}    ${segmentName}
    wait until page contains element    ${PO_editMapping}
    click element    ${PO_editMapping}
    Wait until page contains element    ${PO_expandCol2P1InPipeline}
    click element    ${PO_expandCol2P1InPipeline}
    Wait until page contains element    ${PO_expandCol2P1C1InPipeline}
    click element    ${PO_expandCol2P1C1InPipeline}
    Wait until page contains element    ${PO_expandCol2P1C2CInPipeline}
    click element    ${PO_expandCol2P1C2CInPipeline}
    wait until page contains element    ${PO_CoupaCreateAccountTypeName}
    double click element    ${PO_CoupaCreateAccountTypeName}
	wait until page contains element    ${PO_textFieldInPipeline}
	input text    ${PO_textFieldInPipeline}   ${accountTypename}
    wait until page contains element    ${PO_saveButtonInPipeline}
    click button    ${PO_saveButtonInPipeline}
    wait until page contains element    ${PO_CoupaCreateAccountName}
    double click element    ${PO_CoupaCreateAccountName}
	wait until page contains element    ${PO_textFieldInPipeline}
	input text    ${PO_textFieldInPipeline}   ${accountname}
    wait until page contains element    ${PO_saveButtonInPipeline}
    click button    ${PO_saveButtonInPipeline}
    wait until page contains element    ${PO_CoupaCreateAccountSegment1}
    double click element    ${PO_CoupaCreateAccountSegment1}
	wait until page contains element    ${PO_textFieldInPipeline}
	input text    ${PO_textFieldInPipeline}   ${segmentName}
    wait until page contains element    ${PO_saveButtonInPipeline}
    click button    ${PO_saveButtonInPipeline}
    Sleep  3s
    wait until page contains element    ${PO_closePipeline}
    click element    ${PO_closePipeline}

addCustomOPwithExistingAccount
    [documentation]    To add customop with existing account
    [arguments]    ${customOperationName}    ${functionalArea}
    navigateToAddCustomOperationPage
    wait until page contains element    ${PO_accountSelectionDropdownInAddCustomOperationPage}
    click element    ${PO_accountSelectionDropdownInAddCustomOperationPage}
    Sleep  2s
    click element  //*[text()='${newCommonAccountName}']
    wait until page contains element    ${PO_customActionName}
    input text    ${PO_customActionName}    ${customOperationName}
    sleep    5s
    wait until page contains element    ${PO_functionalAreaDropdown}
    click element    ${PO_functionalAreaDropdown}
    click element    xpath://div[contains(text(),'${functionalArea}')]
    wait until page contains element    ${PO_next_button}
    click element    ${PO_next_button}

configureGetAccountPipelineOfCoupa
    [documentation]    To configure the GetAccount for coupa in pipeline.
    [arguments]    ${flowserviceStepNumber}
    wait until page contains element    xpath://step-ui[${flowserviceStepNumber}]//span[@title='Edit Mapping']
    click element    xpath://step-ui[${flowserviceStepNumber}]//span[@title='Edit Mapping']
     Wait until page contains element    ${PO_expandCol2P1InPipeline}
    click element    ${PO_expandCol2P1InPipeline}
    drag and drop    ${PO_stringLabelInObjectToStringCol1ServicePipeline}    ${PO_accountIDlabelInCol1ofPipeline}
#    wait until page contains element    ${PO_saveFlowService}
#    click button    ${PO_saveFlowService}
    Sleep  5s
    wait until page contains element    ${PO_closePipeline}
    click element    ${PO_closePipeline}

configureUpdateAccountPipelineOfCoupa
    [documentation]    To configure the createAccunt for coupa in pipeline.
    [arguments]    ${accountname}    ${flowserviceStepNumber}
    wait until page contains element    xpath://step-ui[${flowserviceStepNumber}]//span[@title='Edit Mapping']
    click element    xpath://step-ui[${flowserviceStepNumber}]//span[@title='Edit Mapping']
    Wait until page contains element    ${PO_expandCol2P1InPipeline}
    click element    ${PO_expandCol2P1InPipeline}
    drag and drop    ${PO_stringLabelInObjectToStringCol1ServicePipeline}    ${PO_accountIDlabelInCol1ofPipeline}
    Wait until page contains element    ${PO_expandCol2P1C2InPipeline}
    click element    ${PO_expandCol2P1C2InPipeline}
    wait until page contains element    ${PO_nameLabelInPipeline}
    double click element    ${PO_nameLabelInPipeline}

	wait until page contains element    ${PO_textFieldInPipeline}
	input text    ${PO_textFieldInPipeline}   ${accountname}
	wait until page contains element    ${PO_saveButtonInPipeline}
    click button    ${PO_saveButtonInPipeline}
    Sleep  3s
    wait until page contains element    ${PO_closePipeline}
    click element    ${PO_closePipeline}

configureDeactivateAccounPipelineOfCoupa
    [documentation]    To configure the createAccunt for coupa in pipeline.
    [arguments]    ${flowserviceStepNumber}
    wait until page contains element    xpath://step-ui[${flowserviceStepNumber}]//span[@title='Edit Mapping']
    click element    xpath://step-ui[${flowserviceStepNumber}]//span[@title='Edit Mapping']
    Wait until page contains element    ${PO_expandCol2P1InPipeline}
    click element    ${PO_expandCol2P1InPipeline}
    drag and drop    ${PO_stringLabelInObjectToStringCol1ServicePipeline}    ${PO_accountIDlabelInCol1ofPipeline}
    Wait until page contains element    ${PO_expandCol2P1C2InPipeline}
    click element    ${PO_expandCol2P1C2InPipeline}
    wait until page contains element    ${PO_CoupaActiveFieldInPipeLine}
    double click element    ${PO_CoupaActiveFieldInPipeLine}
    Wait until page contains element    ${PO_booleanSelectionDropdownInPipeline}
    click element    ${PO_booleanSelectionDropdownInPipeline}
    click element    ${PO_BooleanValuefalseSelectionFromDropDown}
    wait until page contains element    ${PO_saveButtonInPipeline}
    click button    ${PO_saveButtonInPipeline}
    Sleep  3s
    wait until page contains element    ${PO_closePipeline}
    click element    ${PO_closePipeline}



addAccount_Coupa
    [documentation]    To create an account for Coupa V26
    wait until page contains element    ${PO_connectionAccountName}
    Press Keys  ${PO_connectionAccountName}  CTRL+a+DELETE
    input text    ${PO_connectionAccountName}    ${newCommonAccountName}
    ${coupaServerURL}    getDataFromDB    Con9.serverURL
    ${coupaAPIKey}    getDataFromDB    Con9.apiKey
    Press Keys  ${PO_serverUrl}  CTRL+a+DELETE
    input text    ${PO_serverUrl}    ${coupaServerURL}
    input text    ${PO_coupaAPIKey}    ${coupaAPIKey}
    wait until element is enabled    ${PO_addButton}
    click button    ${PO_addButton}
    wait until page contains    successfully