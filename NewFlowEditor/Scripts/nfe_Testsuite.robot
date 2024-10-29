***Settings***
Resource    ../Conf/common_settings.robot
Resource    ../Keywords/default_keywords.robot
Resource    ../Keywords/connectors_keywords.robot
Suite setup    Set selenium timeout    90s
Suite teardown    run keywords    cleanupFlowServicesandAccounts    AND    close all browsers



***Test case***

#TestLogin
#    Log    Test
#    loginWmio    ${env}
#    logoutWmio
#    Close all browsers

Create_Account_Marketo_NFE
    [Documentation]    This testcase creates a new FlowService for Marketo then adds an account, executes and deletes the created FlowService
    loginWmio    ${env}
    selectProject    ${projectToSelect}
    CreateNewFlowService
    SelectConnector    Marketo
    SelectAction    getChannels
    DefaultAccountConfiguration
    addAccount_Marketo
    editFlowServiceNameAndSave    Marketo_Test
    runFlowService
    goBacktoFlowServices
    deleteFlowService    Marketo_Test
    selectMainTab    Connectors
    deleteAccountsFromConnectorsTab    Marketo
    logoutWmio

Create_Account_Jira_NFE
    [Documentation]    This testcase creates a new FlowService for Jira then adds an account, executes and deletes the created FlowService
    loginWmio    ${env}
    selectProject    ${projectToSelect}
    CreateNewFlowService
    SelectConnector    Atlassian Jira
    SelectAction    getAllProjectTypes
    manualAccountConfiguration
    addAccount_Jira
    editFlowServiceNameAndSave    Jira_Auto
    runFlowService
    goBacktoFlowServices
    deleteFlowService    Jira_Auto
    selectMainTab    Connectors
    deleteAccountsFromConnectorsTab    Jira
    logoutWmio

Create_Account_Cumulocity_NFE
    [Documentation]    This testcase creates a new FlowService for Cumulocity then adds an account, executes and deletes the created FlowService
    loginWmio    ${env}
    selectProject   ${projectToSelect}
    CreateNewFlowService
    SelectConnector    Cumulocity
    SelectAction    getAlarmCollection
    manualAccountConfiguration
    addAccount_Cumulocity
    editFlowServiceNameAndSave    Cumulocity_Auto
    runFlowService
    goBacktoFlowServices
    deleteFlowService    Cumulocity_Auto
    selectMainTab    Connectors
    deleteAccountsFromConnectorsTab    Cumulocity
    logoutWmio

Create_Account_SAPC4C_NFE
    [Documentation]    This testcase creates a new FlowService for SAP C4C then adds an account, executes and deletes the created FlowService
    loginWmio    ${env}
    selectProject    ${projectToSelect}
    CreateNewFlowService
    SelectConnector    SAP Cloud for Customer(C4C) OData v2.0
    SelectAction    queryAccounts_v2
    manualAccountConfiguration
    addAccount_sapc4c
    editFlowServiceNameAndSave    sapc4c_Auto
    runFlowService
    goBacktoFlowServices
    deleteFlowService    sapc4c_Auto
    selectMainTab    Connectors
    deleteAccountsFromConnectorsTab    SAP Cloud for Customer(C4C) OData v2.0
    logoutWmio

Create_Account_AmazonSNS_NFE
    [Documentation]    This testcase creates a new FlowService for Amazon SNS then adds an account, executes and deletes the created FlowService
    loginWmio    ${env}
    selectProject    ${projectToSelect}
    CreateNewFlowService
    SelectConnector    Amazon Simple Notification Service(SNS)
    SelectAction    listTopics
    manualAccountConfiguration
    addAccount_amazonSNS
    editFlowServiceNameAndSave    AmazonSNS_Auto
    runFlowService
    goBacktoFlowServices
    deleteFlowService    AmazonSNS_Auto
    selectMainTab    Connectors
    deleteAccountsFromConnectorsTab    Amazon Simple Notification Service(SNS)
    logoutWmio

