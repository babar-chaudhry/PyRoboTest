*** Settings ***
Library    Process
Library    OperatingSystem

#robot -d results Tests/hello_test.robot
#~/Library/Developer/Xcode/DerivedData
*** Test Cases ***
Test Hello World Output
    [Documentation]   Run the C++ Hello World program and verify output.
    ${workspace} =    Get Environment Variable    WORKSPACE
    ${result} =       Process.Run Process         ${workspace}/CppRobo/hello_test
    Should Contain    ${result.stdout}            Hello, World!


#*** Test Cases ***

#Test Hello World Output
#    [Documentation]   Run the C++ Hello World program and verify output.
#    ${result} =       Process.Run Process         /Users/babarcha/PyCharm/CppPyRoboTest/Tests/CppRobo
#    Should Contain    ${result.stdout}            Hello, World!