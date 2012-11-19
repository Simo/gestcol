require File.dirname(__FILE__) + '/../spec_helper'

describe ProspectStructuresController do
  fixtures :all
  render_views

  it "index action should render index template" do
    get :index
    response.should render_template(:index)
  end

  it "show action should render show template" do
    get :show, :id => ProspectStructure.first
    response.should render_template(:show)
  end

  it "new action should render new template" do
    get :new
    response.should render_template(:new)
  end

  it "create action should render new template when model is invalid" do
    ProspectStructure.any_instance.stubs(:valid?).returns(false)
    post :create
    response.should render_template(:new)
  end

  it "create action should redirect when model is valid" do
    ProspectStructure.any_instance.stubs(:valid?).returns(true)
    post :create
    response.should redirect_to(prospect_structure_url(assigns[:prospect_structure]))
  end

  it "edit action should render edit template" do
    get :edit, :id => ProspectStructure.first
    response.should render_template(:edit)
  end

  it "update action should render edit template when model is invalid" do
    ProspectStructure.any_instance.stubs(:valid?).returns(false)
    put :update, :id => ProspectStructure.first
    response.should render_template(:edit)
  end

  it "update action should redirect when model is valid" do
    ProspectStructure.any_instance.stubs(:valid?).returns(true)
    put :update, :id => ProspectStructure.first
    response.should redirect_to(prospect_structure_url(assigns[:prospect_structure]))
  end

  it "destroy action should destroy model and redirect to index action" do
    prospect_structure = ProspectStructure.first
    delete :destroy, :id => prospect_structure
    response.should redirect_to(prospect_structures_url)
    ProspectStructure.exists?(prospect_structure.id).should be_false
  end
end
