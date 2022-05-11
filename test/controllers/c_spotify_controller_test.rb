require "test_helper"

class CSpotifyControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get c_spotify_home_url
    assert_response :success
  end
end
