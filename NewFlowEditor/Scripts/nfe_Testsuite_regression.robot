***Settings***
Resource    ../Conf/common_settings.robot
Resource    ../Keywords/default_keywords.robot
Resource    ../Keywords/connectors_keywords.robot
Suite setup    run keywords  Set selenium timeout    120s  AND  loadDB
Suite teardown    run keywords    close all browsers

*** Variables ***
@{netSuiteCustOps}=    CustAction_AddObj    CustAction_GetObj   CustAction_UpdateObj    CustAction_DeleteObj
@{ODataCustOps}=    CustAction_CreateAccount    CustAction_UpsertAccount    CustAction_ReadAccount    CustAction_DeleteAccount
@{DB_CustOps}=  CustOp_ListTables
@{Coupa_CustOps}=   CustOp_queryAccounts
@{Coupa_CRUD_CustOps}=    CustOp_createAccount    CustOp_getAccount    CustOp_UpdateAccount    CustOp_DeactivateAccount
@{Workdayv34_CustOps}=    CustOp_putCompanyInsiderType    CustOp_getCompanyInsiderType    CustOp_UpdatedCompanyInsiderType    CustOp_GetUpdatedCompanyInsiderType
@{ExistingFlowServices}=   workday    AmazonDB    SF_queryAccounts    GoogleDrive_ListFiles    GooglePubSub_ListTopics    MSAzureDL_listFileSystems    Shopify_listCustomers    Marketo_queryLead    CoupaV28_QueryAccts
@{netSuiteCustOps2}=     CustAction_GetAllObj
@{ConnectionNameToED}=    Cumulocity    Salesforce    Atlassian Jira    Marketo    SAP Cloud for Customer(C4C) OData v2.0    Acuity Scheduling    Amazon DynamoDB
@{ExistingWrokflowFlowName}=   Salesforce_Auto     Marketo_Auto    Cumulocity    Atlassian Jira
@{Shopify_CustOps}=    CustOp_List

***Test case***

Create_Account_Marketo_NFE
    [Documentation]    This testcase creates a new FlowService for Marketo then adds an account, executes and deletes the created FlowService
    loginWmio    ${env}
    selectProject    ${projectToSelect}
    SelectIntigrationTab
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
    SelectIntigrationTab
    CreateNewFlowService
    SelectConnectorWithVersion    Atlassian Jira    jira_v2.1
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
    SelectIntigrationTab
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
    SelectIntigrationTab
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
    SelectIntigrationTab
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
    SelectIntigrationTab
    CreateNewFlowService
    SelectConnectorWithVersion    Salesforce     salesforce_v51
    SelectAction    queryContacts
    credentialAccountConfiguration
    addAccount_Salesforce   ${newCommonAccountName}
    editFlowServiceNameAndSave    SalesforceCRM_Auto
    runFlowService
    goBacktoFlowServices
    deleteFlowService    SalesforceCRM_Auto
    selectMainTab    Connectors
    deleteAccountsFromConnectorsTab    Salesforce
    logoutWmio

Create_Account_AmazonS3_NFE
    [Documentation]    This testcase creates a new FlowService for AmazonS3 then adds an account, executes and deletes the created FlowService
    loginWmio    ${env}
    selectProject    ${projectToSelect}
    SelectIntigrationTab
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
    SelectIntigrationTab
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

Create_Account_Coupa_NFE
    [Documentation]    This testcase creates a new FlowService for Coupa then adds an account, executes and deletes the created FlowService
    loginWmio    ${env}
    selectProject   ${projectToSelect}
    SelectIntigrationTab
    CreateNewFlowService
    SelectConnectorWithVersion    Coupa    coupa_v30
    addCustomOperation_Account_Coupa    CustOp_queryAccounts    Reference Data
    addCustomOperation_Operation_Coupa    Query    accounts    name
    editFlowServiceNameAndSave    coupa_Auto
    runFlowService
    goBacktoFlowServices
    deleteFlowService    coupa_Auto
    deleteListOfCustomOperations  Coupa    coupa_v30  @{Coupa_CustOps}
    selectMainTab   Connectors
    deleteAccountsFromConnectorsTab    Coupa
    logoutWmio

