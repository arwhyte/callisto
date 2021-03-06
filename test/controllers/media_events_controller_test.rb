require 'test_helper'

class MediaEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @media_event = media_events(:one)
  end

  test "should get index" do
    get media_events_url
    assert_response :success
  end

  test "should get new" do
    get new_media_event_url
    assert_response :success
  end

  test "should create media_event" do
    assert_difference('MediaEvent.count') do
      post media_events_url, params: { media_event: { action: @media_event.action, actor_id: @media_event.actor_id, object_id: @media_event.object_id } }
    end

    assert_redirected_to media_event_url(MediaEvent.last)
  end

  test "should show media_event" do
    get media_event_url(@media_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_media_event_url(@media_event)
    assert_response :success
  end

  test "should update media_event" do
    patch media_event_url(@media_event), params: { media_event: { action: @media_event.action, actor_id: @media_event.actor_id, object_id: @media_event.object_id } }
    assert_redirected_to media_event_url(@media_event)
  end

  test "should destroy media_event" do
    assert_difference('MediaEvent.count', -1) do
      delete media_event_url(@media_event)
    end

    assert_redirected_to media_events_url
  end
end
