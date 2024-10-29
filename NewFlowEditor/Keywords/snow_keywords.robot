***Settings***
Resource    ../Conf/common_settings.robot
#Resource    ../../PageObjects/default_po.robot

***keywords***

account_snow
    [documentation]    This keyword cretes an account for servicenow
    click element   xpath://input[@id='first-flow-step']
    Sleep    2s
    click element   xpath://span[contains(text(),'ALL')]
    click element   xpath://div[@id='APPS']
    click element   xpath://div[@id='filter-section']//input
    input text  xpath://div[@id='filter-section']//input    servicenow
    Sleep    5s
    click element   xpath://div[@title='ServiceNow Enterprise Service Management • V: Kingston']
  #action selection
    click element   xpath://input[@id='step-dropdown-input']
    input text  xpath://input[@id='step-dropdown-input']    listincidents
    Sleep    2s
    click element  xpath://span[contains(text(),'listIncidents')]
    click element   xpath://i[@title='Go to account']
    wait until page contains element    xpath://span[contains(text(),'Configure Accounts')]
    click element   xpath://span[contains(text(),'Configure Accounts')]
    wait until page contains element    xpath://a[contains(text(),'Credentials')]
    click element   xpath://a[contains(text(),'Credentials')]
    Sleep    2s
    input text  xpath://input[@name='Server URL']    ${snowServerURL}
    input text  xpath://input[@name='Username']  ${snowuid}
    input text  xpath://input[@name='Password']  ${snowpwd}
    click element   xpath://button[contains(text(),'Add')]
