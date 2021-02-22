require 'test_helper'

class EventsSkipCollisionChecksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @events__skip_collision_check = events__skip_collision_checks(:one)
  end

  test 'should get index' do
    get events__skip_collision_checks_url
    assert_response :success
  end

  test 'should get new' do
    get new_events__skip_collision_check_url
    assert_response :success
  end

  test 'should create events__skip_collision_check' do
    assert_difference('EventsSkipCollisionCheck.count') do
      post events__skip_collision_checks_url, params: { events__skip_collision_check: {} }
    end

    assert_redirected_to events__skip_collision_check_url(EventsSkipCollisionCheck.last)
  end

  test 'should show events__skip_collision_check' do
    get events__skip_collision_check_url(@events__skip_collision_check)
    assert_response :success
  end

  test 'should get edit' do
    get edit_events__skip_collision_check_url(@events__skip_collision_check)
    assert_response :success
  end

  test 'should update events__skip_collision_check' do
    patch events__skip_collision_check_url(@events__skip_collision_check),
          params: { events__skip_collision_check: {} }
    assert_redirected_to events__skip_collision_check_url(@events__skip_collision_check)
  end

  test 'should destroy events__skip_collision_check' do
    assert_difference('EventsSkipCollisionCheck.count', -1) do
      delete events__skip_collision_check_url(@events__skip_collision_check)
    end

    assert_redirected_to events__skip_collision_checks_url
  end
end
