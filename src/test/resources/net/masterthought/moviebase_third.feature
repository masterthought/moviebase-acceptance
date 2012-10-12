Feature: Moviebase Search movie
    As a Moviebase user
    I want to search a movie based on its name
    In order to retrieve information related to this movie

@moviebase
Scenario: Display movie image in results

    Given I visit the Moviebase homepage
    When I search for the movie with title 'The Matrix'
    Then I should be able to see the movie's image in the results page

Scenario: Display movie Ratings in results

    Given I visit the Moviebase homepage
    When I search for the movie with title 'The Matrix'
    Then I should be able to see the movie's ratings in the results page

Scenario: Display Movie Director's image and name in results

    Given I visit the Moviebase homepage
    When I search for the movie with title 'The Matrix'
    Then I should be able to see the image of the director
    And I should be able to see 'Andy Wachowski' as the name of the director

Scenario: Display other movies from the same director in results

    Given I visit the Moviebase homepage
    When I search for the movie with title 'The Matrix'
    Then I should be able to see the image of the director
    And I should be able to see other movies from the same director such as:
    |"The Matrix Reloaded"   |
    |"Speed Racer"           |
    |"The Matrix"            |
    |"The Animatrix"         |
    |"Bound"                 |
    |"The Matrix series"     |
    |"The Matrix Revolutions"|




