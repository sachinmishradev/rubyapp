require "application_system_test_case"

class AutosTest < ApplicationSystemTestCase
  setup do
    @auto = autos(:one)
  end

  test "visiting the index" do
    visit autos_url
    assert_selector "h1", text: "Autos"
  end

  test "creating a Auto" do
    visit autos_url
    click_on "New Auto"

    fill_in "Auto No", with: @auto.auto_no
    fill_in "Balance", with: @auto.balance
    fill_in "Daily Pay", with: @auto.daily_pay
    fill_in "Driver Address", with: @auto.driver_address
    fill_in "Driver Mobile No", with: @auto.driver_mobile_no
    fill_in "Driver Name", with: @auto.driver_name
    click_on "Create Auto"

    assert_text "Auto was successfully created"
    click_on "Back"
  end

  test "updating a Auto" do
    visit autos_url
    click_on "Edit", match: :first

    fill_in "Auto No", with: @auto.auto_no
    fill_in "Balance", with: @auto.balance
    fill_in "Daily Pay", with: @auto.daily_pay
    fill_in "Driver Address", with: @auto.driver_address
    fill_in "Driver Mobile No", with: @auto.driver_mobile_no
    fill_in "Driver Name", with: @auto.driver_name
    click_on "Update Auto"

    assert_text "Auto was successfully updated"
    click_on "Back"
  end

  test "destroying a Auto" do
    visit autos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Auto was successfully destroyed"
  end
end