Create_Account_AcuityScheduling_NFE
    [Documentation]    This testcase creates a new FlowService for AcuityScheduling then adds an account, executes and deletes the created FlowService
    loginWmio    ${env}
    selectProject    ${projectToSelect}
    SelectIntigrationTab
    CreateNewFlowService
    SelectConnector    Acuity Scheduling
    SelectAction    listClients
    manualAccountConfiguration
    addAccount_AcuityScheduling
    editFlowServiceNameAndSave    acuityScheduling_Auto
    runFlowService
    goBacktoFlowServices
    deleteFlowService    acuityScheduling_Auto
    selectMainTab    Connectors
    deleteAccountsFromConnectorsTab    Acuity Scheduling
    logoutWmio

Create_Account_Shopify_NFE
    [Documentation]    This testcase creates a new FlowService for Shopify then adds an account, executes and deletes the created FlowService
    loginWmio    ${env}
    selectProject    ${projectToSelect}
    SelectIntigrationTab
    CreateNewFlowService
    SelectConnector    Shopify
    addCustomOperation_Account_Shopify    ${newCommonAccountName}   CustOp_List
    addCustomOperation_Action_Shopify    List    blogs
    editFlowServiceNameAndSave    shopify_Auto
    runFlowService
    goBacktoFlowServices
    deleteFlowService    shopify_Auto
    deleteListOfCustomOperations  Shopify    shopify_v201904   @{Shopify_CustOps}
    selectMainTab    Connectors
    deleteAccountsFromConnectorsTab    Shopify
    logoutWmio


Create_Account_AmazonDynamoDB_NFE
    [Documentation]    This testcase creates a new FlowService for Amazon DynamoDB then adds an account, executes and deletes the created FlowService
    loginWmio    ${env}
    selectProject    ${projectToSelect}
    SelectIntigrationTab
    CreateNewFlowService
    SelectConnector    Amazon DynamoDB
    addCustomOperation_Account_AmazonDynamoDB    ${newCommonAccountName}   CustOp_ListTables
    addCustomOperation_Action_AmazonDynamoDB    ListTables
    editFlowServiceNameAndSave    DB_Auto
    runFlowService
    goBacktoFlowServices
    deleteFlowService    DB_Auto
    deleteListOfCustomOperations  Amazon DynamoDB    amazon.dynamoDB_v20120810  @{DB_CustOps}
    selectMainTab    Connectors
    deleteAccountsFromConnectorsTab    Amazon DynamoDB
    logoutWmio


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

CRUD_SalesforceCRM_CRED_NFE
    [Documentation]    This testcase creates a new FlowService for Salesforce CRM then adds,get,update,delete an account.Executes and deletes the created FlowService
    loginWmio    ${env}
    selectProject    ${projectToSelect}
    SelectIntigrationTab
    CreateNewFlowService
#----------------------CREATE ACCOUNT------------
    SelectConnectorWithVersion    Salesforce    salesforce_v51
    SelectAction    createAccounts
    credentialAccountConfiguration
    addAccount_Salesforce   ${newCommonAccountName}
    configureCreateAccountSalesforce    sag1_create01
#-------------------GET ACCOUNT BY ID------------
    click element    ${PO_addNewStep}
    SelectConnectorWithVersionInSteps    Salesforce    salesforce_v51    2
    SelectAction    queryAccountsByID
    SearchAndSelectAccountForFlowservice    2   ${newCommonAccountName}
    configureQueryAccountByIDSalesforce    2
#--------------UPDATE ACCOUNT BY ID-----------------
    click element    ${PO_addNewStep}
    SelectConnectorWithVersionInSteps    Salesforce    salesforce_v51    3
    SelectAction    updateAccounts
    SearchAndSelectAccountForFlowservice    3   ${newCommonAccountName}
    configureUpdateAccountByIDSalesforce    3    sag1_update01
