module Pages

	class HomePage
		def initialize(driver)
			@driver = driver
		end

		def navigate_to_homepage
			@driver.navigate.to 'https://www.amazon.com/'
		end

		def select_from_dropdown(value)
			@driver.find_element(:class, "nav-search-scope")
			@driver.find_element(:xpath, "//option[text()='#{value}']").click
		end

		def search_for(value)
			@driver.find_elements(:class, "nav-input")[1].send_keys(value)
			@driver.find_elements(:class, "nav-input")[0].click
		end

		def select_first_item
			@driver.find_elements(:xpath, "//li[@class = 's-result-item celwidget  ']/div//div[@class = 'a-row a-spacing-none']")[0].click
		end
	end

end