***Settings***
Resource    ../Conf/common_settings.robot


***keywords***


addAccount_Jira
    [documentation]    To create an account for Jira connector
    wait until page contains element    ${PO_connectionAccountName}
    Press Keys  ${PO_connectionAccountName}  CTRL+a+DELETE
    input text    ${PO_connectionAccountName}    ${newCommonAccountName}
    ${jiraServerURL}    getDataFromDB    Con2.serverURL
    ${jiraUsername}    getDataFromDB    Con2.username
    ${jiraPwd}    getDataFromDB    Con2.password
    Press Keys  ${PO_serverUrl}  CTRL+a+DELETE
    input text    ${PO_serverUrl}    ${jiraServerURL}
    input text    ${PO_addAccountUserName}    ${jiraUsername}
    input text    ${PO_addAccountAPIKey}    ${jiraPwd}
    wait until element is enabled    ${PO_addButton}
    click button    ${PO_addButton}
    wait until page contains    successfully