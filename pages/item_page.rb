module Pages

	class ItemPage
		def initialize(driver)
			@driver = driver
		end

		# List of Locators
		def get_title
			@driver.find_element(:id, "productTitle").text
		end

		def get_author
			@driver.find_element(:class, "author").text
		end

		def get_star_rating
			@driver.find_element(:xpath, "//span[@class= 'reviewCountTextLinkedHistogram noUnderline']").attribute("title")
		end

		def send_free_sample_button
			@driver.find_element(:id, "sendSampleButton-announce")
		end

		def get_editorial_reviews
			@driver.find_element(:xpath, "//h2[contains(text(), 'Editorial Reviews')]/following-sibling::div").text
		end

		def get_product_details
			@driver.find_element(:xpath, "//h2[contains(text(), 'Product details')]/following-sibling::div").text
		end

		def get_used_amount
			@driver.find_element(:class, "nav-search-scope")
		end

		def get_new_amount
			@driver.find_element(:class, "nav-search-scope")
		end

		def get_kindle_amount
			@driver.find_element(:xpath, "//div/span[text()='Kindle']/parent::div/following-sibling::div").text
		end

		def get_paperback_amount_range
			@driver.find_element(:xpath, "//div/span[text()='Paperback']/parent::div/following-sibling::div").text
		end

		def get_ebook_features
			@driver.find_element(:xpath, "//span[contains(text(), 'eBook features')]/following-sibling::ul").text
		end

		# List of operations
		def select_tab(value)
			case value
			when 'Kindle' || 'Other Sellers'
				@driver.find_elements(:xpath, "//span[text()='#{value}']")[1].click
			when 'Paperback'
				@driver.find_elements(:xpath, "//span[text()='#{value}']")[0].click
			else
				warn "The value should be either 'Kindle', 'Paperback' or 'Other Sellers'"
			end
		end
	end

end