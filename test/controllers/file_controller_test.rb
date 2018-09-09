require 'test_helper'

class FileControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get file_new_url
    assert_response :success
  end

end
