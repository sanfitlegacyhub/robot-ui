***Settings***
Resource    ../Conf/common_settings.robot

***keywords***

addAccount_WorkdayV34
    [documentation]    To create an account for Workday V34
    wait until page contains element    ${PO_connectionAccountName}
    Press Keys  ${PO_connectionAccountName}  CTRL+a+DELETE
    input text    ${PO_connectionAccountName}    ${newCommonAccountName}
    ${workdayserverurl}    getDataFromDB    Con14.serverURL
    ${workdayusername}    getDataFromDB    Con14.username
    ${workdaypassword}    getDataFromDB    Con14.password
    Press Keys  ${PO_serverUrl}  CTRL+a+DELETE
    input text    ${PO_serverUrl}    ${workdayserverurl}
    input text  ${PO_addAccountUserName}  ${workdayusername}
    input text  ${PO_addAccountPassword}  ${workdaypassword}
    click element   ${PO_addButton}
    wait until page contains    successfully

addCustomOperation_Account_WorkdayV34
    [documentation]    To add Account in creating custom operation of Workday v34
    [arguments]    ${customOperationName}    ${functionalArea}
    wait until page contains element    ${PO_connectorDropdown}
    click element    ${PO_connectorDropdown}
    wait until page contains element    ${PO_addCustomOperation}
    click element    ${PO_addCustomOperation}
    wait until page contains element    ${PO_addNewAccountIcon}
    click element    ${PO_addNewAccountIcon}
    addAccount_WorkdayV34
    wait until page contains element    ${PO_customActionName}
    input text    ${PO_customActionName}    ${customOperationName}
    sleep    5s
    wait until page contains element    ${PO_functionalAreaDropdown}
    click element    ${PO_functionalAreaDropdown}
    click element    xpath://div[contains(text(),'${functionalArea}')]
    wait until page contains element    ${PO_next_button}
    click element    ${PO_next_button}

addCustOpforputCompanyInsiderType
    [documentation]    To Select the Operation and Business objects in creating Custom operation of workday v34
    [arguments]    ${actionName}
    wait until page contains element    ${PO_searchAction}
    click element    ${PO_searchAction}
    input text    ${PO_searchAction}    ${actionName}
    click element    ${PO_putcompanyinsidertypeactionRadioBtnInAddCustomOperationPage}
    click element    ${PO_next_button}
    wait until page contains element    ${PO_done_button}
    click element    ${PO_done_button}
    sleep    5s

addCustOpforgetCompanyInsiderType
    [documentation]    To Select the Operation and Business objects in creating Custom operation of workday v34
    [arguments]    ${actionName}
    wait until page contains element    ${PO_searchAction}
    click element    ${PO_searchAction}
    input text    ${PO_searchAction}    ${actionName}
    click element    ${PO_getcompanyinsidertypeactionRadioBtnInAddCustomOperationPage}
    click element    ${PO_next_button}
    wait until page contains element    ${PO_done_button}
    click element    ${PO_done_button}
    sleep    5s


configurePutCompanyInsiderTypePipelineOfWorkdayv34
    [documentation]    To configure the createAccunt for workdayv34 in pipeline.
    [arguments]    ${CompanyInsiderTypeID}    ${CompanyInsiderTypeName}    ${CompanyInsiderTypeDescription}    ${CompanyInsiderTypeInactiveValue}
    wait until page contains element    ${PO_editMapping}
    click element    ${PO_editMapping}
    Wait until page contains element    ${PO_expandCol2P1InPipeline}
    click element    ${PO_expandCol2P1InPipeline}
    Wait until page contains element    ${PO_expandCol2P1C2InPipeline}
    click element    ${PO_expandCol2P1C2InPipeline}
    Wait until page contains element    ${PO_expandCol2P1C2C1InPipeline}
    click element    ${PO_expandCol2P1C2C1InPipeline}
    Wait until page contains element    ${PO_expandCol2P1C2C1C2InPipeline}
    click element    ${PO_expandCol2P1C2C1C2InPipeline}
    wait until page contains element    ${PO_CompanyInsiderTypeIDinPipeline}
    double click element    ${PO_CompanyInsiderTypeIDinPipeline}
	wait until page contains element    ${PO_textFieldInPipeline}
	input text    ${PO_textFieldInPipeline}   ${CompanyInsiderTypeID}
    wait until page contains element    ${PO_saveButtonInPipeline}
    click button    ${PO_saveButtonInPipeline}
    wait until page contains element    ${PO_CompanyInsiderTypeNameInPipeline}
    double click element    ${PO_CompanyInsiderTypeNameInPipeline}
	wait until page contains element    ${PO_textFieldInPipeline}
	input text    ${PO_textFieldInPipeline}   ${CompanyInsiderTypeName}
    wait until page contains element    ${PO_saveButtonInPipeline}
    click button    ${PO_saveButtonInPipeline}
    wait until page contains element    ${PO_CompanyInsiderTypeDescriptionInPipeline}
    double click element    ${PO_CompanyInsiderTypeDescriptionInPipeline}
	wait until page contains element    ${PO_textFieldInPipeline}
	input text    ${PO_textFieldInPipeline}   ${CompanyInsiderTypeDescription}
    wait until page contains element    ${PO_saveButtonInPipeline}
    click button    ${PO_saveButtonInPipeline}
    wait until page contains element    ${PO_CompanyInsiderTypeInactiveInPipeline}
    double click element    ${PO_CompanyInsiderTypeInactiveInPipeline}
	wait until page contains element    ${PO_textFieldInPipeline}
	input text    ${PO_textFieldInPipeline}   ${CompanyInsiderTypeInactiveValue}
    wait until page contains element    ${PO_saveButtonInPipeline}
    click button    ${PO_saveButtonInPipeline}
    Sleep  3s
    wait until page contains element    ${PO_closePipeline}
    click element    ${PO_closePipeline}

