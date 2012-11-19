require File.dirname(__FILE__) + '/../spec_helper'

describe MonthsController do
  fixtures :all
  render_views

  it "index action should render index template" do
    get :index
    response.should render_template(:index)
  end

  it "show action should render show template" do
    get :show, :id => Month.first
    response.should render_template(:show)
  end

  it "new action should render new template" do
    get :new
    response.should render_template(:new)
  end

  it "create action should render new template when model is invalid" do
    Month.any_instance.stubs(:valid?).returns(false)
    post :create
    response.should render_template(:new)
  end

  it "create action should redirect when model is valid" do
    Month.any_instance.stubs(:valid?).returns(true)
    post :create
    response.should redirect_to(month_url(assigns[:month]))
  end

  it "edit action should render edit template" do
    get :edit, :id => Month.first
    response.should render_template(:edit)
  end

  it "update action should render edit template when model is invalid" do
    Month.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Month.first
    response.should render_template(:edit)
  end

  it "update action should redirect when model is valid" do
    Month.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Month.first
    response.should redirect_to(month_url(assigns[:month]))
  end

  it "destroy action should destroy model and redirect to index action" do
    month = Month.first
    delete :destroy, :id => month
    response.should redirect_to(months_url)
    Month.exists?(month.id).should be_false
  end
end
