require 'test_helper'

class SportDoctorsControllerTest < ActionController::TestCase
  setup do
    @sport_doctor = sport_doctors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sport_doctors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sport_doctor" do
    assert_difference('SportDoctor.count') do
      post :create, sport_doctor: { address: @sport_doctor.address, city: @sport_doctor.city, description: @sport_doctor.description, imagePath: @sport_doctor.imagePath, name: @sport_doctor.name, plz: @sport_doctor.plz, price: @sport_doctor.price, profession: @sport_doctor.profession, subjectArea: @sport_doctor.subjectArea, surname: @sport_doctor.surname }
    end

    assert_redirected_to sport_doctor_path(assigns(:sport_doctor))
  end

  test "should show sport_doctor" do
    get :show, id: @sport_doctor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sport_doctor
    assert_response :success
  end

  test "should update sport_doctor" do
    put :update, id: @sport_doctor, sport_doctor: { address: @sport_doctor.address, city: @sport_doctor.city, description: @sport_doctor.description, imagePath: @sport_doctor.imagePath, name: @sport_doctor.name, plz: @sport_doctor.plz, price: @sport_doctor.price, profession: @sport_doctor.profession, subjectArea: @sport_doctor.subjectArea, surname: @sport_doctor.surname }
    assert_redirected_to sport_doctor_path(assigns(:sport_doctor))
  end

  test "should destroy sport_doctor" do
    assert_difference('SportDoctor.count', -1) do
      delete :destroy, id: @sport_doctor
    end

    assert_redirected_to sport_doctors_path
  end
end
