require 'test_helper'

class GeneralManagersControllerTest < ActionController::TestCase
  setup do
    @general_manager = general_managers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:general_managers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create general_manager" do
    assert_difference('GeneralManager.count') do
      post :create, general_manager: { active: @general_manager.active, first_name: @general_manager.first_name, last_name: @general_manager.last_name, notes: @general_manager.notes, team_id: @general_manager.team_id }
    end

    assert_redirected_to general_manager_path(assigns(:general_manager))
  end

  test "should show general_manager" do
    get :show, id: @general_manager
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @general_manager
    assert_response :success
  end

  test "should update general_manager" do
    patch :update, id: @general_manager, general_manager: { active: @general_manager.active, first_name: @general_manager.first_name, last_name: @general_manager.last_name, notes: @general_manager.notes, team_id: @general_manager.team_id }
    assert_redirected_to general_manager_path(assigns(:general_manager))
  end

  test "should destroy general_manager" do
    assert_difference('GeneralManager.count', -1) do
      delete :destroy, id: @general_manager
    end

    assert_redirected_to general_managers_path
  end
end
