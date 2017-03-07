require 'test_helper'

class TempletsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @templet = templets(:one)
  end

  test "should get index" do
    get templets_url
    assert_response :success
  end

  test "should get new" do
    get new_templet_url
    assert_response :success
  end

  test "should create templet" do
    assert_difference('Templet.count') do
      post templets_url, params: { templet: { stutus: @templet.stutus, typename: @templet.typename } }
    end

    assert_redirected_to templet_url(Templet.last)
  end

  test "should show templet" do
    get templet_url(@templet)
    assert_response :success
  end

  test "should get edit" do
    get edit_templet_url(@templet)
    assert_response :success
  end

  test "should update templet" do
    patch templet_url(@templet), params: { templet: { stutus: @templet.stutus, typename: @templet.typename } }
    assert_redirected_to templet_url(@templet)
  end

  test "should destroy templet" do
    assert_difference('Templet.count', -1) do
      delete templet_url(@templet)
    end

    assert_redirected_to templets_url
  end
end
