require 'test_helper'

class GameserverinfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gameserverinfo = gameserverinfos(:one)
  end

  test "should get index" do
    get gameserverinfos_url, as: :json
    assert_response :success
  end

  test "should create gameserverinfo" do
    assert_difference('Gameserverinfo.count') do
      post gameserverinfos_url, params: { gameserverinfo: { serveraddress: @gameserverinfo.serveraddress, servername: @gameserverinfo.servername } }, as: :json
    end

    assert_response 201
  end

  test "should show gameserverinfo" do
    get gameserverinfo_url(@gameserverinfo), as: :json
    assert_response :success
  end

  test "should update gameserverinfo" do
    patch gameserverinfo_url(@gameserverinfo), params: { gameserverinfo: { serveraddress: @gameserverinfo.serveraddress, servername: @gameserverinfo.servername } }, as: :json
    assert_response 200
  end

  test "should destroy gameserverinfo" do
    assert_difference('Gameserverinfo.count', -1) do
      delete gameserverinfo_url(@gameserverinfo), as: :json
    end

    assert_response 204
  end
end
