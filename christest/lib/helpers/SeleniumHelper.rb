require "selenium-webdriver"

class SeleniumHelper
    attr_accessor :driver

    def self.create_instance
        @driver = Selenium::WebDriver.for :firefox
    end

    def self.get_new_webpage
        create_instance
        @driver.get("http://www.dogpile.com")
        puts("Found Dogpile.")
    end
    
    def self.enter_search_string(search_string)
        @driver.find_element(:xpath, "//input[@id='q']").send_keys(search_string);
    end   

    def self.search_for_string(new_search_string)
        enter_search_string(new_search_string)
        @driver.find_element(:xpath, "//button[contains(@class, 'search-form')]").click();
    end       

    def self.close_browser
        @driver.quit
    end
end