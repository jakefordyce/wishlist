require "application_system_test_case"

class CollabRequestsTest < ApplicationSystemTestCase
  setup do
    @collab_request = collab_requests(:one)
  end

  test "visiting the index" do
    visit collab_requests_url
    assert_selector "h1", text: "Collab Requests"
  end

  test "creating a Collab request" do
    visit collab_requests_url
    click_on "New Collab Request"

    click_on "Create Collab request"

    assert_text "Collab request was successfully created"
    click_on "Back"
  end

  test "updating a Collab request" do
    visit collab_requests_url
    click_on "Edit", match: :first

    click_on "Update Collab request"

    assert_text "Collab request was successfully updated"
    click_on "Back"
  end

  test "destroying a Collab request" do
    visit collab_requests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Collab request was successfully destroyed"
  end
end
