require 'test_helper'

class SportTrainersControllerTest < ActionController::TestCase
  setup do
    @sport_trainer = sport_trainers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sport_trainers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sport_trainer" do
    assert_difference('SportTrainer.count') do
      post :create, sport_trainer: { address: @sport_trainer.address, city: @sport_trainer.city, description: @sport_trainer.description, focus: @sport_trainer.focus, imagePath: @sport_trainer.imagePath, name: @sport_trainer.name, officeHours: @sport_trainer.officeHours, phone: @sport_trainer.phone, plz: @sport_trainer.plz, price: @sport_trainer.price, sportFacility: @sport_trainer.sportFacility, subjectArea: @sport_trainer.subjectArea, surname: @sport_trainer.surname }
    end

    assert_redirected_to sport_trainer_path(assigns(:sport_trainer))
  end

  test "should show sport_trainer" do
    get :show, id: @sport_trainer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sport_trainer
    assert_response :success
  end

  test "should update sport_trainer" do
    put :update, id: @sport_trainer, sport_trainer: { address: @sport_trainer.address, city: @sport_trainer.city, description: @sport_trainer.description, focus: @sport_trainer.focus, imagePath: @sport_trainer.imagePath, name: @sport_trainer.name, officeHours: @sport_trainer.officeHours, phone: @sport_trainer.phone, plz: @sport_trainer.plz, price: @sport_trainer.price, sportFacility: @sport_trainer.sportFacility, subjectArea: @sport_trainer.subjectArea, surname: @sport_trainer.surname }
    assert_redirected_to sport_trainer_path(assigns(:sport_trainer))
  end

  test "should destroy sport_trainer" do
    assert_difference('SportTrainer.count', -1) do
      delete :destroy, id: @sport_trainer
    end

    assert_redirected_to sport_trainers_path
  end
end
