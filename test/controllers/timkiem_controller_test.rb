require 'test_helper'

class TimkiemControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get timkiem_index_url
    assert_response :success
  end

end
