require "application_system_test_case"

class EventItemsTest < ApplicationSystemTestCase
  setup do
    sign_in users(:one)
    @event_item = event_items(:one)
  end

  test "should create event item" do
    visit event_url(events(:one))
    click_on "Add Event Item"

    fill_in "Name", with: @event_item.name
    fill_in "Time", with: @event_item.time
    click_on "Create Event item"

    assert_text "Event item was successfully created"
    click_on "Back"
  end

  test "should update Event item" do
    visit event_url(events(:one))
    click_on "Edit this event item", match: :first

    fill_in "Name", with: @event_item.name
    fill_in "Time", with: Time.now.strftime("%H:%M:%S")
    click_on "Update Event item"

    assert_text "Event item was successfully updated"
    click_on "Back"
  end

  test "should destroy Event item" do
    visit event_url(events(:one))
    click_on "Delete this event item", match: :first

    assert_text "Event item was successfully destroyed"
  end
end
