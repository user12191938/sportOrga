require 'test_helper'

class SportFacilitiesControllerTest < ActionController::TestCase
  setup do
    @sport_facility = sport_facilities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sport_facilities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sport_facility" do
    assert_difference('SportFacility.count') do
      post :create, sport_facility: { address: @sport_facility.address, city: @sport_facility.city, description: @sport_facility.description, events: @sport_facility.events, imagePath: @sport_facility.imagePath, name: @sport_facility.name, openingHours: @sport_facility.openingHours, plz: @sport_facility.plz, price: @sport_facility.price, sportTypes: @sport_facility.sportTypes }
    end

    assert_redirected_to sport_facility_path(assigns(:sport_facility))
  end

  test "should show sport_facility" do
    get :show, id: @sport_facility
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sport_facility
    assert_response :success
  end

  test "should update sport_facility" do
    put :update, id: @sport_facility, sport_facility: { address: @sport_facility.address, city: @sport_facility.city, description: @sport_facility.description, events: @sport_facility.events, imagePath: @sport_facility.imagePath, name: @sport_facility.name, openingHours: @sport_facility.openingHours, plz: @sport_facility.plz, price: @sport_facility.price, sportTypes: @sport_facility.sportTypes }
    assert_redirected_to sport_facility_path(assigns(:sport_facility))
  end

  test "should destroy sport_facility" do
    assert_difference('SportFacility.count', -1) do
      delete :destroy, id: @sport_facility
    end

    assert_redirected_to sport_facilities_path
  end
end
