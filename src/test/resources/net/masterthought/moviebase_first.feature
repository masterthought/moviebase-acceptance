Feature: Moviebase Search movie
    As a Moviebase user
    I want to search a movie based on its name
    In order to retrieve information related to this movie

Scenario: Retrieve movie image
    Given I open Firefox
    And I go to http://www.masterthought.net:8082/moviebase
    And I can see the search textbox
    And I type 'The Matrix' in the textbox
    When I click the button
    And I wait for the results to appear
    Then I can see the WebElement '<img src=​"http:​/​/​img.freebase.com/​api/​trans/​image_thumb/​m/​07cz2" alt=​"The Matrix">​'