require "application_system_test_case"

class IncidentsTest < ApplicationSystemTestCase
  setup do
    @incident = incidents(:one)
  end

  test "visiting the index" do
    visit incidents_url
    assert_selector "h1", text: "Incidents"
  end

  test "should create incident" do
    visit incidents_url
    click_on "New incident"

    fill_in "Desc", with: @incident.desc
    fill_in "Inc", with: @incident.inc_id
    fill_in "User name", with: @incident.user_name
    click_on "Create Incident"

    assert_text "Incident was successfully created"
    click_on "Back"
  end

  test "should update Incident" do
    visit incident_url(@incident)
    click_on "Edit this incident", match: :first

    fill_in "Desc", with: @incident.desc
    fill_in "Inc", with: @incident.inc_id
    fill_in "User name", with: @incident.user_name
    click_on "Update Incident"

    assert_text "Incident was successfully updated"
    click_on "Back"
  end

  test "should destroy Incident" do
    visit incident_url(@incident)
    click_on "Destroy this incident", match: :first

    assert_text "Incident was successfully destroyed"
  end
end
