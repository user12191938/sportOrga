require 'test_helper'

class SportClubsControllerTest < ActionController::TestCase
  setup do
    @sport_club = sport_clubs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sport_clubs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sport_club" do
    assert_difference('SportClub.count') do
      post :create, sport_club: { address: @sport_club.address, city: @sport_club.city, description: @sport_club.description, imagePath: @sport_club.imagePath, matchSchedule: @sport_club.matchSchedule, name: @sport_club.name, news: @sport_club.news, plz: @sport_club.plz, price: @sport_club.price, sportFacility: @sport_club.sportFacility, sportTypes: @sport_club.sportTypes, squad: @sport_club.squad, table: @sport_club.table, trainingHours: @sport_club.trainingHours, website: @sport_club.website, youthSquads: @sport_club.youthSquads }
    end

    assert_redirected_to sport_club_path(assigns(:sport_club))
  end

  test "should show sport_club" do
    get :show, id: @sport_club
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sport_club
    assert_response :success
  end

  test "should update sport_club" do
    put :update, id: @sport_club, sport_club: { address: @sport_club.address, city: @sport_club.city, description: @sport_club.description, imagePath: @sport_club.imagePath, matchSchedule: @sport_club.matchSchedule, name: @sport_club.name, news: @sport_club.news, plz: @sport_club.plz, price: @sport_club.price, sportFacility: @sport_club.sportFacility, sportTypes: @sport_club.sportTypes, squad: @sport_club.squad, table: @sport_club.table, trainingHours: @sport_club.trainingHours, website: @sport_club.website, youthSquads: @sport_club.youthSquads }
    assert_redirected_to sport_club_path(assigns(:sport_club))
  end

  test "should destroy sport_club" do
    assert_difference('SportClub.count', -1) do
      delete :destroy, id: @sport_club
    end

    assert_redirected_to sport_clubs_path
  end
end