#------------------------DELETE ACCOUNTS BY ID-------------
    click element    ${PO_addNewStep}
    SelectConnectorWithVersionInSteps    Salesforce    salesforce_v51   4
    SelectAction    deleteBusinessObjects
    SearchAndSelectAccountForFlowservice    4   ${newCommonAccountName}
    configureDeleteAccountByIDSalesforce    4
    editFlowServiceNameAndSave    SalesforceCRM_Auto
    runFlowService
    goBacktoFlowServices
    deleteFlowService    SalesforceCRM_Auto
    selectMainTab    Connectors
    deleteAccountsFromConnectorsTab    Salesforce
    logoutWmio

CRUD_SalesforceCRM_OAuth_NFE
    [Documentation]    This testcase creates a new FlowService using Salesforce CRM OAuth account then adds,get,update,delete an account.Executes and deletes the created FlowService
    loginWmio    ${env}
    selectProject    ${projectToSelect}
    SelectIntigrationTab
    CreateNewFlowService
#----------------------CREATE ACCOUNT------------
    SelectConnectorWithVersion    Salesforce    salesforce_v51
    SelectAction    createAccounts
    navigateOAuthAccountConfigurationPage
    addSalesforceCRMOAuthAccount
    configureCreateAccountSalesforce    sal4
#-------------------GET ACCOUNT BY ID------------
    click element    ${PO_addNewStep}
    SelectConnectorWithVersionInSteps    Salesforce    salesforce_v51    2
    SelectAction    queryAccountsByID
    SearchAndSelectAccountForFlowservice    2   ${newCommonAccountName}
    configureQueryAccountByIDSalesforce    2
#--------------UPDATE ACCOUNT BY ID-----------------
    click element    ${PO_addNewStep}
    SelectConnectorWithVersionInSteps    Salesforce    salesforce_v51    3
    SelectAction    updateAccounts
    SearchAndSelectAccountForFlowservice    3   ${newCommonAccountName}
    configureUpdateAccountByIDSalesforce    3    sag4_updated
#------------------------DELETE ACCOUNTS BY ID-------------
    click element    ${PO_addNewStep}
    SelectConnectorWithVersionInSteps    Salesforce    salesforce_v51    4
    SelectAction    deleteBusinessObjects
    SearchAndSelectAccountForFlowservice    4   ${newCommonAccountName}
    configureDeleteAccountByIDSalesforce    4
    editFlowServiceNameAndSave    SalesforceCRM_Auto1
    runFlowService
    goBacktoFlowServices
    deleteFlowService    SalesforceCRM_Auto1
    selectMainTab    Connectors
    deleteAccountsFromConnectorsTab    Salesforce
    logoutWmio

CRUD_SalesforceCRM_JWT_NFE
    [Documentation]    This testcase creates and executes a new FlowService using Salesforce CRM JWT account.
    loginWmio    ${env}
    selectProject    ${projectToSelect}
    SelectIntigrationTab
    CreateNewFlowService
#----------------------CREATE ACCOUNT------------
    SelectConnectorWithVersion    Salesforce    salesforce_v51
    SelectAction    createAccounts
    jwtAccountConfiguration
    addSalesforceCRMjwtAccount  SfKeystorebvt  punithsigned
    configureCreateAccountSalesforce    sal5
#-------------------GET ACCOUNT BY ID------------
    click element    ${PO_addNewStep}
    SelectConnectorWithVersionInSteps    Salesforce    salesforce_v51    2
    SelectAction    queryAccountsByID
    SearchAndSelectAccountForFlowservice    2   ${newCommonAccountName}
    configureQueryAccountByIDSalesforce    2
#--------------UPDATE ACCOUNT BY ID-----------------
    click element    ${PO_addNewStep}
    SelectConnectorWithVersionInSteps    Salesforce    salesforce_v51    3
    SelectAction    updateAccounts
    SearchAndSelectAccountForFlowservice    3   ${newCommonAccountName}
    configureUpdateAccountByIDSalesforce    3    sag5_updated
