***Settings***
Resource    ../Conf/common_settings.robot
#Resource    ../PageObjects/default_po.robot

***keywords***

connectorSettings_Marketo
    [documentation]    This keyword is used in connector setting to select action and configure account in an existing workflow
    [Arguments]    ${selectConnector}	${selectAction}
    wait until page contains element    xpath://div[@data-eventmap="metadata-clickedActivity- (${selectConnector})"]
    mouse over    xpath://div[@data-eventmap="metadata-clickedActivity- (${selectConnector})"]
    click element    xpath://span[@title='Settings' and contains(@data-eventmap,"${selectConnector})")]
    Sleep    3s
    click element    xpath://div[contains(@class,'css-1wy0on6 select2-common__indicators')]	#${PO_select_action}
    input text    xpath://body//div[@id='activity-settings-modal']//input[@type='text']	${selectAction}
    press keys    xpath://body//div[@id='activity-settings-modal']//input[@type='text']    RETURN
    Sleep    2s
#    addAccountinWmio
