require 'selenium-webdriver'
require 'spec_helper'
require 'pry'
require_relative '../pages/home_page.rb'
require_relative '../pages/item_page.rb'

describe "Read the details of a product from Amazon" do

  before(:all) {
    @driver=Selenium::WebDriver.for :chrome
    @driver.manage.window.maximize
    @home_page = Pages::HomePage.new(@driver)
    @item_page = Pages::ItemPage.new(@driver)
  }

  after(:all) {
    @driver.quit
  }

  context "Fetch details of an item" do
    it "Searches for a text in the books in amazon homepage and get details of the 1st result" do
      @home_page.navigate_to_homepage
      @home_page.select_from_dropdown('Books')
      @home_page.search_for('data catalog')
      sleep 2
      @home_page.select_first_item

      # get all the details and store in the variables
      @title                  = @item_page.get_title
      @author                 = @item_page.get_author
      @editorial_reviews      = @item_page.get_editorial_reviews
      @product_details        = @item_page.get_product_details
      @kindle_amount          = @item_page.get_kindle_amount
      @paperback_amount_range = @item_page.get_paperback_amount_range

      # switch to Kindle tab and then get details from that page, then reswitch tab
      @item_page.select_tab("Kindle")
      @get_ebook_features     = @item_page.get_ebook_features
      @item_page.select_tab("Paperback")

      # print title and author on the screen
      puts "Title is: #{@title}"
      puts "- #{@author}"

      # the above variables can also be used to make validations
      expect(@product_details).to include('Language')
      expect(@kindle_amount).to include('$')
    end
  end

end