configureGetCompanyInsiderTypePipelineOfWorkdayv34
    [documentation]    To configure the GetCompanyInsiderType for workdayv34 in pipeline.
    [arguments]    ${flowserviceStepNumber}
    wait until page contains element    xpath://step-ui/div/div/step-ui[${flowserviceStepNumber}]//span[@title='Edit Mapping']
    click element    xpath://step-ui/div/div/step-ui[${flowserviceStepNumber}]//span[@title='Edit Mapping']
    Wait until page contains element    ${PO_expandCol2P1InPipeline}
    click element    ${PO_expandCol2P1InPipeline}
    Wait until page contains element    ${PO_expandCol2P1C2InPipeline}
    click element    ${PO_expandCol2P1C2InPipeline}
    Wait until page contains element    ${PO_expandCol2P1C2C1InPipeline}
    click element    ${PO_expandCol2P1C2C1InPipeline}
    Wait until page contains element    ${PO_expandCol2P1C2C1C1InPipeline}
    click element    ${PO_expandCol2P1C2C1C1InPipeline}
    Wait until page contains element    ${PO_expandCol2P1C2C1C1C1InPipeline}
    click element    ${PO_expandCol2P1C2C1C1C1InPipeline}
    Wait until page contains element    ${PO_expandCol2P1C2C1C1C1C1InPipeline}
    click element    ${PO_expandCol2P1C2C1C1C1C1InPipeline}
    Wait until page contains element    ${PO_expandCol1P2InPipeline}
    click element    ${PO_expandCol1P2InPipeline}
    Wait until page contains element    ${PO_expandCol1P2C1WorkdayInPipeline}
    click element    ${PO_expandCol1P2C1WorkdayInPipeline}
    Wait until page contains element    ${PO_expandCol1P2C1C1WorkdayInPipeline}
    click element    ${PO_expandCol1P2C1C1WorkdayInPipeline}
    Wait until page contains element    ${PO_expandCol1P2C1C1C1WorkdayInPipeline}
    click element    ${PO_expandCol1P2C1C1C1WorkdayInPipeline}
    Wait until page contains element    ${PO_expandCol1P2C1C1C1C1WorkdayInPipeline}
    click element    ${PO_expandCol1P2C1C1C1C1WorkdayInPipeline}
    Sleep  3s
    drag and drop    ${PO_expandCol1wdtypeWorkdayInPipeline}    ${PO_expandCol2wdtypeWorkdayInPipeline}
    drag and drop    ${PO_expandCol1bodyWorkdayInPipeline}    ${PO_expandCol2bodyWorkdayInPipeline}
    drag and drop    ${PO_expandCol1doctypeWorkdayInPipeline}    ${PO_expandCol2doctypeWorkdayInPipeline}
    Sleep  3s
    wait until page contains element    ${PO_closePipeline}
    click element    ${PO_closePipeline}



