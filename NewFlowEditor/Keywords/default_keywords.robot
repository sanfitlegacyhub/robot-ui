***Settings***
Resource    ../Conf/common_settings.robot


***keywords***
executionSpeed
    ${currentSpeed}    run keyword and return status    set selenium speed    3s
    Log    Current selenium speed is ${currentSpeed}



loginWmio
    [documentation]    This keyword logs in a user based on environment. Expects environment as argument
    [Arguments]    ${env}
    run keyword if    '${env}'=="dev1"    loginWmio_dev1
    run keyword if    '${env}'=="dev2"    loginWmio_dev2
    run keyword if    '${env}'=="dev3"    loginWmio_dev3
    run keyword if    '${env}'=="int"    loginWmio_int
    run keyword if    '${env}'=="stagblue"    loginWmio_stagblue
    run keyword if    '${env}'=="staggreen"    loginWmio_staggreen
    run keyword if    '${env}'=="preprodblue"    loginWmio_preprodblue
	run keyword if    '${env}'=="preprodgreen"    loginWmio_preprodgreen
	run keyword if    '${env}'=="prod"    loginWmio_prod
	run keyword if    '${env}'=="spro"    loginWmio_spro

loginWmio_dev1
    [documentation]    This keywords logs into wmiosanitydev.
    Open Browser    ${wmioUrl_dev1}    ${browser}
    Maximize Browser Window
    ${loginPageStatus}=    run keyword and return status    wait until page contains element    ${PO_ LogintoyourAccount}
    run keyword if    '${loginPageStatus}'=='True'    Log    Login page found    ELSE    FATAL ERROR    Login page is not found
    input text    ${PO_username}    ${uname_dev1}
    input text    ${PO_password}    ${password_dev1}
    click element    ${PO_login}
    ${loginStatus}=    run keyword and return status    wait until page contains element    ${PO_postLoginScreenTitle}
    run keyword if    '${loginStatus}'=='True'    Log    Logged in successfully!    ELSE    FATAL ERROR    User not able to Login!

loginWmio_dev2
    [documentation]    This keywords logs into wmiosanitydev.
    Open Browser    ${wmioUrl_dev2}    ${browser}
    Maximize Browser Window
    ${loginPageStatus}=    run keyword and return status    wait until page contains    Log in to your account
    run keyword if    '${loginPageStatus}'=='True'    Log    Login page found    ELSE    FATAL ERROR    Login page is not found
    input text    ${PO_username}    ${uname_dev2}
    input text    ${PO_password}    ${password_dev2}
    click element    ${PO_login}
    ${loginStatus}=    run keyword and return status    wait until page contains element    ${PO_postLoginScreenTitle}
    run keyword if    '${loginStatus}'=='True'    Log    Logged in successfully!    ELSE    FATAL ERROR    User not able to Login!

loginWmio_dev3
     [documentation]    This keywords logs into wmiosanitydevtenant1.
     Open Browser    ${wmioUrl_dev3}    ${browser}
     Maximize Browser Window
     ${loginPageStatus}=    run keyword and return status    wait until page contains    Log in to your account
     run keyword if    '${loginPageStatus}'=='True'    Log    Login page found    ELSE    FATAL ERROR    Login page is not found
     input text    ${PO_username}    ${uname_dev3}
     input text    ${PO_password}    ${password_dev3}
     click element    ${PO_login}
     ${loginStatus}=    run keyword and return status    wait until page contains element    ${PO_postLoginScreenTitle}
     run keyword if    '${loginStatus}'=='True'    Log    Logged in successfully!    ELSE    FATAL ERROR    User not able to Login!

loginWmio_int
    [documentation]    This keywords logs into wmiosanityint.
    Open Browser    ${wmioUrl_int}    ${browser}
    Maximize Browser Window
#    ${loginPageStatus}=    run keyword and return status    wait until page contains    Log in to your account
#    run keyword if    '${loginPageStatus}'=='True'    Log    Login page found    ELSE    FATAL ERROR    Login page is not found
    wait until page contains element    ${PO_username}
    input text    ${PO_username}    ${uname_int}
    wait until page contains element    ${PO_password}
    input text    ${PO_password}    ${password_int}
    click element    ${PO_login}
    ${loginStatus}=    run keyword and return status    wait until page contains element    ${PO_postLoginScreenTitle}
    run keyword if    '${loginStatus}'=='True'    Log    Logged in successfully!    ELSE    FATAL ERROR    User not able to Login!


loginWmio_stagblue
    [documentation]    This keywords logs into stag.
    Open Browser    ${wmioUrl_stagblue}    ${browser}
    Maximize Browser Window
#    ${loginPageStatus}=    run keyword and return status    wait until page contains    Log in to your account
#    run keyword if    '${loginPageStatus}'=='True'    Log    Login page found    ELSE    FATAL ERROR    Login page is not found
    wait until page contains element    ${PO_username}
    input text    ${PO_username}    ${uname_stagblue}
    wait until page contains element    ${PO_password}
    input text    ${PO_password}    ${password_stagblue}
    click element    ${PO_login}
    ${loginStatus}=    run keyword and return status    wait until page contains element    ${PO_postLoginScreenTitle}
    run keyword if    '${loginStatus}'=='True'    Log    Logged in successfully!    ELSE    FATAL ERROR    User not able to Login!

loginWmio_staggreen
    [documentation]    This keywords logs into stag.
    Open Browser    ${wmioUrl_staggreen}    ${browser}
    Maximize Browser Window
 #${loginPageStatus}=    run keyword and return status    wait until page contains    Log in to your account
 #run keyword if    '${loginPageStatus}'=='True'    Log    Login page found    ELSE    FATAL ERROR    Login page is not found
    wait until page contains element    ${PO_username}
    input text    ${PO_username}    ${uname_staggreen}
    wait until page contains element    ${PO_password}
    input text    ${PO_password}    ${password_staggreen}
    click element    ${PO_login}
    ${loginStatus}=    run keyword and return status    wait until page contains element    ${PO_postLoginScreenTitle}
    run keyword if    '${loginStatus}'=='True'    Log    Logged in successfully!    ELSE    FATAL ERROR    User not able to Login!


