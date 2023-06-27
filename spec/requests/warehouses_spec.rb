require 'rails_helper'


RSpec.describe "/warehouses", type: :request do
  let(:valid_attributes) do
    {
      code: Faker::Alphanumeric.alpha(number: 8),
      name: Faker::Name.name,
      location: Faker::Address.city
    }
  end

  let(:invalid_attributes) do
    {
      code: Faker::Alphanumeric.alpha(number: 8),
      name: nil,
      location: Faker::Address.city
    }
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      create(:warehouse)
      get warehouses_url
      expect(response).to be_successful
    end

    it 'displays warehouses' do
      # warehouse1 = create(:warehouse)
      # warehouse2 = create(:warehouse)
      # warehouse3 = create(:warehouse)
      # 3.times { create(:warehouse) }
      warehouses = create_list(:warehouse, 3)
      get warehouses_url
      data = assigns(:warehouses)
      expect(data.count).to eq 3
      expect(data.sort).to eq warehouses.sort
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      warehouse = create(:warehouse)
      get warehouse_url(warehouse)
      expect(response).to be_successful
    end

    it "shows a selected warehouse" do
      warehouse = create(:warehouse)
      get warehouse_url(warehouse)
      data = assigns(:warehouse)
      expect(data).to eq warehouse
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_warehouse_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      warehouse = Warehouse.create! valid_attributes
      get edit_warehouse_url(warehouse)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Warehouse" do
        expect {
          post warehouses_url, params: { warehouse: valid_attributes }
        }.to change(Warehouse, :count).by(1)
      end

      it "redirects to the created warehouse" do
        post warehouses_url, params: { warehouse: valid_attributes }
        expect(response).to redirect_to(warehouse_url(Warehouse.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Warehouse" do
        expect {
          post warehouses_url, params: { warehouse: invalid_attributes }
        }.to change(Warehouse, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post warehouses_url, params: { warehouse: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested warehouse" do
        warehouse = Warehouse.create! valid_attributes
        patch warehouse_url(warehouse), params: { warehouse: new_attributes }
        warehouse.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the warehouse" do
        warehouse = Warehouse.create! valid_attributes
        patch warehouse_url(warehouse), params: { warehouse: new_attributes }
        warehouse.reload
        expect(response).to redirect_to(warehouse_url(warehouse))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        warehouse = Warehouse.create! valid_attributes
        patch warehouse_url(warehouse), params: { warehouse: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested warehouse" do
      warehouse = Warehouse.create! valid_attributes
      expect {
        delete warehouse_url(warehouse)
      }.to change(Warehouse, :count).by(-1)
    end

    it "redirects to the warehouses list" do
      warehouse = Warehouse.create! valid_attributes
      delete warehouse_url(warehouse)
      expect(response).to redirect_to(warehouses_url)
    end
  end
end
