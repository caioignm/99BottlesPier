require 'test_helper'

class VersesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @verse = verses(:one)
  end

  test "should get index" do
    get verses_url, as: :json
    assert_response :success
  end

  test "should show verse" do
    get verse_url(@verse), as: :json
    assert_response :success
  end
end
