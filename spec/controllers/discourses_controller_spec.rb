require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe DiscoursesController do

  def mock_discourse(stubs={})
    @mock_discourse ||= mock_model(Discourse, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all discourses as @discourses" do
      Discourse.stub(:all) { [mock_discourse] }
      get :index
      assigns(:discourses).should eq([mock_discourse])
    end
  end

  describe "GET show" do
    it "assigns the requested discourse as @discourse" do
      Discourse.stub(:find).with("37") { mock_discourse }
      get :show, :id => "37"
      assigns(:discourse).should be(mock_discourse)
    end
  end

  describe "GET new" do
    it "assigns a new discourse as @discourse" do
      Discourse.stub(:new) { mock_discourse }
      get :new
      assigns(:discourse).should be(mock_discourse)
    end
  end

  describe "GET edit" do
    it "assigns the requested discourse as @discourse" do
      Discourse.stub(:find).with("37") { mock_discourse }
      get :edit, :id => "37"
      assigns(:discourse).should be(mock_discourse)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created discourse as @discourse" do
        Discourse.stub(:new).with({'these' => 'params'}) { mock_discourse(:save => true) }
        post :create, :discourse => {'these' => 'params'}
        assigns(:discourse).should be(mock_discourse)
      end

      it "redirects to the created discourse" do
        Discourse.stub(:new) { mock_discourse(:save => true) }
        post :create, :discourse => {}
        response.should redirect_to(discourse_url(mock_discourse))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved discourse as @discourse" do
        Discourse.stub(:new).with({'these' => 'params'}) { mock_discourse(:save => false) }
        post :create, :discourse => {'these' => 'params'}
        assigns(:discourse).should be(mock_discourse)
      end

      it "re-renders the 'new' template" do
        Discourse.stub(:new) { mock_discourse(:save => false) }
        post :create, :discourse => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested discourse" do
        Discourse.stub(:find).with("37") { mock_discourse }
        mock_discourse.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :discourse => {'these' => 'params'}
      end

      it "assigns the requested discourse as @discourse" do
        Discourse.stub(:find) { mock_discourse(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:discourse).should be(mock_discourse)
      end

      it "redirects to the discourse" do
        Discourse.stub(:find) { mock_discourse(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(discourse_url(mock_discourse))
      end
    end

    describe "with invalid params" do
      it "assigns the discourse as @discourse" do
        Discourse.stub(:find) { mock_discourse(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:discourse).should be(mock_discourse)
      end

      it "re-renders the 'edit' template" do
        Discourse.stub(:find) { mock_discourse(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested discourse" do
      Discourse.stub(:find).with("37") { mock_discourse }
      mock_discourse.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the discourses list" do
      Discourse.stub(:find) { mock_discourse }
      delete :destroy, :id => "1"
      response.should redirect_to(discourses_url)
    end
  end

end
