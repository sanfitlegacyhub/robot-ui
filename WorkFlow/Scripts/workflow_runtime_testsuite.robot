***Settings***
Library    DataDriver    ../TestData/int_wmiocs_sanity.csv    dialect=excel
Library    RequestsLibrary
Test Template    read_csv


***Test case***
Workflow ${WorkflowName} has status ${Webhook URL}

***Keywords***
read_csv
    [Arguments]    ${WorkflowName}    ${Webhook URL}    ${Execute Status}    ${Release}
    [documentation]    This keyword reads a csv and makes a get call to the url from the csv for which the execution status is true
    run keyword if    '${Execute Status}'=='TRUE'    run keywords    Log    ${WorkflowName} has status ${Execute Status} hence executing    AND    callWorkflowWebhook    ${WorkflowName}    ${Webhook URL}


callWorkflowWebhook
    [Arguments]    ${WorkflowName}    ${Webhook URL}
    [documentation]    This keyword makes a get call to the url provided as argument. Accepts webhook url and workflow name as arguments
    Create Session    webhook   ${Webhook URL}
    ${resp}=  Get Request    webhook    /
    Log  ${resp.text}
    Should be equal as strings    ${resp.status_code}    200    msg=${WorkflowName} call failed.
