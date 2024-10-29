***Settings***
Resource    ../Conf/common_settings.robot
#Resource    ../../PageObjects/default_po.robot

***keywords***

addAccount_MicrosoftCosmosDB
    [documentation]    To create an account for Microsoft Cosmos DB connector
    wait until page contains element    ${PO_connectionAccountName}
    input text    ${PO_connectionAccountName}    ${newCommonAccountName}    clear=True
    input text    ${PO_serverUrl}    ${CosmosDBServerURL}    clear=True
    input text    ${PO_accessKey}    ${CosmosDBAccessKey}
    wait until element is enabled    ${PO_addButton}
    click button    ${PO_addButton}
    wait until page contains    successfully