loginWmio_preprodblue
    [documentation]    This keywords logs into wmiosanitypreprod.
    Open Browser    ${wmioUrl_preprodblue}    ${browser}
    Maximize Browser Window
#    ${loginPageStatus}=    run keyword and return status    wait until page contains    Log in to your account
#    run keyword if    '${loginPageStatus}'=='True'    Log    Login page found    ELSE    FATAL ERROR    Login page is not found
    wait until page contains element    ${PO_username}
    input text    ${PO_username}    ${uname_preprodblue}
    wait until page contains element    ${PO_password}
    input text    ${PO_password}    ${password_preprodblue}
    click element    ${PO_login}
    ${loginStatus}=    run keyword and return status    wait until page contains element    ${PO_postLoginScreenTitle}
    run keyword if    '${loginStatus}'=='True'    Log    Logged in successfully!    ELSE    FATAL ERROR    User not able to Login!

loginWmio_preprodgreen
    [documentation]    This keywords logs into wmiopreprod.
    Open Browser    ${wmioUrl_preprogreen}    ${browser}
    Maximize Browser Window
#    ${loginPageStatus}=    run keyword and return status    wait until page contains    Log in to your account
#    run keyword if    '${loginPageStatus}'=='True'    Log    Login page found    ELSE    FATAL ERROR    Login page is not found
    wait until page contains element    ${PO_username}
    input text    ${PO_username}    ${uname_preprodgreen}
    wait until page contains element    ${PO_password}
    input text    ${PO_password}    ${password_preprodgreen}
    click element    ${PO_login}
    ${loginStatus}=    run keyword and return status    wait until page contains element    ${PO_postLoginScreenTitle}
    run keyword if    '${loginStatus}'=='True'    Log    Logged in successfully!    ELSE    FATAL ERROR    User not able to Login!


loginWmio_prod
    [documentation]    This keywords logs into prod tenant cscdemode.
    Open Browser    ${wmioUrl_prod}    ${browser}
    Maximize Browser Window
#    ${loginPageStatus}=    run keyword and return status    wait until page contains    Log in to your account
#    run keyword if    '${loginPageStatus}'=='True'    Log    Login page found    ELSE    FATAL ERROR    Login page is not found
    wait until page contains element    ${PO_username}
    input text    ${PO_username}    ${uname_prod}
    wait until page contains element    ${PO_password}
    input text    ${PO_password}    ${password_prod}
    click element    ${PO_login}
    ${loginStatus}=    run keyword and return status    wait until page contains element    ${PO_postLoginScreenTitle}
    run keyword if    '${loginStatus}'=='True'    Log    Logged in successfully!    ELSE    FATAL ERROR    User not able to Login!

loginWmio_spro
    [documentation]    This keywords logs into spro tenant .
    Open Browser    ${wmioUrl_spro}    ${browser}
    Maximize Browser Window
#    ${loginPageStatus}=    run keyword and return status    wait until page contains    Log in to your account
#    run keyword if    '${loginPageStatus}'=='True'    Log    Login page found    ELSE    FATAL ERROR    Login page is not found
    wait until page contains element    ${PO_username}
    input text    ${PO_username}    ${uname_spro}
    wait until page contains element    ${PO_password}
    input text    ${PO_password}    ${password_spro}
    click element    ${PO_login}
    ${loginStatus}=    run keyword and return status    wait until page contains element    ${PO_postLoginScreenTitle}
    run keyword if    '${loginStatus}'=='True'    Log    Logged in successfully!    ELSE    FATAL ERROR    User not able to Login!


logoutWmio
    [documentation]    This keyword logs out the user.
    wait until page contains element    ${PO_profileIcon}
#    wait until page contains element    xpath://span[@class="initial-ltr"]
    click element    ${PO_profileIcon}
    wait until page contains element    ${PO_logout}
    wait until element is visible    ${PO_logout}
    click element    ${PO_logout}
    close browser

selectProject
    [documentation]    This keyword is used to select a project based on project name. Project name is case sensitive
    [Arguments]    ${projNameToSearch}
    wait until page contains element    ${PO_commonSearchBox}
    input text    ${PO_commonSearchBox}    ${projNameToSearch}
    press keys    ${PO_commonSearchBox}    RETURN
    Sleep    2s
    wait until page contains element    xpath://span[@title='${projNameToSearch}']
    click element    xpath://span[@title='${projNameToSearch}']


selectFlowService
    [documentation]    This keyword is used to select an existing workflow
    [Arguments]    ${flowServiceToSearch}
#    wait until page contains element    xpath://span[contains(text(),'FlowServices')]
#    click element    xpath://span[contains(text(),'FlowServices')]
    selectMainTab   FlowServices
    input text  ${PO_commonSearchBox}    ${flowServiceToSearch}
    press keys    ${PO_commonSearchBox}    RETURN
    Sleep    2s
    wait until page contains element    xpath://div[@aid='${flowServiceToSearch}']
    click element   xpath://div[@aid='${flowServiceToSearch}']
    wait until page contains element    xpath://h2[contains(text(),'Start creating the FlowService')]


createFlowService  #Deprecated
    [Arguments]    ${flowServiceToCreate}
    wait until page contains element    xpath://span[contains(text(),'FlowServices')]
    click element    xpath://span[contains(text(),'FlowServices')]
    wait until page contains element    xpath://a[@class='delite-icon dlt-icon-plus']
    click element    xpath://a[@class='delite-icon dlt-icon-plus']
    click element    xpath://a[@class='driver-close-btn']
    wait until page contains element    xpath://h2[contains(text(),'Start creating the FlowService')]
    click element    xpath://input[@id='ut-input-field-displayname']
    input text    xpath://input[@id='ut-input-field-displayname']    ${flowServiceToCreate}
    click element   xpath://a[@class='ut-icon-action-bar_save dropdown']

