This is a test framework built using rspec. Having written this for demonstration, I have included only a few operations in it.

I have used the Page Object model. All the locators and operations to be performed in a page can be found in the corresponding class under the Pages module(pages folder).

The spec currently has 1 test that searches for an item in Amazon.com and reads most of the details from the page. The method names used are self explainatory. I have added 2 navigations - one to transition to the item page and other to switch tabs(kindle, paperback). I have added a few assertions using includes and equality operators.

Language used: Ruby

Gems required: RSpec

Command to run: rspec spec/example_test.rb 

Output:

Title is: Catalog It!: A Guide to Cataloging School Library Materials, 3rd Edition

By: Allison G. Kaplan (Author)

.

Finished in 31.62 seconds (files took 0.46996 seconds to load)
1 example, 0 failures