#------------------------DELETE ACCOUNTS BY ID-------------
    click element    ${PO_addNewStep}
    SelectConnectorWithVersionInSteps    Salesforce    salesforce_v51    4
    SelectAction    deleteBusinessObjects
    SearchAndSelectAccountForFlowservice    4   ${newCommonAccountName}
    configureDeleteAccountByIDSalesforce    4
    editFlowServiceNameAndSave    SalesforceCRM_Auto2
    runFlowService
    goBacktoFlowServices
    deleteFlowService    SalesforceCRM_Auto2
    selectMainTab    Connectors
    deleteAccountsFromConnectorsTab    Salesforce
    logoutWmio

 Salesforce_accountType_switching
     [Documentation]    Switches between account type and executes flow service of salesforce
     loginWmio    ${env}
     selectProject    ${projectToSelectED}
     SelectIntigrationTab
     CreateNewFlowService
     SelectConnectorWithVersion    Salesforce    salesforce_v51
     SelectAction    queryContacts
     SearchAndSelectAccountForFlowservice    1   sf_cred_ac
     editFlowServiceNameAndSave    SalesforceCRM_Auto5
     runFlowService
     SearchAndSelectAccountForFlowservice    1   sf_oauth_ac
     saveFlowService
     runFlowService
     SearchAndSelectAccountForFlowservice    1   sf_jwt_ac
     saveFlowService
     runFlowService
     goBacktoFlowServices
     deleteFlowService    SalesforceCRM_Auto5
     logoutWmio


CRUD_AmazonS3_NFE
    [Documentation]    This testcase creates a new FlowService for Amazon S3 adding create bucket and get bucket operations.Executes and deletes the created FlowService
    loginWmio    ${env}
    selectProject    ${projectToSelect}
    SelectIntigrationTab
    CreateNewFlowService
    #CREATE BUCKET
    SelectConnector    Amazon Simple Storage Service (S3)
    SelectAction    createBucket
    manualAccountConfiguration
    addaccount_amazonS3
    configureCreateBucketInFlowservice    amazons3auto1
    #GET BUCKET BY NAME
    click element    ${PO_addNewStep}
    SelectConnectorWithVersionInSteps    Amazon Simple Storage Service (S3)    amazon.s3.aws4_v20060301    2

    SelectAction    getBucket
    SearchAndSelectAccountForFlowservice    2   ${newCommonAccountName}
    configureGetBucketByNameInFlowserviceStep    2
    #CONVERT STRING TO STREAM
    click element    ${PO_addNewStep}
    ConfigureStringToStreamServiceInFlowserviceStep    3    stringToStream  C:\\DATA\\test.txt
    #PUT OBJECT
    click element    ${PO_addNewStep}
    SelectConnectorWithVersionInSteps    Amazon Simple Storage Service (S3)    amazon.s3.aws4_v20060301    3
    SelectAction    putObject
    SearchAndSelectAccountForFlowservice    4   ${newCommonAccountName}
    configurePutObjectInFlowserviceStep    4    AutoObj    application\/xml
    #GET OBJECT
    click element    ${PO_addNewStep}
    SelectConnectorWithVersionInSteps    Amazon Simple Storage Service (S3)    amazon.s3.aws4_v20060301    4
    SelectAction    getObject
    SearchAndSelectAccountForFlowservice    5   ${newCommonAccountName}
    configureGetObjectInFlowserviceStep    5
    #DELETE OBJECT
    click element    ${PO_addNewStep}
    SelectConnectorWithVersionInSteps    Amazon Simple Storage Service (S3)    amazon.s3.aws4_v20060301    5
    SelectAction    deleteObject
    SearchAndSelectAccountForFlowservice    6   ${newCommonAccountName}
    configureDeleteObjectInFlowserviceStep    6
    #DELETE BUCKET
    click element    ${PO_addNewStep}
    SelectConnectorWithVersionInSteps    Amazon Simple Storage Service (S3)    amazon.s3.aws4_v20060301    6
    SelectAction    deleteBucket
    SearchAndSelectAccountForFlowservice    7   ${newCommonAccountName}
    configureDeleteBucketInFlowserviceStep    7
    editFlowServiceNameAndSave    amazonS3_Auto1
    runFlowService
    goBacktoFlowServices
    deleteFlowService    amazonS3_Auto1
    selectMainTab    Connectors
    deleteAccountsFromConnectorsTab    Amazon Simple Storage Service (S3)
    logoutWmio


