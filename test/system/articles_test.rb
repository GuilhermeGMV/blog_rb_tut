require "application_system_test_case"
 
class ArticlesTest < ApplicationSystemTestCase
  test "creating an article" do
    visit articles_path
   
    click_on "New Article"
   
    fill_in "Title", with: "Creating an Article"
    fill_in "Body", with: "Created this article successfully!"
   
    click_on "Create Article"
   
    assert_text "Creating an Article"
  end
end