selectMainTab
    [documentation]    Selects the tab as per the argument passed after login into wmio. Accepts tab name as argument. Argument is case sensitive
    [Arguments]    ${tabToBeSelected}
    wait until page contains element    xpath://li[@class='tab']//span[contains(text(),'${tabToBeSelected}')]
    wait until element is enabled    xpath://li[@class='tab']//span[contains(text(),'${tabToBeSelected}')]
    Sleep    5s
    click element    xpath://li[@class='tab']//span[contains(text(),'${tabToBeSelected}')]
    Wait Until Page Does Not Contain Element    ${PO_spinnerInConnectorPage}

SelectFlowServicesTab
    [documentation]    This keyword selects the FlowService tab after login
    wait until page contains element    ${PO_flowServicesTab}
    Sleep    3s
    click element    ${PO_flowServicesTab}

SelectConnectorsTab
    [documentation]    This keyword selects the Connectors tab after login
    wait until page contains element    ${PO_ConnectorsTab}
    wait until page contains element    ${PO_ConnectorsTab}
    Sleep    5s
    click element    ${PO_ConnectorsTab}
    Wait Until Page Does Not Contain Element    ${PO_spinnerInConnectorPage}
    Wait Until Page Does Not Contain Element    ${PO_secondSpinnerInConnectorPage}

CreateNewFlowService
    [documentation]    This keyword creates a new FlowService.
    SelectFlowServicesTab
    ${addFlowServiceButton}=    run keyword and return status    wait until page contains element    ${PO_addFlowServiceCommonButton}
    run keyword if    '${addFlowServiceButton}'=='True'    click element    ${PO_addFlowServiceCommonButton}    ELSE    FATAL ERROR    Unable to create Flow service!
    wait until page contains    Start creating the FlowService

SelectIntigrationTab
    [documentation]    this keyword will select the intigration tab
    wait until page contains element    ${PO_IntigrationTab}
    click element    ${PO_IntigrationTab}

SelectConnector
    [documentation]    This page selects connector in the first step of new flow. Accepts connector name as arguments
    [Arguments]    ${connectorName}
#    input text    ${PO_inputFirstFlowStep}    ${connectorName}
    wait until page contains element    ${PO_closeGuidedTour}
    click element    ${PO_closeGuidedTour}
    wait until page contains element    ${PO_inputFirstFlowStep}
    Sleep    3s
    click element    ${PO_inputFirstFlowStep}
    Sleep    2s
    click element    ${PO_allFunctions}
    click element    ${PO_apps}
    sleep   2s
    click element    ${PO_stepInputBox}
    input text  ${PO_stepInputBox}    ${connectorName}
    wait until page contains element    xpath://span[@class='item-name'][contains(text(),'${connectorName}')]
    click element    xpath://span[@class='item-name'][contains(text(),'${connectorName}')]

SelectAllConnectors
    [documentation]    This keyword selects all connector in the first step of new flow. 
#    [Arguments]    ${connectorName}
#    input text    ${PO_inputFirstFlowStep}    ${connectorName}
#    wait until page contains element    ${PO_closeGuidedTour}
#    click element    ${PO_closeGuidedTour}
    ${IsElementVisible}=  Run Keyword And Return Status    Element Should Be Visible   ${PO_closeGuidedTour}
    run keyword if    ${IsElementVisible}    click element    ${PO_closeGuidedTour}
    wait until page contains element    ${PO_inputFirstFlowStep}
    Sleep    3s
    click element    ${PO_inputFirstFlowStep}
    Sleep    2s
    click element    ${PO_allFunctions}
    click element    ${PO_apps}


SelectConnectorWithVersion
    [documentation]    This page selects connector in the first step of new flow. Accepts connector name and version as arguments
    [Arguments]    ${connectorName}    ${connectorNameWithVersion}
    ${elementVisible}=  Run Keyword And Return Status    Element Should Be Visible   ${PO_closeGuidedTour}
    run keyword if    ${elementVisible}    click element    ${PO_closeGuidedTour}
    wait until page contains element   ${PO_inputFirstFlowStep}
    Sleep    3s
    click element    ${PO_inputFirstFlowStep}
    Sleep    2s
    click element    ${PO_allFunctions}
    click element    ${PO_apps}
    click element    ${PO_stepInputBox}
    input text  ${PO_stepInputBox}    ${connectorName}
    wait until page contains element    xpath://i[@class='com.softwareag.cloudstreams.${connectorNameWithVersion} connector-icon']
    click element    xpath://i[@class='com.softwareag.cloudstreams.${connectorNameWithVersion} connector-icon']

SelectAction
    [documentation]    To select any predefined action from connector. Accepts action name as  an argument
    [Arguments]    ${actionName}
    wait until page contains element    ${PO_actionSelectionDropdown}
    click element    ${PO_actionSelectionDropdown}
    input text  ${PO_actionSelectionDropdown}    ${actionName}
    wait until page contains element    xpath://span[contains(text(),'${actionName}')]
    click element  xpath://span[contains(text(),'${actionName}')]

manualAccountConfiguration
    [documentation]    This keyword is used to select account configuration type.
    click element   ${PO_gotoAccountAddition}
    wait until page contains element    ${PO_configureAccount}
    click element   ${PO_configureAccount}
    wait until page contains element    ${PO_manualAuthorization}
    click element    ${PO_manualAuthorization}