CRUD_SAPC4C_NFE
    [Documentation]    This testcase creates a new FlowService for Salesforce CRM then adds,get,update,delete an account.Executes and deletes the created FlowService
    loginWmio    ${env}
    selectProject    ${projectToSelect}
    SelectIntigrationTab
    CreateNewFlowService
#--------------------createEmail_v2------------------
    SelectConnector    SAP Cloud for Customer(C4C) OData v2.0
    SelectAction    createEmail_v2
    manualAccountConfiguration
    addAccount_sapc4c
    configurecreateEmail_v2SAPC4C    san@sag.com
#-------------------readEmailByIds_v2-----------------
    click element    ${PO_addNewStep}
    SelectConnectorWithVersionInSteps    SAP Cloud for Customer(C4C) OData v2.0    sap.c4c.odata_v2    2
    SelectAction    readEmailByIds_v2
    SearchAndSelectAccountForFlowservice    2   ${newCommonAccountName}
    configurereadEmailByIds_v2SAPC4C    2
#-----------------patchEmail_v2------------------------
    click element    ${PO_addNewStep}
    SelectConnectorWithVersionInSteps    SAP Cloud for Customer(C4C) OData v2.0    sap.c4c.odata_v2    3
    SelectAction    patchEmail_v2
    SearchAndSelectAccountForFlowservice    3   ${newCommonAccountName}
    configurepatchEmail_v2SAPC4C    3    2
#----------------deleteEmail_v2--------------------------
    click element    ${PO_addNewStep}
    SelectConnectorWithVersionInSteps    SAP Cloud for Customer(C4C) OData v2.0    sap.c4c.odata_v2    4
    SelectAction    deleteEmail_v2
    SearchAndSelectAccountForFlowservice    4   ${newCommonAccountName}
    configuredeleteEmail_v2SAPC4C    4
    editFlowServiceNameAndSave    sapc4c_Auto
    runFlowService
    goBacktoFlowServices
    deleteFlowService    sapc4c_Auto
    selectMainTab    Connectors
    deleteAccountsFromConnectorsTab    SAP Cloud for Customer(C4C) OData v2.0
    logoutWmio

RunExistingWorkflow
    loginWmio    ${env}
    selectProject    ${projectToSelectED}
    SelectIntigrationTab
    Sleep    3s
    click element    ${PO_ClickWorkflowbutton}
    openExistingWorkflowAndRun    @{ExistingWrokflowFlowName}
    logoutWmio

ConnectionEnableDisableTestCase
    [Documentation]    This testcase will enable and desable the existing connections.
    loginWmio    ${env}
    selectProject    ${projectToSelectED}
    selectMainTab    Connectors
    enableORdisableAccounts    ${newCommonAccountName}  @{ConnectionNameToED}
    logoutWmio