#Create_Account_MicrosoftCosmosDB_NFE
#    [Documentation]    This testcase creates a new FlowService for Microsoft Cosmos DB then adds an account, executes and deletes the created FlowService
#    loginWmio    ${env}
#    selectProject    ${projectToSelect}
#    CreateNewFlowService
#    SelectConnector    Microsoft Azure Cosmos DB
#    SelectAction    deleteDatabase
#    manualAccountConfiguration
#    addAccount_MicrosoftCosmosDB
#    editFlowServiceNameAndSave    CosmosDB_Auto
#    #runFlowService
#    goBacktoFlowServices
#    deleteFlowService    CosmosDB_Auto
##    selectMainTab    Connectors
#    deleteAccountsFromConnectorsTab    Microsoft Azure Cosmos DB
#    logoutWmio



Create_Account_SalesforceCRM_NFE
    [Documentation]    This testcase creates a new FlowService for Salesforce CRM then adds an account, executes and deletes the created FlowService
    loginWmio    ${env}
    selectProject    ${projectToSelect}
    CreateNewFlowService
    SelectConnectorWithVersion    Salesforce CRM    Salesforce CRM • V: 48
    SelectAction    queryContacts
    credentialAccountConfiguration
    addAccount_Salesforce
    editFlowServiceNameAndSave    SalesforceCRM_Auto
    runFlowService
    goBacktoFlowServices
    deleteFlowService    SalesforceCRM_Auto
    selectMainTab    Connectors
    deleteAccountsFromConnectorsTab    Salesforce CRM
    logoutWmio

Create_Account_AmazonS3_NFE
    [Documentation]    This testcase creates a new FlowService for AmazonS3 then adds an account, executes and deletes the created FlowService
    loginWmio    ${env}
    selectProject    ${projectToSelect}
    CreateNewFlowService
    SelectConnector    Amazon Simple Storage Service (S3)
    SelectAction    listAllMyBuckets
    manualAccountConfiguration
    addaccount_amazonS3
    editFlowServiceNameAndSave    amazonS3_Auto
    runFlowService
    goBacktoFlowServices
    deleteFlowService    amazonS3_Auto
    selectMainTab    Connectors
    deleteAccountsFromConnectorsTab    Amazon Simple Storage Service (S3)
    logoutWmio

Create_Account_AmazonSQS_NFE
    [Documentation]    This testcase creates a new FlowService for AmazonSQS then adds an account, executes and deletes the created FlowService
    loginWmio    ${env}
    selectProject    ${projectToSelect}
    CreateNewFlowService
    SelectConnector    Amazon Simple Queue Service (SQS)
    SelectAction    listQueues
    manualAccountConfiguration
    addaccount_amazonSQS
    editFlowServiceNameAndSave    amazonSQS_Auto
    runFlowService
    goBacktoFlowServices
    deleteFlowService    amazonSQS_Auto
    selectMainTab    Connectors
    deleteAccountsFromConnectorsTab    Amazon Simple Queue Service (SQS)
    logoutWmio

#Create_Account_CoupaV26_NFE
#    [Documentation]    This testcase creates a new FlowService for CoupaV26 then adds an account, executes and deletes the created FlowService
#    loginWmio    ${env}
#    selectProject   ${projectToSelect}
#    CreateNewFlowService
#    SelectConnectorWithVersion    Coupa    Coupa • V: 26
#    addCustomOperation_Account_CoupaV26    queryAccounts    Reference Data
#    addCustomOperation_Operation_CoupaV26    Query    accounts    name
#    editFlowServiceNameAndSave    coupaV26_Auto
#    runFlowService
#    deleteCustomOperation    Coupa    Coupa • V: 26
#    goBacktoFlowServices
#    deleteFlowService   coupaV26_Auto
#    selectMainTab   Connectors
#    deleteAccountsFromConnectorsTab    Coupa
#    logoutWmio

