*** Test Cases ***
Test Hello World Output
      [Documentation]                          Run the C++ Hello World program and verify output.
      ${result} =        Run Process          ./hello_test  cwd=${WORKSPACE}/CppRoboTest
      Should Contain     ${result.stdout}      Hello, World!
