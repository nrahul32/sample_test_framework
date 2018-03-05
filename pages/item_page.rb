module Pages

	class ItemPage
		def initialize(driver)
			@driver = driver
		end

		def get_title
			@driver.find_element(:id, "productTitle").text
		end

		def get_author
			@driver.find_element(:class, "author").text
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
	end

end