#Create_Account_AcuityScheduling_NFE
#    [Documentation]    This testcase creates a new FlowService for AcuityScheduling then adds an account, executes and deletes the created FlowService
#    loginWmio    ${env}
#    selectProject    ${projectToSelect}
#    CreateNewFlowService
#    SelectConnector    Acuity Scheduling
#    SelectAction    listClients
#    manualAccountConfiguration
#    addAccount_AcuityScheduling
#    editFlowServiceNameAndSave    acuityScheduling_Auto
#    runFlowService
#    goBacktoFlowServices
#    deleteFlowService    acuityScheduling_Auto
#    selectMainTab    Connectors
#    deleteAccountsFromConnectorsTab    Acuity Scheduling
#    logoutWmio

#Create_Account_Shopify_NFE
#    [Documentation]    This testcase creates a new FlowService for Shopify then adds an account, executes and deletes the created FlowService
#    loginWmio    ${env}
#    selectProject    ${projectToSelect}
#    CreateNewFlowService
#    SelectConnector    Shopify
#    addCustomOperation_Account_Shopify    ${newCommonAccountName}   List
#    addCustomOperation_Action_Shopify    List    blogs
#    editFlowServiceNameAndSave    shopify_Auto
#    runFlowService
#    goBacktoFlowServices
#    deleteFlowService    shopify_Auto
#    selectMainTab    Connectors
#    deleteAccountsFromConnectorsTab    Shopify
#    logoutWmio


Create_Account_AmazonDynamoDB_NFE
    [Documentation]    This testcase creates a new FlowService for Amazon DynamoDB then adds an account, executes and deletes the created FlowService
    loginWmio    ${env}
    selectProject    ${projectToSelect}
    CreateNewFlowService
    SelectConnector    Amazon DynamoDB
    addCustomOperation_Account_AmazonDynamoDB    ${newCommonAccountName}   List
    addCustomOperation_Action_AmazonDynamoDB    ListTables
    editFlowServiceNameAndSave    DB_Auto
    runFlowService
    deleteCustomOperation    Amazon DynamoDB    Amazon DynamoDB • V: 2012-08-10
    goBacktoFlowServices
    deleteFlowService    DB_Auto
    selectMainTab    Connectors
    deleteAccountsFromConnectorsTab    Amazon DynamoDB
    logoutWmio

#Create_Account_SalesforceCRM_JWT_NFE
#    [Documentation]    This testcase creates a new FlowService for Salesforce CRM then adds a JWT account, executes and deletes the created FlowService
#    loginWmio    ${env}
#    selectProject    ${projectToSelect}
#    CreateNewFlowService
#    SelectConnector    Salesforce CRM
#    SelectAction    queryAccounts
#    jwtAccountConfiguration
#    addAccount_Salesforce_JWT    SF_JWT_wasim    ${newCommonAccountName}
#    editFlowServiceNameAndSave    SalesforceCRM_JWT_Auto
#    runFlowService
#    goBacktoFlowServices
#    deleteFlowService    SalesforceCRM_JWT_Auto
#    selectMainTab    Connectors
#    deleteAccountsFromConnectorsTab    Salesforce CRM
#    logoutWmio

#Add_AccountBO_SalesforceCRM_NFE
#    [Documentation]    This testcase creates a new FlowService for Salesforce CRM then adds an account,creates accountBO, executes and deletes the created FlowService
#    loginWmio    ${env}
#    selectProject    ${projectToSelect}
#    CreateNewFlowService
#    SelectConnectorWithVersion    Salesforce CRM    Salesforce CRM (beta) • V: 48
#    SelectAction    createAccounts
#    credentialAccountConfiguration
#    addAccount_Salesforce
#    configureCreateAccount    sal3
#    editFlowServiceNameAndSave    SalesforceCRM_Auto
#    runFlowService
#    goBacktoFlowServices
#    deleteFlowService    SalesforceCRM_Auto
#    selectMainTab    Connectors
#    deleteAccountsFromConnectorsTab    Salesforce CRM
#    logoutWmio

Check_connector_count
    [Documentation]    This testcase verifies the number of available cloudstreams connectors in FlowService
    loginWmio    ${env}
    selectProject    ${projectToSelect}
    CreateNewFlowService
	SelectAllConnectors
	GetConnectorCount_FlowService
    editFlowServiceNameAndSave    ConnectorCount
    goBacktoFlowServices
    deleteFlowService    ConnectorCount