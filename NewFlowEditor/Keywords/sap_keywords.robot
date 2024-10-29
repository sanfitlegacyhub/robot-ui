***Settings***
Resource    ../Conf/common_settings.robot
#Resource    ../../PageObjects/default_po.robot

***keywords***

addaccount_sapc4c
    [documentation]    To create an account for SAP C4C connector
    wait until page contains element    ${PO_connectionAccountName}
    Press Keys  ${PO_connectionAccountName}  CTRL+a+DELETE
    input text    ${PO_connectionAccountName}    ${newCommonAccountName}
    ${sapServerURL}    getDataFromDB    Con4.serverURL
    ${sapuid}    getDataFromDB    Con4.username
    ${sappwd}    getDataFromDB    Con4.password
    Press Keys  ${PO_serverUrl}  CTRL+a+DELETE
    input text    ${PO_serverUrl}    ${sapServerURL}
    input text    ${PO_addAccountUserName}    ${sapuid}
    input text    ${PO_addAccountPassword}    ${sappwd}
    wait until element is enabled    ${PO_addButton}
    click button    ${PO_addButton}
    wait until page contains    successfully

configurecreateEmail_v2SAPC4C
    [documentation]   This keyword configures createEmail_v2 predefined operation
	[Arguments]    ${input_Email}
    wait until page contains element    ${PO_editMapping}
    click element    ${PO_editMapping}
    Wait until page contains element    ${PO_expandCol2P1InPipeline}
    click element    ${PO_expandCol2P1InPipeline}
    wait until page contains element    ${PO_expandCol2P1C1InPipeline}
    click element    ${PO_expandCol2P1C1InPipeline}
    wait until page contains element    ${PO_SAP_EmailSubjectLabelInPipeline}
    double click element    ${PO_SAP_EmailSubjectLabelInPipeline}
	wait until page contains element    ${PO_textFieldInPipeline}
	input text    ${PO_textFieldInPipeline}   ${input_Email}
    wait until page contains element    ${PO_saveButtonInPipeline}
    click button    ${PO_saveButtonInPipeline}
    wait until page contains element    ${PO_closePipeline}
    click element    ${PO_closePipeline}
    sleep    3s

configurereadEmailByIds_v2SAPC4C
    [documentation]   this keyword configures readEmailByIds_v2 predefined operation
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
    drag and drop    ${PO_EmailObjectIDlabelInCol1ofPipeline}    ${PO_EmailObjectIDlabelInCol2ofPipeline}
    wait until page contains element    ${PO_closePipeline}
    click element    ${PO_closePipeline}

configurepatchEmail_v2SAPC4C
    [documentation]   This keyword configures patchEmail_v2 predefined operation
    [Arguments]    ${flowserviceStepNumber}    ${PriorityCode}
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
    drag and drop    ${PO_EmailObjectIDlabelInCol1ofPipeline}    ${PO_EmailObjectIDlabelInCol2c1patchofPipeline}
    wait until page contains element    ${PO_SAP_PriorityCodeLabelInPipeline}
    double click element    ${PO_SAP_PriorityCodeLabelInPipeline}
	wait until page contains element    ${PO_dropdownInPipeline}
	input text    ${PO_dropdownInPipeline}    ${PriorityCode}
    wait until page contains element    ${PO_saveButtonInPipeline}
    click button    ${PO_saveButtonInPipeline}
    wait until page contains element    ${PO_closePipeline}
    click element    ${PO_closePipeline}

configuredeleteEmail_v2SAPC4C
     [documentation]   this keyword configures deleteEmail_v2 predefined operation
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
     drag and drop    ${PO_EmailObjectIDlabelInCol1ofPipeline}    ${PO_EmailObjectIDlabelInCol2c1deleteofPipeline}