DefaultAccountConfiguration
    [documentation]    This keyword is for default account selection
    click element   ${PO_gotoAccountAddition}
    wait until page contains element    ${PO_configureAccount}
    click element   ${PO_configureAccount}
    wait until page contains element    ${PO_defaultAuthorization}
    click element    ${PO_defaultAuthorization}

credentialAccountConfiguration
    [documentation]    This keyword is for credentials account selection
    click element   ${PO_gotoAccountAddition}
    wait until page contains element    ${PO_configureAccount}
    click element   ${PO_configureAccount}
    wait until page contains element    ${PO_credentialsAuthorization}
    click element   ${PO_credentialsAuthorization}

connectionAccountConfiguration
    [documentation]    This keyword is for connection account selection
    click element   ${PO_gotoAccountAddition}
    wait until page contains element    ${PO_configureAccount}
    click element   ${PO_configureAccount}
    wait until page contains element    ${PO_connectionAuthorization}
    click element   ${PO_connectionAuthorization}

jwtAccountConfiguration
    [documentation]    This keyword is for JWT account selection
    click element   ${PO_gotoAccountAddition}
    wait until page contains element    ${PO_configureAccount}
    click element   ${PO_configureAccount}
    wait until page contains element    ${PO_jwtSelection}
    click element   ${PO_jwtSelection}

navigateOAuthAccountConfigurationPage
    [documentation]    This keyword is for OAuth account selection
    click element   ${PO_gotoAccountAddition}
    wait until page contains element    ${PO_configureAccount}
    click element   ${PO_configureAccount}
    wait until page contains element    ${PO_OAuthConnectionTypeLink}
    mouse over    ${PO_OAuthConnectionTypeLink}
    wait until page contains element    ${PO_manualAuthorization}
    click element   ${PO_manualAuthorization}


editFlowServiceNameAndSave
    [documentation]    This keywords edits the name of FlowService and saves it. Accepts name of FlowService as argument
    [Arguments]    ${flowServiceNameToSave}
    wait until element is enabled    ${PO_FlowServiceName}
    clear element text    ${PO_FlowServiceName}
    input text    ${PO_FlowServiceName}    ${flowServiceNameToSave}
    press keys    ${PO_FlowServiceName}    RETURN
#    click element    xpath://a[@class='ut-icon-action-bar_save']
    wait until element is enabled    ${PO_saveFlowService}
    Sleep    8s
    click element    ${PO_saveFlowService}
    wait until page contains    Success


saveFlowService
    [documentation]    This keywords saves a flow service
    wait until element is enabled    ${PO_saveFlowService}
    Sleep    3s
    click element    ${PO_saveFlowService}
    wait until page contains    Success

runFlowService
    [documentation]    This keyword runs a flow service.
    wait until element is enabled    ${PO_runFlowService}
    Sleep    4s
    click element    ${PO_runFlowService}
    wait until page contains element    ${PO_runSuccess}
    sleep    3s
    click element   ${PO_close_button}

goBacktoFlowServices
    [documentation]    This keyword takes the user back to FlowServices page from a flowservice.
    wait until element is enabled    ${PO_backToFlowServices}
    Sleep    3s
    click element    ${PO_backToFlowServices}


deleteFlowService
    [documentation]    This keyword deletes a flowservice. Accepts the flowservice name as argument. The name is case sensitive
    [Arguments]    ${flowServiceToDelete}
    wait until page contains element    xpath://div[@title='${flowServiceToDelete}']//i[contains(@class,' dlt-icon-more-menu')]
    click element    xpath://div[@title='${flowServiceToDelete}']//i[contains(@class,' dlt-icon-more-menu')]
    wait until element is enabled    xpath://div[@aid='${flowServiceToDelete}']//span[@class='menu-title' and text()='Delete']
    Sleep    3s
    click element    xpath://div[@aid='${flowServiceToDelete}']//span[@class='menu-title' and text()='Delete']
    wait until page contains element    ${PO_deleteFlowServiceConfirmation}
    Sleep    3s
    click button    ${PO_deleteButton}
    wait until page contains    deleted successfully

deleteCustomOperation
    [documentation]    This Keyword is used to delete custom operation
    [arguments]    ${connectorName}    ${connectorNameWithVersion}
    wait until page contains element    ${PO_close_button}
    click element    ${PO_close_button}
    sleep    5s
    click element    xpath://span[@title='Edit ${connectorName}'][contains(text(),'${connectorName}')]
    click element    ${PO_allFunctions}
    click element    ${PO_apps}
    click element    xpath://div[@title="${connectorNameWithVersion}"]
    wait until page contains element    ${PO_saveFlowService}
    click element    ${PO_saveFlowService}
    sleep    10s
    wait until page contains element    ${PO_connectorDropdown}
    click element    ${PO_connectorDropdown}
    wait until page contains element    ${PO_delete_CustomOperation}
    click element    ${PO_delete_CustomOperation}
    wait until page contains element    ${PO_delete_CustomOperation_Confirm}
    click element    ${PO_delete_CustomOperation_Confirm}
    sleep    8s


deleteListOfCustomOperations
    [documentation]   this keyword deletes custom operations
    [Arguments]    ${connectorName}  ${connectorNameWithVersion}    @{CustOps}
    CreateNewFlowService
    wait until page contains element    ${PO_inputFirstFlowStep}
    Sleep    3s
    click element    ${PO_inputFirstFlowStep}
    Sleep    2s
    click element    ${PO_allFunctions}
    click element    ${PO_apps}
    click element    ${PO_stepInputBox}
    input text  ${PO_stepInputBox}    ${connectorName}
    wait until page contains element    xpath://i[@class='com.softwareag.cloudstreams.${connectorNameWithVersion} connector-icon']
    click element    xpath://i[@class='com.softwareag.cloudstreams.${connectorNameWithVersion} connector-icon']
    FOR    ${ops}   IN  @{CustOps}
             wait until page contains element    ${PO_actionSelectionDropdown}
             click element   ${PO_actionSelectionDropdown}
             sleep     2s
             input text  ${PO_actionSelectionDropdown}   ${ops}
             sleep   2s
             wait until page contains element    ${PO_delete_CustomOperation}
             click element    ${PO_delete_CustomOperation}
             wait until page contains element    ${PO_delete_CustomOperation_Confirm}
             Sleep  2s
             click element    ${PO_delete_CustomOperation_Confirm}
             Sleep   3s
    END
    navigateBackToDashboardWithoutSavingFlowService