CRUD_NetSuite_NFE
    [Documentation]    This testcase creates and executes a new FlowService for NetSuite add,get,update and delete object operations.
    loginWmio    ${env}
    selectProject    ${projectToSelect}
    SelectIntigrationTab
    CreateNewFlowService
    #ADD OBJECT
    SelectConnector    NetSuite™
    Sleep    5s
    addObjectCustomActionUsingNewNetSuiteAccount    CustAction_AddObj
    configureAddObjectPipelineOfNetSuite    _accountsPayable    1928374602  dkp03_new
    #GET OBJECT
    Sleep    5s
    click element    ${PO_addNewStep}
    SelectConnectorWithVersionInSteps    NetSuite™    netsuite_tba_v2018_2    2
    getObjectCustomActionUsingExistingNetSuiteAccount    CustAction_GetObj
    configureGetObjectPipelineInFlowServiceStepOfNetSuite   2
    #UPDATE OBJECT
    Sleep    5s
    click element    ${PO_addNewStep}
    SelectConnectorWithVersionInSteps    NetSuite™    netsuite_tba_v2018_2    3
    updateObjectCustomActionUsingExistingNetSuiteAccount    CustAction_UpdateObj
    configureUpdateObjectPipelineInFlowServiceStepOfNetSuite    3   dkp03_updated
    #GET OBJECT AFTER ACCOUNT NAME UPDATE
    Sleep    5s
    click element    ${PO_addNewStep}
    SelectConnectorWithVersionInSteps    NetSuite™    netsuite_tba_v2018_2    4
    SelectAction    CustAction_GetObj
    SearchAndSelectAccountForFlowservice    4   ${newCommonAccountName}
    configureGetObjectPipelineInFlowServiceStepOfNetSuite   4
    #DELETE OBJECT
    Sleep    5s
    click element    ${PO_addNewStep}
    SelectConnectorWithVersionInSteps    NetSuite™    netsuite_tba_v2018_2    5
    deleteObjectCustomActionUsingExistingNetSuiteAccount    CustAction_DeleteObj
    configureDeleteObjectPipelineInFlowServiceStepOfNetSuite    5
    Sleep    5s
    editFlowServiceNameAndSave    NetSuite_Auto1
    runFlowService
    goBacktoFlowServices
    deleteFlowService    NetSuite_Auto1
    deleteListOfCustomOperations  NetSuite    netsuite_tba_v2018_2  @{netSuiteCustOps}
    selectMainTab    Connectors
    deleteAccountsFromConnectorsTab    NetSuite
    logoutWmio

CRUD_OData_OAuthType_NFE
    [Documentation]    This testcase creates and executes a new FlowService for OData.
    loginWmio    ${env}
    selectProject    ${projectToSelect}
    SelectIntigrationTab
    CreateNewFlowService
    #CREATE ACCOUNT
    SelectConnector    OData v4.0
    Sleep    5s
    createAccountCustomActionUsingNewOAuthTypeODataAccount    CustAction_CreateAccount
    configureCreateAccountPipelineOfOData   BBSR    DKP001
    #UPSERT ACCOUNT
    Sleep    5s
    click element    ${PO_addNewStep}
    SelectConnectorWithVersionInSteps    OData v4.0    odata.v4    2
    upsertAccountCustomActionUsingExistingOAuthTypeODataAccount    CustAction_UpsertAccount
    configureUpsertAccountPipelineOfOData   2   BBSR2
    #READ ACCOUNT
    Sleep    5s
    click element    ${PO_addNewStep}
    SelectConnectorWithVersionInSteps    OData v4.0    odata.v4    3
    readAccountCustomActionUsingExistingOAuthTypeODataAccount    CustAction_ReadAccount
    configureReadAccountPipelineOfOData   3
    #DELETE ACCOUNT
    Sleep    5s
    click element    ${PO_addNewStep}
    SelectConnectorWithVersionInSteps    OData v4.0    odata.v4    4
    deleteAccountCustomActionUsingExistingOAuthTypeODataAccount    CustAction_DeleteAccount
    configureDeleteAccountPipelineOfOData   4
    Sleep    5s
    editFlowServiceNameAndSave    OData_Auto1
    runFlowService
    goBacktoFlowServices
    deleteFlowService    OData_Auto1
    deleteListOfCustomOperations  OData v4.0    odata.v4  @{ODataCustOps}
    selectMainTab    Connectors
    deleteAccountsFromConnectorsTab    OData
    logoutWmio

