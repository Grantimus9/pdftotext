require 'test_helper'

class PdfControllerTest < ActionDispatch::IntegrationTest
  test "should get retrieve" do
    get pdf_retrieve_url
    assert_response :success
  end

end
