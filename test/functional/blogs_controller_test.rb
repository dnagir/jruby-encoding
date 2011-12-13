require 'test_helper'

class BlogsControllerTest < ActionController::TestCase
  test "should have configured encoding" do
    get :index
    # utf-8 != us-ascii
    assert_equal Rails.application.config.encoding.downcase, response.body.encoding.name.downcase
  end
end