CRUD_Coupa_NFE
    [Documentation]    This testcase creates a new FlowService for Coupa then  executes CRUD and deletes the created FlowService
    loginWmio    ${env}
    selectProject   ${projectToSelect}
    SelectIntigrationTab
    CreateNewFlowService
    #CREATE ACCOUNT
    SelectConnectorWithVersion    Coupa    coupa_v30
    Sleep    5s
    addCustomOperation_Account_Coupa    CustOp_createAccount    Reference Data
    addCustOpforCreateAccount    Create    accounts    segment-1
    configureCreateAccountPipelineOfCoupa    PV    sags    segs
    #CONVERT OBJECT TO STRING
    click element    ${PO_addNewStep}
    ConfigureObjetToStringServiceInFlowserviceStep    2    objectToString
    #GET ACCOUNT
    editFlowServiceNameAndSave    coupa_auto1
    Sleep    5s
    click element    ${PO_addNewStep}
    SelectConnectorWithVersionInSteps    Coupa    coupa_v30    2
    addCustomOPwithExistingAccount    CustOp_getAccount    Reference Data
    addCustOpforGetAccount    Get    accounts    id
    configureGetAccountPipelineOfCoupa    3
    #UPDATE ACCOUNT
    Sleep    5s
    click element    ${PO_addNewStep}
    SelectConnectorWithVersionInSteps    Coupa    coupa_v30    3
    addCustomOPwithExistingAccount    CustOp_UpdateAccount    Reference Data
    addCustOpforUpdateAccount    Update    accounts    name
    configureUpdateAccountPipelineOfCoupa    sags    4
    #Deactive ACCOUNT
    click element    ${PO_addNewStep}
    SelectConnectorWithVersionInSteps    Coupa    coupa_v30    4
    addCustomOPwithExistingAccount    CustOp_DeactivateAccount    Reference Data
    addCustOpforDeactivateAccount    Update    accounts    active
    configureDeactivateAccounPipelineOfCoupa    5
    runFlowService
    goBacktoFlowServices
    deleteFlowService    coupa_auto1
    deleteListOfCustomOperations  Coupa    coupa_v30    @{Coupa_CRUD_CustOps}
    selectMainTab    Connectors
    deleteAccountsFromConnectorsTab    Coupa
    logoutWmio

CRUD_WorkdayV34_NFE
    [Documentation]    This testcase creates a new FlowService for Workday then  executes CRUD and deletes the created FlowService
    loginWmio    ${env}
    selectProject   ${projectToSelect}
    SelectIntigrationTab
    CreateNewFlowService
    #PUTCOMPANY INSIDERTYPE
    SelectConnectorWithVersion    Workday    workday_v34.0
    Sleep    5s
    addCustomOperation_Account_WorkdayV34    CustOp_putCompanyInsiderType    Human Resources
    addCustOpforputCompanyInsiderType    Put_Company_Insider_Type
    configurePutCompanyInsiderTypePipelineOfWorkdayv34    2136.5    SAG    PutCompany    0
    #GETCOMPANY INSIDERTYPE
    Sleep    5s
    click element    ${PO_addNewStep}
    SelectConnectorWithVersionInSteps    Workday    workday_v34.0    2
    addCustomOPwithExistingAccount    CustOp_getCompanyInsiderType    Human Resources
    addCustOpforgetCompanyInsiderType    Get_Company_Insider_Type
    configureGetCompanyInsiderTypePipelineOfWorkdayv34    2
    #PUTCOMPANY INSIDERTYPE FOR UPDATE
    Sleep    5s
    click element    ${PO_addNewStep}
    SelectConnectorWithVersionInSteps    Workday    workday_v34.0    3
    addCustomOPwithExistingAccount    CustOp_UpdatedCompanyInsiderType    Human Resources
    addCustOpforputCompanyInsiderType    Put_Company_Insider_Type
    configurePutCompanyInsiderTypeForUpdatePipelineOfWorkdayv34    3    SAG    UpdateCompany
    #GETCOMPANY INSIDERTYPE UPDATED
    Sleep    5s
    click element    ${PO_addNewStep}
    SelectConnectorWithVersionInSteps    Workday    workday_v34.0    4
    addCustomOPwithExistingAccount    CustOp_GetUpdatedCompanyInsiderType    Human Resources
    addCustOpforgetCompanyInsiderType    Get_Company_Insider_Type
    configureGetCompanyInsiderTypeForUpdatedPipelineOfWorkdayv34    4
    editFlowServiceNameAndSave    Workday_v34
    runFlowService
    goBacktoFlowServices
    deleteFlowService    Workday_v34
    deleteListOfCustomOperations  Workday    workday_v34.0  @{Workdayv34_CustOps}
    selectMainTab    Connectors
    deleteAccountsFromConnectorsTab    Workday
    logoutWmio



