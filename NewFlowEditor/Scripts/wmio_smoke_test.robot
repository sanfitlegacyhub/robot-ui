***Settings***
Resource    ../Conf/common_settings.robot
Resource    ../Keywords/default_keywords.robot
Resource    ../Keywords/connectors_keywords.robot
Suite setup    run keywords  Set selenium timeout    90s  AND  loadDB
Suite teardown    run keywords    close all browsers


***Test case***

Check_connector_count_in_flowEditor
    [Documentation]    This testcase verifies the number of available cloudstreams connectors in FlowService
    loginWmio    ${env}
    selectProject    ${projectToSelect}
    CreateNewFlowService
	SelectAllConnectors
	GetConnectorCount_FlowService
    editFlowServiceNameAndSave    ConnectorCount
    goBacktoFlowServices
    deleteFlowService    ConnectorCount

create_salesforceCRM_credential_type_connection
    [Documentation]     This will create a salesforce CRM credential type connection
    SelectConnectorsTab
    searchConnectorInConnectorsTab_And_NavigateToAddAccountWindow   Salesforce CRM
    addAccount_Salesforce   ${newCommonAccountNameForHealthJob}

create_and_execute_salesforceCRM_flowservice_using_credentialTypeAccount
    [Documentation]     This creates flow selecting Salesforce CRM connector and existing a salesforce CRM account, then runs it
    CreateNewFlowService
    SelectConnectorWithVersion    Salesforce     salesforce_v48
    SelectAction    queryContacts
    SearchAndSelectAccountForFlowservice    1   ${newCommonAccountNameForHealthJob}
    editFlowServiceNameAndSave    SalesforceCRM_Auto5
    runFlowService
    goBacktoFlowServices
    deleteFlowService    SalesforceCRM_Auto5
    SelectConnectorsTab
    deleteAccountsFromConnectorsTab    Salesforce
    logoutWmio

