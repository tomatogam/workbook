require 'test_helper'

class PostChaptersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get post_chapters_new_url
    assert_response :success
  end

  test "should get create" do
    get post_chapters_create_url
    assert_response :success
  end

  test "should get destroy" do
    get post_chapters_destroy_url
    assert_response :success
  end

end
