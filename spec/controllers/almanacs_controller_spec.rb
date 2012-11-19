require File.dirname(__FILE__) + '/../spec_helper'

describe AlmanacsController do
  fixtures :all
  render_views

  it "index action should render index template" do
    get :index
    response.should render_template(:index)
  end

  it "show action should render show template" do
    get :show, :id => Almanac.first
    response.should render_template(:show)
  end

  it "new action should render new template" do
    get :new
    response.should render_template(:new)
  end

  it "create action should render new template when model is invalid" do
    Almanac.any_instance.stubs(:valid?).returns(false)
    post :create
    response.should render_template(:new)
  end

  it "create action should redirect when model is valid" do
    Almanac.any_instance.stubs(:valid?).returns(true)
    post :create
    response.should redirect_to(almanac_url(assigns[:almanac]))
  end

  it "edit action should render edit template" do
    get :edit, :id => Almanac.first
    response.should render_template(:edit)
  end

  it "update action should render edit template when model is invalid" do
    Almanac.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Almanac.first
    response.should render_template(:edit)
  end

  it "update action should redirect when model is valid" do
    Almanac.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Almanac.first
    response.should redirect_to(almanac_url(assigns[:almanac]))
  end

  it "destroy action should destroy model and redirect to index action" do
    almanac = Almanac.first
    delete :destroy, :id => almanac
    response.should redirect_to(almanacs_url)
    Almanac.exists?(almanac.id).should be_false
  end
end