deleteAllFlowServices
    [documentation]    This keyword deletes all flowservices
#    ${flowServicesEmpty}=    run keyword and return status    page should not contain    No FlowServices created yet!
    :FOR    ${ITR}  IN RANGE    1   50
    \    Sleep    8s
    \    ${flowServicesEmpty}=    run keyword and return status    page should not contain    No FlowServices created yet!
    \    Exit for loop if    '${flowServicesEmpty}'=='False'
    \    ${flowServicePresent}=    run keyword and return status    wait until page contains element    ${PO_hamburgerToDeleteEditFlowService}
    \    run keyword if    '${flowServicePresent}'=='True'    run keyword    deleteFlowService_Generic    ELSE    run keywords    Log    All flowservices are deleted    AND    Exit for loop

deleteFlowService_Generic
    [documentation]    This keyword deletes a random flowservice.
    wait until page contains element    ${PO_hamburgerToDeleteEditFlowService}
    Sleep    8s
    click element    ${PO_hamburgerToDeleteEditFlowService}
    wait until element is enabled    ${PO_deleteFlowService}
    Sleep    3s
    click element    ${PO_deleteFlowService}
    wait until page contains element    ${PO_deleteFlowServiceConfirmation}
    ${flowServiceIsUnlocked}    run keyword and return status    page should not contain    This FlowService cannot be deleted
    run keyword if    '${flowServiceIsUnlocked}'=='False'    FATAL ERROR    Flowservice is locked and cannot be deleted. Please check
    Sleep    3s
    click button    ${PO_deleteButton}
    wait until page contains    deleted successfully


cleanupDeleteAllFlowServices
    [documentation]    This keyword logs in, selects project and deletes all flow services
    loginWmio    ${env}
    selectProject    ${projectToSelect}
    selectMainTab    FlowServices
    deleteAllFlowServices
    logoutWmio

cleanupDeleteAllAccountsFromConnectorsTab
    [documentation]    This keyword logs in, selects project, goes to connectors tab and deletes all accounts.
    loginWmio    ${env}
    selectProject    ${projectToSelect}
    selectMainTab    Connectors
    deleteAllAccountsFromConnectorsTab
    logoutWmio


cleanupFlowServicesandAccounts
    [documentation]    This keyword logs in, selects project, deletes all flow services, goes to connectors tab and deletes all accounts.. Essentially a combination of cleanupDeleteAllFlowServices and cleanupDeleteAllAccountsFromConnectorsTab
    loginWmio    ${env}
    selectProject    ${projectToSelect}
    selectMainTab    FlowServices
    deleteAllFlowServices
    selectMainTab    Connectors
    deleteAllAccountsFromConnectorsTab
    logoutWmio



deleteAccountsFromConnectorsTab
    [documentation]    This keyword deletes the created accounts from connectors tab. Expects the name of connector as argument
    [Arguments]    ${connector}
    wait until page contains element    ${PO_connectorsSearchBox}
    input text    ${PO_connectorsSearchBox}    ${connector}
    wait until page contains element    xpath://span[contains(@title,'${connector}')]
    click element    xpath://span[contains(@title,'${connector}')]//..//span[@class="delite-icon dlt-icon-chevron-down icon-chevron-down"]
#    wait until page contains element    xpath://span[@class="predefined-inner-accounts-title truncate"][@title='Auto_1']
    wait until page contains element    ${PO_deleteConnection}
    mouse over    ${PO_deleteConnection}
    wait until page contains element    xpath://span[@class='delete-icon delite-icon dlt-icon-delete']
    click element    xpath://span[@class='delete-icon delite-icon dlt-icon-delete']
    wait until page contains    Are you sure you want to delete "${newCommonAccountName}" account ?
    click button    ${PO_deleteButton}
    wait until page contains    deleted successfully

deleteAllAccountsFromConnectorsTab
    [documentation]    This keyord deletes all created accounts from connectors tab.
#    ${firstConnectorIsPresent}=    Run Keyword And Return Status    wait until page contains element    xpath://span[1]//div[1]//div[1]//div[1]//div[1]//span[1]
#    Pass Execution If    '${firstConnectorIsPresent}'=='False'    There are no accounts in connectors tab to delete
    Sleep    8s
    ${AccountsPresent}=    run keyword and return status    page should not contain    No Accounts Yet!
    :FOR    ${ITR}  IN RANGE    1   7
    \    log    ${ITR}
    \    Exit for loop if    '${AccountsPresent}'=='False'
    \    ${AccountsPresent}=    run keyword and return status    page should not contain    No Accounts Yet!
    \    Exit for loop if    '${AccountsPresent}'=='False'
    \    ${Elementstatus}=    Run Keyword And Return Status    wait until page contains element    xpath://span[1]//div[1]//div[1]//div[1]//div[1]//span[1]
#    \    ${Elementstatus}=    Run Keyword And Return Status    Page Should Contain Element    xpath://span[1]//div[1]//div[1]//div[1]//div[1]//span[1]
    \    run keyword if    '${Elementstatus}'=='False'    Exit for loop
    \    ${EDIConnectorStatus}=    Run Keyword And Return Status    Page Should Contain Element    xpath://div[@class='predefined-connector-table-container']/span[1]/div[1]/div[1]/div[1]/div[1]/span[3][contains(text(),'Electronic Data Interchange (EDI)')]
