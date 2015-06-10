require 'test_helper'

class ConfigFilesControllerTest < ActionController::TestCase
  setup do
    @config_file = config_files(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:config_files)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create config_file" do
    assert_difference('ConfigFile.count') do
      post :create, config_file: { config: @config_file.config, date: @config_file.date, name: @config_file.name, text: @config_file.text }
    end

    assert_redirected_to config_file_path(assigns(:config_file))
  end

  test "should show config_file" do
    get :show, id: @config_file
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @config_file
    assert_response :success
  end

  test "should update config_file" do
    patch :update, id: @config_file, config_file: { config: @config_file.config, date: @config_file.date, name: @config_file.name, text: @config_file.text }
    assert_redirected_to config_file_path(assigns(:config_file))
  end

  test "should destroy config_file" do
    assert_difference('ConfigFile.count', -1) do
      delete :destroy, id: @config_file
    end

    assert_redirected_to config_files_path
  end
end
