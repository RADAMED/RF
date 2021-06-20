*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
Begin Web Test
    Open Browser                 http://www.google.com    gc

End Web Test
    Close Browser