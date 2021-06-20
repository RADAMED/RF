*** Settings ***
Documentation  This is some basic info about the whole suite
Resource    ../Resources/Amazon.robot
Resource    ../Resources/Common.robot



*** Variables ***


*** Test Cases ***
User must sign in to check out
    [Documentation]               This is some basic info about the test
    [Tags]                        Smoke
    Begin Web Test
    Search For Products
    Select Product
    Add Product To Cart
    Begin Checkout
    End Web Test

