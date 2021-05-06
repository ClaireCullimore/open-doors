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

    fill_in "job_title", with: "Junior Developer"
    fill_in "job_company", with: "Facebook"
    select "Freelance", from: "job_terms"
    fill_in "job_description", with: "Great Job. React skills"
    fill_in "job_location", with: "London"
    # save_and_open_screenshot

    click_on 'Create Job'
    # save_and_open_screenshot

    # Should be redirected to Home with new job
    assert_equal root_path, jobs_path
    assert_text "Job was successfully created"
  end
end
