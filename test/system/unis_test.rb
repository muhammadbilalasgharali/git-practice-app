require "application_system_test_case"

class UnisTest < ApplicationSystemTestCase
  setup do
    @uni = unis(:one)
  end

  test "visiting the index" do
    visit unis_url
    assert_selector "h1", text: "Unis"
  end

  test "creating a Uni" do
    visit unis_url
    click_on "New Uni"

    fill_in "Name", with: @uni.name
    click_on "Create Uni"

    assert_text "Uni was successfully created"
    click_on "Back"
  end

  test "updating a Uni" do
    visit unis_url
    click_on "Edit", match: :first

    fill_in "Name", with: @uni.name
    click_on "Update Uni"

    assert_text "Uni was successfully updated"
    click_on "Back"
  end

  test "destroying a Uni" do
    visit unis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Uni was successfully destroyed"
  end
end
