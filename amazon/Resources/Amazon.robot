*** Settings ***
Library  SeleniumLibrary

*** Keywords ***

Search for Products
    go to                        http://www.amazon.com
    Wait Until Page Contains     Panama
    Input Text                   twotabsearchtextbox  Ferrari 458
    Click Button                 ${SUBMIT_BUTTON}
    Wait Until Page Contains     "Ferrari 458"

Select Product
    Click Link                   css=#search > div.s-desktop-width-max.s-opposite-dir > div > div.s-matching-dir.sg-col-16-of-20.sg-col.sg-col-8-of-12.sg-col-12-of-16 > div > span:nth-child(4) > div.s-main-slot.s-result-list.s-search-results.sg-row > div:nth-child(2) > div > span > div > div > div > div > div:nth-child(3) > h2 > a
    Wait Until Page Contains     Back to results

Add Product to Cart
    Click Button                 id=add-to-cart-button
    Wait Until Page Contains     Added to Cart

Begin Checkout
    Click Link                   id=hlb-ptc-btn-native
    Page Should Contain Element  continue
    sleep                        3


*** Variables ***
${SUBMIT_BUTTON}                 //*[@id="nav-search-submit-button"]

