require 'test_helper'

class AdSchedulesControllerTest < ActionController::TestCase
  setup do
    @ad_schedule = ad_schedules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ad_schedules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ad_schedule" do
    assert_difference('AdSchedule.count') do
      post :create, ad_schedule: { company: @ad_schedule.company, contact: @ad_schedule.contact, description: @ad_schedule.description, duration: @ad_schedule.duration, imagePath: @ad_schedule.imagePath, price: @ad_schedule.price, size: @ad_schedule.size, subjectArea: @ad_schedule.subjectArea, timeShift: @ad_schedule.timeShift }
    end

    assert_redirected_to ad_schedule_path(assigns(:ad_schedule))
  end

  test "should show ad_schedule" do
    get :show, id: @ad_schedule
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ad_schedule
    assert_response :success
  end

  test "should update ad_schedule" do
    put :update, id: @ad_schedule, ad_schedule: { company: @ad_schedule.company, contact: @ad_schedule.contact, description: @ad_schedule.description, duration: @ad_schedule.duration, imagePath: @ad_schedule.imagePath, price: @ad_schedule.price, size: @ad_schedule.size, subjectArea: @ad_schedule.subjectArea, timeShift: @ad_schedule.timeShift }
    assert_redirected_to ad_schedule_path(assigns(:ad_schedule))
  end

  test "should destroy ad_schedule" do
    assert_difference('AdSchedule.count', -1) do
      delete :destroy, id: @ad_schedule
    end

    assert_redirected_to ad_schedules_path
  end
end
