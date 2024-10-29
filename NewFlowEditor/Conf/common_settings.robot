***Settings***
Library    SeleniumLibrary
Library    DateTime
Library    KeePassLibrary
Resource    ../PageObjects/default_po.robot
Resource    ../Keywords/default_keywords.robot
Resource    ../Keywords/marketo_keywords.robot
Resource    ../Keywords/jira_keywords.robot
Resource    ../Keywords/cumu_keywords.robot
Resource    ../Keywords/SalesforceCRMKeyword.robot
Resource    ../Keywords/sap_keywords.robot
Resource    ../Keywords/amazonSNS_keywords.robot
Resource    ../Keywords/amazonS3_keywords.robot
Resource    ../Keywords/MicrosoftCosmosDB_keywords.robot
Resource    ../Keywords/amazonSQS_keywords.robot
Resource    ../Keywords/shopify_keywords.robot
Resource    ../Keywords/coupaV28_keywords.robot
Resource    ../Keywords/acuityScheduling_keywords.robot
Resource    ../Keywords/amazonDynamoDB_keywords.robot
Resource    ../Keywords/NetSuite_keywords.robot
Resource    ../Keywords/OData_keywords.robot
Resource    ../Keywords/workday_keywords.robot

***Variables***

${browser}    chrome
#------------------------------------------------DEV---------------------------------------------------

#${wmioUrl_dev1}    https://wmiowst.dev-int-aws-us.webmethods.io/#/
#${uname_dev1}    wstuser
#${password_dev1}    Welcome@1234

${wmioUrl_dev1}    https://devrealm1.dev-int-aws-us.webmethods.io/#/
${uname_dev1}    wstbvtuser
${password_dev1}    Welcome@1234

${wmioUrl_dev2}    https://wmiosanity.dev-int-aws-us.webmethods.io/#/
${uname_dev2}    sannr
${password_dev2}    requiredme

${wmioUrl_dev3}    https://wmiocsc.dev-int-aws-us.webmethods.io/#/
${uname_dev3}   wmiocsc
${password_dev3}  ASDf!@#5

#--------------------------------------------INT-------------------------------------------------
#${wmioUrl_int}    https://sannr.int-aw-us.webmethods-int.io/#/
#${uname_int}    sannr@softwareag.com
#${password_int}    Santhu@456

#${wmioUrl_int}    https://wmiointwst.int-aw-us.webmethods-int.io/
#${uname_int}    wstuser
#${password_int}    Welcome@1234

${wmioUrl_int}    https://ipaasdev.int-aw-us.webmethods-int.io/#/
${uname_int}    wstbvtuser
${password_int}    Welcome@1234

#---------------------------------------------- STAGING----------------------------------------------
#${wmioUrl_stagblue}    https://wmiocscstag.stag-int-aws-us.webmethods.io/#/
#${uname_stagblue}    dillipkumar.palai@softwareag.com
#${password_stagblue}    Dillip@1234

#${wmioUrl_stagblue}    https://wmiowststg.stag-int-aws-us.webmethods.io/#/
#${uname_stagblue}    wstuser
#${password_stagblue}    Welcome@1234

${wmioUrl_stagblue}    https://ipaasprod.stag-int-aws-us.webmethods.io/#/
${uname_stagblue}    wstbvtuser
${password_stagblue}    Welcome@12345

#${wmioUrl_stagblue}    https://wstazurestage5.int-az-us.webmethods-stage.io/#/
#${uname_stagblue}    wstbvtuser
#${password_stagblue}    Welcome@1234

#${wmioUrl_staggreen}    https://b2baz02.int-az-us.webmethods-stage.io/#/
#${uname_staggreen}    bkum
#${password_staggreen}    Test@1234

${wmioUrl_staggreen}    https://wstazurestage7.int-az-us.webmethods-stage.io/#/
${uname_staggreen}    wstbvtuser
${password_staggreen}    Welcome@1234

#------------------------------------------------PRE-PROD---------------------------------------------------

#${wmioUrl_preprodblue}    https://wmiopreprodbluewst.preprod-int-aws-us.webmethods.io/#/
#${uname_preprodblue}    wstuser
#${password_preprodblue}    Welcome@1234

#${wmioUrl_preprodblue}    https://wmiopreprodwst.preprod-int-aws-us.webmethods.io/#/
#${uname_preprodblue}    wstuser
#${password_preprodblue}    Welcome@12345

${wmioUrl_preprodblue}    https://wmioazpreprod1.int-az-us.webmethods-preprod.io/
${uname_preprodblue}    wstbvtuser
${password_preprodblue}    Welcome@1234

${wmioUrl_preprogreen}     https://dedicatedtest1.preprod-int-aws-us.webmethods.io/
${uname_preprodgreen}    santhosh
${password_preprodgreen}    Welcome@1234

#------------------------------------------------PROD---------------------------------------------------
#${wmioUrl_prod}    https://wmioprodwst.int-aws-de.webmethods.io/#/
#${uname_prod}    wstuser
#${password_prod}    Welcome@12345!

#${wmioUrl_prod}    https://wstprod.int-aws-us.webmethods.io/
#${uname_prod}    wstbvtuser
#${password_prod}    Welcome@12345

#${wmioUrl_prod}    https://awsprodeu1.int-aws-de.webmethods.io/#/
#${uname_prod}    santhosh.k@softwareag.com
#${password_prod}    Test@12345

${wmioUrl_prod}    https://wstazureau2.int-az-au.webmethods.io/#/
${uname_prod}    wstbvtuser
${password_prod}    Welcome@1234




#${wmioUrl_prod}    https://wstazureprod.int-az-us.webmethods.io/
#${uname_prod}    wstbvtuser
#${password_prod}    Test@12345

#${wmioUrl_prod}    https://wstazureprodus.int-az-us.webmethods.io/
#${uname_prod}    wstbvtuser
#${password_prod}    Welcome@1234

#------------------------------------------------SPRO---------------------------------------------------
${wmioUrl_spro}    https://sprotest1705.spro-int-aws-us.webmethods.io/
${uname_spro}    vineelmanideep.b@softwareag.com
${password_spro}    Welcome@123




#Account name for all newly created accounts
${newCommonAccountName}    Auto_1
${newCommonAccountNameForHealthJob}    Auto_5


${projectToSelect}     CS_Engine_UI_Automation

${projectToSelectED}     CS_Engine_UI_AutomationED

${projectToSelectForExistFlows}    Karthik


#DB details
${DB}    ../../generic_config/Database.kdbx
${keyfile}    C:/DATA/keepass/Database.key

