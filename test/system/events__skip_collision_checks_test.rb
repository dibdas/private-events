require 'application_system_test_case'

class EventsSkipCollisionChecksTest < ApplicationSystemTestCase
  setup do
    @events__skip_collision_check = events__skip_collision_checks(:one)
  end

  test 'visiting the index' do
    visit events__skip_collision_checks_url
    assert_selector 'h1', text: 'Events Skip Collision Checks'
  end

  test 'creating a Events  skip collision check' do
    visit events__skip_collision_checks_url
    click_on 'New Events Skip Collision Check'

    click_on 'Create Events  skip collision check'

    assert_text 'Events  skip collision check was successfully created'
    click_on 'Back'
  end

  test 'updating a Events  skip collision check' do
    visit events__skip_collision_checks_url
    click_on 'Edit', match: :first

    click_on 'Update Events  skip collision check'

    assert_text 'Events  skip collision check was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Events  skip collision check' do
    visit events__skip_collision_checks_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Events  skip collision check was successfully destroyed'
  end
end
