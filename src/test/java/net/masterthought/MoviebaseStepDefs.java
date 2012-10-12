package net.masterthought;

import cucumber.annotation.After;
import cucumber.annotation.en.Given;
import cucumber.annotation.en.Then;
import cucumber.annotation.en.When;
import org.hamcrest.CoreMatchers;
import org.openqa.selenium.By;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;

import static org.junit.Assert.assertThat;
import static org.junit.Assert.fail;

public class MoviebaseStepDefs {

    private WebDriver webDriver;

    @After
    public void after(){
        webDriver.quit();
    }

    @Given("^I visit the Moviebase homepage$")
    public void I_visit_the_Moviebase_homepage() throws Throwable {
        webDriver = new FirefoxDriver();
        webDriver.get("http://www.masterthought.net:8082/moviebase");
    }

    @When("^I search for the movie with title '(.+)'$")
    public void I_search_for_the_movie_with_title_The_Matrix(String movie) throws Throwable {
        WebElement searchInputField = webDriver.findElement(By.id("search_form:search_input"));
        searchInputField.sendKeys(movie);
        WebElement searchButton = webDriver.findElement(By.id("search_form:search_btn"));
        searchButton.click();
    }

    @Then("^I should be able to see the movie's image in the results page$")
    public void I_should_be_able_to_see_the_movie_s_image_in_the_results_page() throws Throwable {
        try{
            WebElement image = webDriver.findElement(By.xpath("/html/body/div[2]/div/ul/li/img"));
            assertThat(image, CoreMatchers.notNullValue());
        } catch(NoSuchElementException e){
            fail("Movie image not found");
        }

    }
}