EditConnectionAndVerfy_Salesforce_NFE
    [Documentation]    This testcase creates a new FlowService for Salesforce CRM then adds an account, executes,edit's the connection and deletes the created FlowService
    loginWmio    ${env}
    selectProject    ${projectToSelect}
    SelectIntigrationTab
    CreateNewFlowService
    SelectConnectorWithVersion    Salesforce    salesforce_v51
    SelectAction    queryContacts
    credentialAccountConfiguration
    addAccount_Salesforce   ${newCommonAccountName}
    editFlowServiceNameAndSave    SalesforceCRM_Auto
    runFlowService
    goBacktoFlowServices
    selectMainTab    Connectors
    editAccountsConnectionForSalesforceFromConnectorsTab    Salesforce
    Sleep    3s
    SelectIntigrationTab
    click element    ${PO_ClickFlowservicebutton}
    openExistingFloservice    SalesforceCRM_Auto
    runFlowService
    goBacktoFlowServices
    deleteFlowService    SalesforceCRM_Auto
    selectMainTab    Connectors
    deleteAccountsFromConnectorsTab    Salesforce
    logoutWmio

RunningExistingFlowservices_NFE
    [Documentation]    This testcase runs existing flowservices and veryfy them.
    loginWmio    ${env}
    selectProject    ${projectToSelectForExistFlows}
    Sleep    3s
    click element    ${PO_ClickFlowservicebutton}
    openExistingFloserviceAndrun    @{ExistingFlowServices}
    logoutWmio


EDIT_NetSuite_CustomOperation
    [Documentation]    This testcase creates new custom operation and executes FlowService using this. Then edits that operation and runs flow again.
    loginWmio    ${env}
    selectProject    ${projectToSelect}
    SelectIntigrationTab
    CreateNewFlowService
    #CREATE AND RUN GET ALL OBJECTS CUSTOM OPERATION
    SelectConnectorWithVersion    NetSuite™    netsuite_tba_v2018_2
    Sleep    5s
    getAllObjectsCustomActionUsingNewNetSuiteAccount    CustAction_GetAllObj
    Sleep    5s
    editFlowServiceNameAndSave    NetSuite_Auto2
    runFlowService
    #EDIT GET ALL OBJECTS CUSTOM OPERATION
    editGetAllObjectsCustomActionOfNetSuite    CustAction_GetAllObj
    saveFlowService
    runFlowService
    goBacktoFlowServices
    deleteFlowService    NetSuite_Auto2
    deleteListOfCustomOperations  NetSuite    netsuite_tba_v2018_2      @{netSuiteCustOps2}
    selectMainTab    Connectors
    deleteAccountsFromConnectorsTab    NetSuite
    logoutWmio


Check_connector_count
    [Documentation]    This testcase verifies the number of available cloudstreams connectors in FlowService
    loginWmio    ${env}
    selectProject    ${projectToSelect}
    SelectIntigrationTab
    CreateNewFlowService
	SelectAllConnectors
	GetConnectorCount_FlowService
    editFlowServiceNameAndSave    ConnectorCount
    goBacktoFlowServices
    deleteFlowService    ConnectorCount