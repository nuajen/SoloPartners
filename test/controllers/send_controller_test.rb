require 'test_helper'

class SendControllerTest < ActionDispatch::IntegrationTest
  test "should get contact" do
    get send_contact_url
    assert_response :success
  end

end
