Feature: Moviebase Search movie
    As a Moviebase user
    I want to search a movie based on its name
    In order to retrieve information related to this movie

@moviebase
Scenario: Display movie image in results

    Given I visit the Moviebase homepage
    When I search for the movie with title 'The Matrix'
    Then I should be able to see the movie's image in the results page