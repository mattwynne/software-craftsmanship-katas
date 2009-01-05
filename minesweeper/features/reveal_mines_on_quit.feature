Feature: Reveal Mines on Quit
  In order to reveal the solution to the puzzle
  As a player
  I want the entire board to be revealed to me when I quit the game

  Scenario: Empty minefield
    Given I have a 5 x 3 gameboard
    When I quit the game
    Then I should see the following output
      """
      .....
      .....
      .....
      """

  Scenario: Place Single Mine on small Gameboard
    Given I have a 3 x 2 gameboard
    And there is a mine at co-ordinates (2, 1)
    When I quit the game
    Then I should see the following output
      """
      1*1
      111
      """
