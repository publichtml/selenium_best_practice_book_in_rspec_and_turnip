require "selenium-webdriver"

describe "Cheese Finder" do
  it "find some cheese" do
    selenium = Selenium::WebDriver.for(:firefox)
    selenium.get("http://awful-valentine.com")
    selenium.find_element(:id, "searchinput").clear
    selenium.find_element(:id, "searchinput").send_keys("cheese")
    selenium.find_element(:id, "searchsubmit").click
    expect(selenium.find_element(:class, "entry").text.include?("No Results Found")).to be_truthy
    selenium.quit
  end
end
