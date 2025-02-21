*** Settings ***
Library    Process

#robot -d results Tests/hello_test.robot
*** Test Cases ***
Test Hello World Output
      [Documentation]                          Run the C++ Hello World program and verify output.
      ${result} =        Run Process          ${WORKSPACE}/CppPyTest/CppRoboTest/CppRobo/hello_test
      Should Contain     ${result.stdout}      Hello, World!