#    \    run keyword if    '${Elementstatus}'=='True'and'${EDIConnectorStatus}'=='True'    run keywords    Set Local Variable    ${ITR}=    Evaluate    ${ITR} + 1    AND    Log    ${ITR}    AND    Exit for loop
    \    run keyword if    '${EDIConnectorStatus}'=='False'    deleteConnectorSpan1    ELSE    deleteConnectorSpan2


deleteAllAccountsFromConnectorsTab_deprecated
    wait until page contains element    xpath://span[1]//div[1]//div[1]//div[1]//div[1]//span[1]
    ${EDIConnectorStatus}=    Run Keyword And Return Status    Page Should Contain Element    xpath://div[@class='predefined-connector-table-container']/span[1]/div[1]/div[1]/div[1]/div[1]/span[3][contains(text(),'Electronic Data Interchange (EDI)')]
    run keyword if    '${EDIConnectorStatus}'=='True'    connectorSpan2    ELSE    connectorSpan1
    Log    ${PO_connectorToDelete}

deleteConnectorSpan1
    [documentation]    This keyword selects the span 1 in connectors page and deletes the accounts in it.
    ${PO_connectorToDelete}=    Set Variable    xpath://span[1]//div[1]//div[1]//div[1]//div[1]//span[1]
    ${firstConnectorIsPresent}=    Run Keyword And Return Status    wait until page contains element    ${PO_connectorToDelete}
    Exit For Loop If    '${firstConnectorIsPresent}'=='False'
    ${connectorIsActivated}=    Run Keyword And Return Status    Page Should Contain Element    xpath://span[1]//div[1]//div[1]//div[1]//div[1]//span[@class="delite-icon dlt-icon-chevron-up icon-chevron-down"]
    run keyword if    '${firstConnectorIsPresent}'=='True' and '${connectorIsActivated}'=='False'    click element    ${PO_connectorToDelete}
#    ${accountStatus}=    Run Keyword And Return Status    wait until page contains element   xpath://span[1]//div[2]//div[1]//div[1]//span[@class='predefined-inner-accounts-title truncate']    timeout=30s
    ${accountStatus}=    Run Keyword And Return Status    wait until page contains element   xpath://span[1]//div[2]//div[1]//div[1]//span[contains(text(),'${newCommonAccountName}')]    timeout=30s
#    run keyword if    '${accountStatus}'=='True'    mouse over    xpath://span[1]//div[2]//div[1]//div[1]//span[@class='predefined-inner-accounts-title truncate']    ELSE    Exit for loop
    run keyword if    '${accountStatus}'=='True'    mouse over    xpath://span[1]//div[2]//div[1]//div[1]//span[contains(text(),'${newCommonAccountName}')]    ELSE    Exit for loop
    Sleep    2s
    ${deleteIconPresent}=    Run Keyword And Return Status    wait until page contains element   xpath://span[1]//div[2]//div[1]//div[1]//div[1]//span[@class='delete-icon delite-icon dlt-icon-delete']    timeout=5s
    run keyword if    '${deleteIconPresent}'=='True'    click element    xpath://span[1]//div[2]//div[1]//div[1]//div[1]//span[@class='delete-icon delite-icon dlt-icon-delete']    ELSE    Exit for loop
    wait until page contains    Are you sure you want to delete "${newCommonAccountName}" account ?
    click element    ${PO_deleteButton}
    wait until page contains    deleted successfully
    Sleep    10s

deleteConnectorSpan2
    [documentation]    This keyword selects the span 2 in connectors page and deletes the accounts in it.
    ${PO_connectorToDelete}=    Set Variable    xpath://span[2]//div[1]//div[1]//div[1]//div[1]//span[1]
    ${secondConnectorIsPresent}=    Run Keyword And Return Status    wait until page contains element    ${PO_connectorToDelete}    timeout=10s
    Exit For Loop If    '${secondConnectorIsPresent}'=='False'
    ${connectorIsActivated}=    Run Keyword And Return Status    Page Should Contain Element    xpath://span[2]//div[1]//div[1]//div[1]//div[1]//span[@class="delite-icon dlt-icon-chevron-up icon-chevron-down"]
    run keyword if    '${secondConnectorIsPresent}'=='True' and '${connectorIsActivated}'=='False'    click element    ${PO_connectorToDelete}
#    ${accountStatus}=    Run Keyword And Return Status    wait until page contains element   xpath://span[2]//div[2]//div[1]//div[1]//span[@class='predefined-inner-accounts-title truncate']    timeout=30s
    ${accountStatus}=    Run Keyword And Return Status    wait until page contains element   xpath://span[2]//div[2]//div[1]//div[1]//span[contains(text(),'${newCommonAccountName}')]]    timeout=30s
#    continue For Loop If    '${accountStatus}'=='False'
#    run keyword if    '${accountStatus}'=='True'    mouse over    xpath://span[2]//div[2]//div[1]//div[1]//span[@class='predefined-inner-accounts-title truncate']    ELSE    Exit for loop
    run keyword if    '${accountStatus}'=='True'    mouse over    xpath://span[2]//div[2]//div[1]//div[1]//span[contains(text(),'${newCommonAccountName}')]    ELSE    Exit for loop
    Sleep    2s
    ${deleteIconPresent}=    Run Keyword And Return Status    wait until page contains element   xpath://span[2]//div[2]//div[1]//div[1]//div[1]//span[@class='delete-icon delite-icon dlt-icon-delete']    timeout=5s
    run keyword if    '${deleteIconPresent}'=='True'    click element    xpath://span[2]//div[2]//div[1]//div[1]//div[1]//span[@class='delete-icon delite-icon dlt-icon-delete']    ELSE    Exit for loop