configurePutCompanyInsiderTypeForUpdatePipelineOfWorkdayv34
    [documentation]    To configure the updateCompanyInsiderType for workdayv34 in pipeline.
    [arguments]    ${flowserviceStepNumber}    ${CompanyInsiderTypeName}    ${CompanyInsiderTypeDescription}
    wait until page contains element    xpath://step-ui/div/div/step-ui[${flowserviceStepNumber}]//span[@title='Edit Mapping']
    click element    xpath://step-ui/div/div/step-ui[${flowserviceStepNumber}]//span[@title='Edit Mapping']
    Wait until page contains element    ${PO_expandCol2P1InPipeline}
    click element    ${PO_expandCol2P1InPipeline}
    Wait until page contains element    ${PO_expandCol2P1C2InPipeline}
    click element    ${PO_expandCol2P1C2InPipeline}
    Wait until page contains element    ${PO_expandCol2P1C2C1InPipeline}
    click element    ${PO_expandCol2P1C2C1InPipeline}
    Wait until page contains element    ${PO_expandCol2P1C2C1C1wInPipeline}
    click element    ${PO_expandCol2P1C2C1C1wInPipeline}
    Wait until page contains element    ${PO_expandCol2P1C2C1C1C1wInPipeline}
    click element    ${PO_expandCol2P1C2C1C1C1wInPipeline}
    Wait until page contains element    ${PO_expandCol1P2InPipeline}
    click element    ${PO_expandCol1P2InPipeline}
    Wait until page contains element    ${PO_expandCol1P2C1WorkdayInPipeline}
    click element    ${PO_expandCol1P2C1WorkdayInPipeline}
    Wait until page contains element    ${PO_expandCol1P2C1C1WorkdayInPipeline}
    click element    ${PO_expandCol1P2C1C1WorkdayInPipeline}
    Wait until page contains element    ${PO_expandCol1P2C1C1C1WorkdayInPipeline}
    click element    ${PO_expandCol1P2C1C1C1WorkdayInPipeline}
    Wait until page contains element    ${PO_expandCol1P2C1C1C1C1WorkdayInPipeline}
    click element    ${PO_expandCol1P2C1C1C1C1WorkdayInPipeline}
    Sleep  3s
    drag and drop    ${PO_expandCol1wdtypeWorkdayInPipeline}    ${PO_expandCol2wdtypeWorkdayInPipeline}
    drag and drop    ${PO_expandCol1bodyWorkdayInPipeline}    ${PO_expandCol2bodyWorkdayInPipeline}
    drag and drop    ${PO_expandCol1doctypeWorkdayInPipeline}    ${PO_expandCol2doctypeWorkdayInPipeline}
    Sleep  3s
    Wait until page contains element    ${PO_expandCol2P1C2C1C2InPipeline}
    click element    ${PO_expandCol2P1C2C1C2InPipeline}
    wait until page contains element    ${PO_CompanyInsiderTypeNameInPipeline}
    double click element    ${PO_CompanyInsiderTypeNameInPipeline}
	wait until page contains element    ${PO_textFieldInPipeline}
	input text    ${PO_textFieldInPipeline}   ${CompanyInsiderTypeName}
    wait until page contains element    ${PO_saveButtonInPipeline}
    click button    ${PO_saveButtonInPipeline}
    wait until page contains element    ${PO_CompanyInsiderTypeDescriptionInPipeline}
    double click element    ${PO_CompanyInsiderTypeDescriptionInPipeline}
	wait until page contains element    ${PO_textFieldInPipeline}
	input text    ${PO_textFieldInPipeline}   ${CompanyInsiderTypeDescription}
    wait until page contains element    ${PO_saveButtonInPipeline}
    click button    ${PO_saveButtonInPipeline}
    Sleep  3s
    wait until page contains element    ${PO_closePipeline}
    click element    ${PO_closePipeline}

configureGetCompanyInsiderTypeForUpdatedPipelineOfWorkdayv34
    [documentation]    To configure the get-updated-CompanyInsiderType for workdayv34 in pipeline.
    [arguments]    ${flowserviceStepNumber}
    wait until page contains element    xpath://step-ui/div/div/step-ui[${flowserviceStepNumber}]//span[@title='Edit Mapping']
    click element    xpath://step-ui/div/div/step-ui[${flowserviceStepNumber}]//span[@title='Edit Mapping']
    Wait until page contains element    ${PO_expandCol2P1InPipeline}
    click element    ${PO_expandCol2P1InPipeline}
    Wait until page contains element    ${PO_expandCol2P1C2InPipeline}
    click element    ${PO_expandCol2P1C2InPipeline}
    Wait until page contains element    ${PO_expandCol2P1C2C1InPipeline}
    click element    ${PO_expandCol2P1C2C1InPipeline}
    Wait until page contains element    ${PO_expandCol2P1C2C1C1InPipeline}
    click element    ${PO_expandCol2P1C2C1C1InPipeline}
    Wait until page contains element    ${PO_expandCol2P1C2C1C1C1InPipeline}
    click element    ${PO_expandCol2P1C2C1C1C1InPipeline}
    Wait until page contains element    ${PO_expandCol2P1C2C1C1C1C1InPipeline}
    click element    ${PO_expandCol2P1C2C1C1C1C1InPipeline}
    Wait until page contains element    ${PO_expandCol1P6InPipeline}
    click element    ${PO_expandCol1P6InPipeline}
    Wait until page contains element    ${PO_expandCol1P6C1wInPipeline}
    click element    ${PO_expandCol1P6C1wInPipeline}
    Wait until page contains element    ${PO_expandCol1P6C1C1InPipeline}
    click element    ${PO_expandCol1P6C1C1InPipeline}
    Wait until page contains element    ${PO_expandCol1P6C1C1C1InPipeline}
    click element    ${PO_expandCol1P6C1C1C1InPipeline}
    Wait until page contains element    ${PO_expandCol1P6C1C1C1C1InPipeline}
    click element    ${PO_expandCol1P6C1C1C1C1InPipeline}
    Sleep  3s
    drag and drop    ${PO_expandCol1wdtypeWorkdayInPipeline}    ${PO_expandCol2wdtypeWorkdayInPipeline}
    drag and drop    ${PO_expandCol1bodyWorkdayInPipeline}    ${PO_expandCol2bodyWorkdayInPipeline}
    drag and drop    ${PO_expandCol1doctypeWorkdayInPipeline}    ${PO_expandCol2doctypeWorkdayInPipeline}
    Sleep  3s
    wait until page contains element    ${PO_closePipeline}
    click element    ${PO_closePipeline}
