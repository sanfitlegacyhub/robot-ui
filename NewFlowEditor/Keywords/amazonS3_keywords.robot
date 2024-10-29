***Settings***
Resource    ../Conf/common_settings.robot
#Resource    ../../PageObjects/default_po.robot

***keywords***

addaccount_amazonS3
    [documentation]    To create an account for AmazonS3 connector
    wait until page contains element    ${PO_connectionAccountName}
    Press Keys  ${PO_connectionAccountName}  CTRL+a+DELETE
    input text    ${PO_connectionAccountName}    ${newCommonAccountName}
    ${S3accessKey}    getDataFromDB    Con7.accessKey
    ${S3secretKey}    getDataFromDB    Con7.secretKey
    input text    ${PO_accessKey}    ${S3accessKey}
    input text    ${PO_secretKey}    ${S3secretKey}
    wait until element is enabled    ${PO_addButton}
    click button    ${PO_addButton}
    wait until page contains    successfully

configureCreateBucketInFlowservice
    [documentation]   this keyword configures createBucket predefined operation
	[Arguments]    ${input_accountname}
    wait until page contains element    ${PO_editMapping}
    click element    ${PO_editMapping}
    Wait until page contains element    ${PO_expandCol2P1InPipeline}
    click element    ${PO_expandCol2P1InPipeline}
    wait until page contains element    ${PO_bucketNameLabelInCreateBucketPipeline}
    double click element    ${PO_bucketNameLabelInCreateBucketPipeline}
	wait until page contains element    ${PO_textFieldInPipeline}
	input text    ${PO_textFieldInPipeline}   ${input_accountname}
    wait until page contains element    ${PO_saveButtonInPipeline}
    click button    ${PO_saveButtonInPipeline}
    Sleep  3s
    wait until page contains element    ${PO_closePipeline}
    click element    ${PO_closePipeline}

configureGetBucketByNameInFlowserviceStep
    [documentation]   this keyword configures getBucket predefined operation
    [Arguments]    ${flowserviceStepNumber}
    wait until page contains element    xpath://step-ui/div/div/step-ui[${flowserviceStepNumber}]//span[@title='Edit Mapping']
    click element    xpath://step-ui/div/div/step-ui[${flowserviceStepNumber}]//span[@title='Edit Mapping']
    Wait until page contains element    ${PO_expandCol2P1InPipeline}
    click element    ${PO_expandCol2P1InPipeline}
    Wait until page contains element    ${PO_expandCol1P1InPipeline}
    click element    ${PO_expandCol1P1InPipeline}
    drag and drop    ${PO_bucketNameLabelInCol1ofGetBucketPipeline}    ${PO_bucketNameLabelInCol2ofGetBucketPipeline}
    wait until page contains element    ${PO_closePipeline}
    click element    ${PO_closePipeline}

configurePutObjectInFlowserviceStep
    [documentation]   this keyword configures pipeline for putObject predefined operation in flowservice step
    [Arguments]    ${flowserviceStepNumber}   ${objName}    ${contentType}
    wait until page contains element    xpath://step-ui/div/div/step-ui[${flowserviceStepNumber}]//span[@title='Edit Mapping']
    click element    xpath://step-ui/div/div/step-ui[${flowserviceStepNumber}]//span[@title='Edit Mapping']
    Wait until page contains element    ${PO_expandCol2P1InPipeline}
    click element    ${PO_expandCol2P1InPipeline}
    Wait until page contains element    ${PO_expandCol1P4InPipeline}
    click element    ${PO_expandCol1P4InPipeline}
    drag and drop    ${PO_nameLabelInCol1ofPutObjectPipeline}    ${PO_bucketNameLabelInCol2ofPutObjectPipeline}
    Sleep   2s
    drag and drop    ${PO_inputStreamLabelInCol1ofPutObjectPipeline}    ${PO_streamLabelInCol2ofPutObjectPipeline}
    wait until page contains element    ${PO_objectNameLabelInCol2ofPutObjectPipeline}
    double click element    ${PO_objectNameLabelInCol2ofPutObjectPipeline}
    wait until page contains element    ${PO_textFieldInPipeline}
    input text    ${PO_textFieldInPipeline}   ${objName}
    wait until page contains element    ${PO_saveButtonInPipeline}
    click button    ${PO_saveButtonInPipeline}
    wait until page contains element    ${PO_objectNameLabelInCol2ofPutObjectPipeline}
    double click element    ${PO_contentTypeLabelInCol2ofPutObjectPipeline}
    wait until page contains element    ${PO_amazonS3_contentTypeFieldInPipeline}
    input text    ${PO_amazonS3_contentTypeFieldInPipeline}   ${contentType}
    wait until page contains element    ${PO_saveButtonInPipeline}
    click button    ${PO_saveButtonInPipeline}
    wait until page contains element    ${PO_closePipeline}
    click element    ${PO_closePipeline}


