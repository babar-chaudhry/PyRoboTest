*** Settings ***
Library    Process
Library    OperatingSystem

*** Test Cases ***
Test Hello World Output
    [Documentation]    Run the C++ Hello World program and verify output.
    ${workspace} =    Get Environment Variable    WORKSPACE
    ${result} =       Process.Run Process    ${workspace}/CppRobo/hello_test
    Should Contain    ${result.stdout}    Hello, World!
