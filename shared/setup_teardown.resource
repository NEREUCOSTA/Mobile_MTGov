*** Settings ***
Library  AppiumLibrary
Resource  ../common/main.resource

** Variables ***
${PLATFORM_NAME}    Android
${DEVICE_NAME}      emulator-5554 
${APP_PATH}         C:/MTGOV_MOBILE/Apps/app.apk
${APP_PACKAGE}      br.gov.mt.cepromat.mtcidadao
${APP_ACTIVITY}     br.gov.mt.cepromat.mtcidadao.MainActivity

*** Keywords ***
abrir app
    Open Application    http://localhost:4723/wd/hub
    ...    deviceName=${DEVICE_NAME}
    ...    platformName=${PLATFORM_NAME}
    ...    app=${APP_PATH}
    ...    appPackage=${APP_PACKAGE}
    ...    appActivity=${APP_ACTIVITY}
    ...    uiautomator2ServerInstallTimeout=60000
    ...    adbExecTimeout=60000
    ...    autoGrantPermissions=true
    ...    isHeadless=true
    ...    uiautomator2ServerInstallTimeout=60000

    

fechar app
    clicar no botao inicio
    seleciono o icone do usuario
    Wait Until Element Is Visible    //android.widget.TextView[@text="SAIR"]
    Click Element    //android.widget.TextView[@text="SAIR"]
    Wait Until Element Is Visible    //android.widget.Button[@resource-id="android:id/button1"]
    Click Element    //android.widget.Button[@resource-id="android:id/button1"]
    o usuario esteja na Home do APP
    Close All Applications

# *** Variables ***
# ${BROWSERSTACK_USERNAME}      nereucostanoguei1
# ${BROWSERSTACK_ACCESS_KEY}    qyNiqcXezmuw8A53MkM1
# ${BROWSERSTACK_APP_URL}       bs://0fdae4713dd6fcbf44b67d703d932f20886a5b72
# ${DEVICE_NAME}                Google Pixel 7
# ${PLATFORM_NAME}              Android
# ${BROWSERSTACK_URL}           https://${BROWSERSTACK_USERNAME}:${BROWSERSTACK_ACCESS_KEY}@hub-cloud.browserstack.com/wd/hub

# *** Keywords ***
# abrir app
#     Open Application    ${BROWSERSTACK_URL}
#     ...    platformName=${PLATFORM_NAME}
#     ...    deviceName=${DEVICE_NAME}
#     ...    app=${BROWSERSTACK_APP_URL}
#     ...    automationName=UiAutomator2
#     ...    autoGrantPermissions=true
#     ...    newCommandTimeout=600

# fechar app
#     Close All Applications


