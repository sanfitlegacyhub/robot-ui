***Settings***
Resource    ../Conf/common_settings.robot
Resource    ../Keywords/default_keywords.robot
Resource    ../Keywords/connectors_keywords.robot
Suite setup    run keywords  Set selenium timeout    120s  AND  loadDB
Suite teardown    run keywords    cleanupFlowServicesandAccounts    AND    close all browsers

***Test case***

Create_Account_SalesforceCRM_NFE
    [Documentation]    This testcase creates a new FlowService for Salesforce CRM then adds an account, executes and deletes the created FlowService
    loginWmio    ${env}
    selectProject    ${projectToSelect}
    CreateNewFlowService
    SelectConnectorWithVersion    Salesforce     salesforce_v48
    SelectAction    queryAccounts
    credentialAccountConfiguration
    addAccount_Salesforce
    editFlowServiceNameAndSave    SalesforceCRM_Auto
    runFlowService
    goBacktoFlowServices
    deleteFlowService    SalesforceCRM_Auto
    selectMainTab    Connectors
    deleteAccountsFromConnectorsTab    Salesforce
    logoutWmio