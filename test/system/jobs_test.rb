require "application_system_test_case"

class JobsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit root_url
    assert_selector "h1", text: "Junior and Entry Level Coding Jobs"
  end

  test "displays as many cards " do
    visit root_url
    assert_selector ".cards", count: 1
  end

  test "lets a signed in user create a new job" do
    login_as users(:claire)
    visit "/jobs/new"
    # save_and_open_screenshot

    fill_in "title", with: "Junior Developer"
    # save_and_open_screenshot

    click_on 'Submit'
    # save_and_open_screenshot

    # Should be redirected to Home with new job
    assert_equal root_path, page.current_path
    assert_text "Junior Coding Jobs"
  end

end
