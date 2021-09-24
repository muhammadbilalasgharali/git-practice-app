require "application_system_test_case"

class LaptopsTest < ApplicationSystemTestCase
  setup do
    @laptop = laptops(:one)
  end

  test "visiting the index" do
    visit laptops_url
    assert_selector "h1", text: "Laptops"
  end

  test "creating a Laptop" do
    visit laptops_url
    click_on "New Laptop"

    fill_in "Name", with: @laptop.name
    click_on "Create Laptop"

    assert_text "Laptop was successfully created"
    click_on "Back"
  end

  test "updating a Laptop" do
    visit laptops_url
    click_on "Edit", match: :first

    fill_in "Name", with: @laptop.name
    click_on "Update Laptop"

    assert_text "Laptop was successfully updated"
    click_on "Back"
  end

  test "destroying a Laptop" do
    visit laptops_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Laptop was successfully destroyed"
  end
end
