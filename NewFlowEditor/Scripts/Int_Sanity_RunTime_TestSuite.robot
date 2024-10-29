***Settings***
Resource    ../Conf/common_settings.robot
Resource    ../Keywords/default_keywords.robot
Resource    ../Keywords/connectors_keywords.robot
Suite setup    run keywords  Set selenium timeout    120s  AND  loadDB
#Suite teardown    run keywords    cleanupFlowServicesandAccounts    AND    close all browsers

***Test case***

RunningExisting_SF_Flowservice_NFE
    [Documentation]    This testcase runs existing SF flowservice and veryfy it.
    loginWmio    ${env}
    selectProject    ${projectToSelectForExistFlows}
    Sleep  2s
    click element    ${PO_ClickFlowservicebutton}
    openExistingFloserviceAndrun    SF_queryAccounts


RunningExisting_Marketo_Flowservice_NFE
    [Documentation]    This testcase runs existing Marketo flowservice and veryfy it.
    Reload Page
    openExistingFloserviceAndrun    Marketo_queryLead


RunningExisting_SAP_C4C_Flowservice_NFE
    [Documentation]    This testcase runs existing Marketo flowservice and veryfy it.
    Reload Page
    openExistingFloserviceAndrun    SAP_C4C_ReadAccount

RunningExisting_AmazonDB_Flowservice_NFE
    [Documentation]    This testcase runs existing Marketo flowservice and veryfy it.
    Reload Page
    openExistingFloserviceAndrun    AmazonDB

RunningExisting_workday_Flowservice_NFE
    [Documentation]    This testcase runs existing Marketo flowservice and veryfy it.
    Reload Page
    openExistingFloserviceAndrun    workday

RunningExisting_SAP_C4C_Create_and_Query_and_Patch_Flowservice_NFE
    [Documentation]    This testcase runs existing Marketo flowservice and veryfy it.
    Reload Page
    openExistingFloserviceAndrun    SAP_C4C_Create_and_Query_and_Patch

RunningExisting_GoogleDrive_ListFiles_Flowservice_NFE
    [Documentation]    This testcase runs existing Marketo flowservice and veryfy it.
    Reload Page
    openExistingFloserviceAndrun    GoogleDrive_ListFiles

RunningExisting_Shopify_listCustomers_Flowservice_NFE
    [Documentation]    This testcase runs existing Marketo flowservice and veryfy it.
    Reload Page
    openExistingFloserviceAndrun    Shopify_listCustomers

RunningExisting_MSAzureDL_listFileSystems_Flowservice_NFE
    [Documentation]    This testcase runs existing Marketo flowservice and veryfy it.
    Reload Page
    openExistingFloserviceAndrun    MSAzureDL_listFileSystems

RunningExisting_AWSS3_ListAllBuckets_Flowservice_NFE
    [Documentation]    This testcase runs existing Marketo flowservice and veryfy it.
    Reload Page
    openExistingFloserviceAndrun    AWSS3_ListAllBuckets

RunningExisting_NetSuite_ReadAccount_Flowservice_NFE
    [Documentation]    This testcase runs existing Marketo flowservice and veryfy it.
    Reload Page
    openExistingFloserviceAndrun    NetSuite_ReadAccount

RunningExisting_CoupaV28_QueryAccts_Flowservice_NFE
    [Documentation]    This testcase runs existing Marketo flowservice and veryfy it.
    Reload Page
    openExistingFloserviceAndrun    CoupaV28_QueryAccts

RunningExisting_GooglePubSub_ListTopics_Flowservice_NFE
    [Documentation]    This testcase runs existing Marketo flowservice and veryfy it.
    Reload Page
    openExistingFloserviceAndrun    GooglePubSub_ListTopics
    logoutWmio

Cumulocity_ConnectionEnableDisableTestCase
    [Documentation]    This testcase will enable and desable the existing  SF connection.
    loginWmio    ${env}
    selectProject    ${projectToSelectED}
    selectMainTab    Connectors
    enableORdisableAccounts    ${newCommonAccountName}  Cumulocity

Salesforce_ConnectionEnableDisableTestCase
    [Documentation]    This testcase will enable and desable the existing  SF connection.
    Reload Page
    enableORdisableAccounts    ${newCommonAccountName}  Salesforce

Atlassian_Jira_ConnectionEnableDisableTestCase
    [Documentation]    This testcase will enable and desable the existing  SF connection.
    Reload Page
    enableORdisableAccounts    ${newCommonAccountName}  Atlassian Jira

Marketo_ConnectionEnableDisableTestCase
    [Documentation]    This testcase will enable and desable the existing  SF connection.
    Reload Page
    enableORdisableAccounts    ${newCommonAccountName}  Marketo

SAP_(C4C)ODatav2.0_ConnectionEnableDisableTestCase
    [Documentation]    This testcase will enable and desable the existing  SF connection.
    Reload Page
    enableORdisableAccounts    ${newCommonAccountName}  SAP Cloud for Customer(C4C) OData v2.0

Acuity_Scheduling_ConnectionEnableDisableTestCase
    [Documentation]    This testcase will enable and desable the existing  SF connection.
    Reload Page
    enableORdisableAccounts    ${newCommonAccountName}  Acuity Scheduling

Amazon_DynamoDB_ConnectionEnableDisableTestCase
    [Documentation]    This testcase will enable and desable the existing  SF connection.
    Reload Page
    enableORdisableAccounts    ${newCommonAccountName}  Amazon DynamoDB
    logoutWmio