#Alternate xpath to click on delete icon
#    click element    xpath://span[1]//div[2]//div[1]//div[1]//span[@class='predefined-inner-accounts-title truncate']//..//div//span[@class='delete-icon delite-icon dlt-icon-delete']
    wait until page contains    Are you sure you want to delete "${newCommonAccountName}" account ?
    click element    ${PO_deleteButton}
    wait until page contains    deleted successfully
    Sleep    10s

GetConnectorCount_FlowService
    [documentation]    This keyword counts the number of cloudstreams connectors in Flowservice and compares it to predefined value
	${Connectorcount} =  Get Element Count   xpath=//i[contains(@class,'com.softwareag.cloudstreams')]
	Should Be True  ${Connectorcount} > 55

SearchAndSelectAccountForFlowservice
    [documentation]    This keyword selects created Account
    [Arguments]    ${flowserviceStepNumber}     ${accountName}
    click element   xpath://div[@id="step-row-${flowserviceStepNumber}"]//i[@title="Select account"]
    wait until page contains element   ${PO_searchConnectionInFlowservicePage}
    click element    ${PO_searchConnectionInFlowservicePage}
    input text    ${PO_searchConnectionInFlowservicePage}    ${accountName}     clear=True
    wait until page contains element   xpath://span[@class='display-label'][contains(text(),'${accountName}')]
    click element    xpath://span[@class='display-label'][contains(text(),'${accountName}')]

SelectConnectorWithVersionInSteps
    [documentation]    This page selects connector in the second step of new flow. Accepts connector name and version as arguments
    [Arguments]    ${connectorName}    ${connectorNameWithVersion}    ${flowstepnumber}
