require "test_helper"

class EventItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    sign_in users(:one)
    @event_item = event_items(:one)
  end

  test "should get new" do
    get new_event_event_item_url(events(:one))
    assert_response :success
  end

  test "should create event_item" do
    assert_difference("EventItem.count") do
      post event_event_items_url(events(:one)), params: { event_item: { name: @event_item.name, time: @event_item.time } }
    end

    assert_redirected_to event_url(events(:one))
  end

  test "should get edit" do
    get edit_event_event_item_url(events(:one), @event_item)
    assert_response :success
  end

  test "should update event_item" do
    patch event_event_item_url(events(:one), @event_item), params: { event_item: { event_id: @event_item.event_id, name: @event_item.name, time: @event_item.time } }
    assert_redirected_to event_url(events(:one))
  end

  test "should destroy event_item" do
    assert_difference("EventItem.count", -1) do
      delete event_event_item_url(events(:one), @event_item)
    end

    assert_redirected_to event_url(events(:one))
  end
end