configureGetObjectInFlowserviceStep
    [documentation]   this keyword configures pipeline for getObject predefined operation in flowservice step
    [Arguments]    ${flowserviceStepNumber}
    wait until page contains element    xpath://step-ui/div/div/step-ui[${flowserviceStepNumber}]//span[@title='Edit Mapping']
    click element    xpath://step-ui/div/div/step-ui[${flowserviceStepNumber}]//span[@title='Edit Mapping']
    Wait until page contains element    ${PO_expandCol2P1InPipeline}
    click element    ${PO_expandCol2P1InPipeline}
    Wait until page contains element    ${PO_expandCol1P7InPipeline}
    click element    ${PO_expandCol1P7InPipeline}
    drag and drop    ${PO_bucketNameLabelInCol1ofGetObjectPipeline}    ${PO_bucketNameLabelInCol2ofGetObjectPipeline}
    Sleep   2s
    drag and drop    ${PO_objectNameLabelInCol1ofGetObjectPipeline}    ${PO_objectNameLabelInCol2ofGetObjectPipeline}
    wait until page contains element    ${PO_closePipeline}
    click element    ${PO_closePipeline}

configureDeleteObjectInFlowserviceStep
    [documentation]   this keyword configures pipeline for deleteObject predefined operation in flowservice step
    [Arguments]    ${flowserviceStepNumber}
    wait until page contains element    xpath://step-ui/div/div/step-ui[${flowserviceStepNumber}]//span[@title='Edit Mapping']
    click element    xpath://step-ui/div/div/step-ui[${flowserviceStepNumber}]//span[@title='Edit Mapping']
    Wait until page contains element    ${PO_expandCol2P1InPipeline}
    click element    ${PO_expandCol2P1InPipeline}
    Wait until page contains element    ${PO_expandCol1P7InPipeline}
    click element    ${PO_expandCol1P7InPipeline}
    drag and drop    ${PO_bucketNameLabelInCol1ofDeleteObjectPipeline}    ${PO_bucketNameLabelInCol2ofDeleteObjectPipeline}
    Sleep   2s
    drag and drop    ${PO_objectNameLabelInCol1ofDeleteObjectPipeline}    ${PO_objectNameLabelInCol2ofDeleteObjectPipeline}
    wait until page contains element    ${PO_closePipeline}
    click element    ${PO_closePipeline}

configureDeleteBucketInFlowserviceStep
    [documentation]   this keyword configures pipeline for deleteBucket predefined operation in flowservice step
    [Arguments]    ${flowserviceStepNumber}
    wait until page contains element    xpath://step-ui/div/div/step-ui[${flowserviceStepNumber}]//span[@title='Edit Mapping']
    click element    xpath://step-ui/div/div/step-ui[${flowserviceStepNumber}]//span[@title='Edit Mapping']
    Wait until page contains element    ${PO_expandCol2P1InPipeline}
    click element    ${PO_expandCol2P1InPipeline}
    Wait until page contains element    ${PO_expandCol1P4InPipeline}
    click element    ${PO_expandCol1P4InPipeline}
    drag and drop    ${PO_nameLabelInCol1ofDeleteBucketPipeline}    ${PO_bucketNameLabelInCol2ofDeleteBucketPipeline}
    wait until page contains element    ${PO_closePipeline}
    click element    ${PO_closePipeline}