#    input text    ${PO_inputFirstFlowStep}    ${connectorName}
    wait until page contains element   ${PO_flowServiceInSteps}
    Sleep    3s
    click element    ${PO_flowServiceInSteps}
    Sleep    2s
    click element    ${PO_allFunctions}
    click element    ${PO_apps}
    click element    ${PO_stepInputBox}
    input text    ${PO_stepInputBox}    ${connectorName}
    wait until page contains element    xpath:(//i[@class='com.softwareag.cloudstreams.${connectorNameWithVersion} connector-icon'])[${flowstepnumber}]
    click element    xpath:(//i[@class='com.softwareag.cloudstreams.${connectorNameWithVersion} connector-icon'])[${flowstepnumber}]

SelectActionInFlowserviceStep
    [documentation]    To select any predefined action from connector in second step. Accepts action name as  an argument
    [Arguments]    ${flowserviceStepNumber}    ${actionName}
    wait until page contains element    xpath://step-ui/div/div/step-ui[${flowserviceStepNumber}]//input[@placeholder='Type to choose action']
    click element    xpath://step-ui/div/div/step-ui[${flowserviceStepNumber}]//input[@placeholder='Type to choose action']
    input text  xpath://step-ui/div/div/step-ui[${flowserviceStepNumber}]//input[@placeholder='Type to choose action']    ${actionName}
    wait until page contains element    xpath://span[contains(text(),'${actionName}')]
    click element  xpath://span[contains(text(),'${actionName}')]


SelectServiceInFlowserviceStep
    [documentation]    This selects a service in flowservice step and configure pipeline for conversion
    [Arguments]    ${flowserviceStepNumber}    ${serviceName}
    wait until page contains element   ${PO_flowServiceInSteps}
    Sleep    3s
    click element    ${PO_flowServiceInSteps}
    Sleep    2s
    click element    ${PO_allFunctions}
    click element    ${PO_service}
    click element    ${PO_stepInputBox}
    input text  ${PO_stepInputBox}    ${serviceName}
    wait until page contains element    xpath://span[contains(text(),'${serviceName}')]
    click element  xpath://span[contains(text(),'${serviceName}')]

ConfigureStringToStreamServiceInFlowserviceStep
    [documentation]    This selects StringToStream service in flowservice step and configure pipeline for same
    [Arguments]    ${flowserviceStepNumber}    ${serviceName}   ${filePath}
    SelectServiceInFlowserviceStep  ${flowserviceStepNumber}    ${serviceName}
    wait until page contains element    xpath://step-ui/div/div/step-ui[${flowserviceStepNumber}]//span[@title='Edit Mapping']
    click element    xpath://step-ui/div/div/step-ui[${flowserviceStepNumber}]//span[@title='Edit Mapping']
    wait until page contains element    ${PO_stringLabelInStringToStreamServicePipeline}
    double click element    ${PO_stringLabelInStringToStreamServicePipeline}
    wait until page contains element    ${PO_stringValueInputFieldInPipelineOfStringToStreamService}
    input text    ${PO_textFieldInPipeline}   ${filePath}
    wait until page contains element    ${PO_saveButtonInPipeline}
    click button    ${PO_saveButtonInPipeline}
    wait until page contains element    ${PO_closePipeline}
    click element    ${PO_closePipeline}

ConfigureObjetToStringServiceInFlowserviceStep
    [documentation]    This selects ObjectToString service in flowservice step and configure pipeline for same
    [Arguments]    ${flowserviceStepNumber}    ${serviceName}
    SelectServiceInFlowserviceStep  ${flowserviceStepNumber}    ${serviceName}
    wait until page contains element    xpath://step-ui/div/div/step-ui[${flowserviceStepNumber}]//span[@title='Edit Mapping']
    click element    xpath://step-ui/div/div/step-ui[${flowserviceStepNumber}]//span[@title='Edit Mapping']
    wait until page contains element    ${PO_expandCol1P2InPipeline}
    click element    ${PO_expandCol1P2InPipeline}
    Sleep   3s
    drag and drop    ${PO_accountIDlabelInCol1ofPipeline}    ${PO_stringLabelInObjectToStringServicePipeline}
#    wait until page contains element    ${PO_saveButtonInPipeline}
#    click button    ${PO_saveButtonInPipeline}
    Sleep  3s
    wait until page contains element    ${PO_closePipeline}
    click element    ${PO_closePipeline}


navigateToAddCustomOperationPage
    [documentation]    This function will navigate you to add custom operation page from flow service page
    wait until page contains element    ${PO_actionSelectionDropdown}
    click element    ${PO_actionSelectionDropdown}
    wait until page contains element   ${PO_addCustomOperation}
    click element    ${PO_addCustomOperation}
    wait until page contains element    ${PO_connectToAccountLabel}

enableORdisableAccounts
    [documentation]    This keyword will disable and enable the existing accounts
    [Arguments]    ${accountName}   @{ConnectionNameToED}
    FOR    ${connector}   IN  @{ConnectionNameToED}
            sleep    4s
            wait until page contains element    ${PO_connectorsSearchBox}
            input text    ${PO_connectorsSearchBox}    ${connector}    clear=True
            wait until page contains element    xpath://span[contains(@title,'${connector}')]
            click element    xpath://span[contains(@title,'${connector}')]//..//span[@class="delite-icon dlt-icon-chevron-down icon-chevron-down"]
            wait until page contains element    xpath://span[contains(text(),"${accountName}")]
            mouse over    xpath://span[contains(text(),"${accountName}")]
            wait until page contains element    xpath://span[text()="${accountName}"]/..//span[@title=' Disable']
            click element    xpath://span[text()="${accountName}"]/..//span[@title=' Disable']
            wait until page contains element    xpath://span[text()="${accountName}"]/..//span[@title=' Enable']
            click element    xpath://span[text()="${accountName}"]/..//span[@title=' Enable']
    END

openExistingFloservice
	[documentation]    This keyword will open the existing flowservice
	[Arguments]    ${FlowServiceToOpen}
	wait until page contains element    ${PO_commonSearchBox}
    input text    ${PO_commonSearchBox}    ${FlowServiceToOpen}
    press keys    ${PO_commonSearchBox}    RETURN
    Sleep    2s
    wait until page contains element  xpath://span[contains(text(),'${FlowServiceToOpen}')]
    click element  xpath://span[contains(text(),'${FlowServiceToOpen}')]

navigateBackToDashboardWithoutSavingFlowService
    [documentation]    This keyword takes the user back to FlowServices page from a flowservice.
    wait until element is enabled    ${PO_backToFlowServices}
    Sleep    3s
    click element    ${PO_backToFlowServices}
    Sleep  3s
    wait until page contains element  ${PO_doNotSaveWorkflow}
    click element  ${PO_doNotSaveWorkflow}
    wait until page contains element  ${PO_flowServicesTab}

openExistingFloserviceAndrun
	[documentation]    This keyword will open the existing flow services and run them.
	[Arguments]    @{ExistingFlowServices}
	FOR    ${FlowServiceToOpen}   IN  @{ExistingFlowServices}
	            wait until page contains element    ${PO_commonSearchBox}
                input text    ${PO_commonSearchBox}    ${FlowServiceToOpen}
                press keys    ${PO_commonSearchBox}    RETURN
                Sleep    2s
                wait until page contains element  xpath://span[contains(text(),'${FlowServiceToOpen}')]
                click element  xpath://span[contains(text(),'${FlowServiceToOpen}')]
                runFlowService
                Sleep    3s
                click element    ${PO_backToFlowServices}
    END

openExistingWorkflowAndRun
	[documentation]    This keyword will open the existing workflow services and run them.
	[Arguments]    @{ExistingWrokflowFlowName}
	FOR    ${WorkflowToOpen}   IN  @{ExistingWrokflowFlowName}
            wait until page contains element  xpath://*[@title='${WorkflowToOpen}']//span[contains(text(),'Edit')]
            click element  xpath://*[@title='${WorkflowToOpen}']//span[contains(text(),'Edit')]
            sleep    3s
            wait until page contains element    ${PO_run_workflow}
            click element    ${PO_run_workflow}
            wait until page contains    Workflow testing started.
            wait until page contains    Workflow testing completed.
            sleep  15s
            wait until page contains element    ${PO_openWorkflowConsoleOutput}
            click element    ${PO_openWorkflowConsoleOutput}
            wait until page contains element    ${PO_veryfyExecutionoErrorlogs}
            click element    ${PO_veryfyExecutionoErrorlogs}
            wait until page contains     No logs available.
            wait until page contains element    ${PO_goBackToWorkflow}
            click element    ${PO_goBackToWorkflow}
    END


searchConnectorInConnectorsTab_And_NavigateToAddAccountWindow
    [documentation]    This keyword will navigate user to Add Account window of any conenctor in connectors tab
    [Arguments]    ${connector}
    wait until page contains element    ${PO_connectorSearchFieldBtn}
    click element   ${PO_connectorSearchFieldBtn}
    wait until page contains element    ${PO_connectorSearchField}
    input text    ${PO_connectorSearchField}    ${connector}
    wait until page contains element    (//*[text()='${connector}'])[1]
    double click element    (//*[text()='${connector}'])[1]
    wait until page contains element    ${PO_authorizationTypeDropdown}
    wait until page contains element    ${PO_expandBtnForAuthorizationTypeField}
    click element   ${PO_expandBtnForAuthorizationTypeField}
    wait until page contains element    ${PO_credTypeAuthInAddCustomOperationPage}
    click element  ${PO_credTypeAuthInAddCustomOperationPage}
    wait until element is enabled   ${PO_nextButton}
    click element   ${PO_nextButton}


getDataFromDB
    [documentation]    This Keyword fetches entries from db.
    [Arguments]    ${key}
    ${entry}=    Get Entries By Username    ${key}    first=True
    ${value}=    Get Entry Password    ${entry}
    return from keyword    ${value}

loadDB
    [documentation]    Loads the db.
    Open KeePass Database    ${DB}    keyfile=${keyfile}








