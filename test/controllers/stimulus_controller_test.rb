require "test_helper"

class StimulusControllerTest < ActionDispatch::IntegrationTest
  test "should get typed" do
    get stimulus_typed_url
    assert_response :success
  end
end
