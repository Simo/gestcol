require File.dirname(__FILE__) + '/../spec_helper'

describe WeeklyProspectsController do
  fixtures :all
  render_views

  it "index action should render index template" do
    get :index
    response.should render_template(:index)
  end

  it "show action should render show template" do
    get :show, :id => WeeklyProspect.first
    response.should render_template(:show)
  end

  it "new action should render new template" do
    get :new
    response.should render_template(:new)
  end

  it "create action should render new template when model is invalid" do
    WeeklyProspect.any_instance.stubs(:valid?).returns(false)
    post :create
    response.should render_template(:new)
  end

  it "create action should redirect when model is valid" do
    WeeklyProspect.any_instance.stubs(:valid?).returns(true)
    post :create
    response.should redirect_to(weekly_prospect_url(assigns[:weekly_prospect]))
  end

  it "edit action should render edit template" do
    get :edit, :id => WeeklyProspect.first
    response.should render_template(:edit)
  end

  it "update action should render edit template when model is invalid" do
    WeeklyProspect.any_instance.stubs(:valid?).returns(false)
    put :update, :id => WeeklyProspect.first
    response.should render_template(:edit)
  end

  it "update action should redirect when model is valid" do
    WeeklyProspect.any_instance.stubs(:valid?).returns(true)
    put :update, :id => WeeklyProspect.first
    response.should redirect_to(weekly_prospect_url(assigns[:weekly_prospect]))
  end

  it "destroy action should destroy model and redirect to index action" do
    weekly_prospect = WeeklyProspect.first
    delete :destroy, :id => weekly_prospect
    response.should redirect_to(weekly_prospects_url)
    WeeklyProspect.exists?(weekly_prospect.id).should be_false
  end
end
