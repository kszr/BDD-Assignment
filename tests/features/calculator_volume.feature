Feature: Acceptance Test for the
  volume() function of Calculator
 
  Scenario: Calculate volume of "2" times "2" times "2" on our calculator
    Given I am using the calculator
    When I input volume "2" times "2" times "2"
    Then I should see "8"

 
  Scenario Outline: Calculate the volume of three numbers on our calculator
    Given I am using the calculator
    When I input volume "<input1>" times "<input2>" times "<input3>"
    Then I should see "<output>"

  Examples:
    | input1 | input2 | input3 | output |
    | 1      | 0      | 1      | 0      |
    | 2      | 3      | 4      | 24     |
    | 10     | 10     | 10     | 1000   |