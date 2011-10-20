require 'test_helper'

class Admin::PagesControllerTest < ActionController::TestCase
  setup do
    @page = pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create page" do
    assert_difference('Page.count') do
      post :create, :page => @page.attributes
    end

    assert_redirected_to admin_page_path(assigns(:page))
  end

  test "should show page" do
    get :show, :id => @page.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @page.to_param
    assert_response :success
  end

  test "should update page" do
    put :update, :id => @page.to_param, :page => @page.attributes
    assert_redirected_to admin_page_path(assigns(:page))
  end

  test "should destroy page" do
    assert_difference('Page.count', -2) do
      delete :destroy, :id => @page.to_param
    end

    assert_redirected_to admin_pages_path
  end

  test "should move up page" do
    put :move_up, :id => @page.to_param

    assert_not_nil assigns(:page)
    assert_redirected_to admin_pages_path
  end

  test "should move down page" do
    put :move_down, :id => @page.to_param

    assert_not_nil assigns(:page)
    assert_redirected_to admin_pages_path
  end

end
