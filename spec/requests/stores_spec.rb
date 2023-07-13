require 'rails_helper'

RSpec.describe "Stores", type: :request do

  let(:valid_attributes) do
    {
      code: Faker::Alphanumeric.alpha(number: 8),
      name: Faker::Name.name,
      length: 10,
      width: 12,
      height: 4
    }
  end

  let(:invalid_attributes) do
    {
      code: Faker::Alphanumeric.alpha(number: 8),
      name: nil,
      length: 10,
      width: 12,
      height: 4
    }
  end

  describe 'GET /index' do
    it 'returns http success' do
      get stores_url
      expect(response).to have_http_status(:success)
    end

    it 'displays stores' do
      stores = create_list(:store, 3)
      get stores_url
      data = assigns(:stores)
      expect(data.count).to eq 3
      expect(data.sort).to eq stores.sort
    end
  end

  describe 'GET /new' do
    it 'returns http success' do
      get new_store_url
      expect(response).to have_http_status(:success)
    end

    it 'assigns store' do
      get new_store_url
      data = assigns(:store)
      expect(data).not_to be_nil
    end
  end

  describe 'GET /edit' do
    it 'returns http success' do
      store = create(:store)
      get edit_store_url(store)
      expect(response).to have_http_status(:success)
    end

    it 'assigns existing store' do
      store = create(:store)
      get edit_store_url(store)
      data = assigns(:store)
      expect(data).to eq store
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/stores/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST /create" do
    it "returns http success" do
      get "/stores/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "PATCH /update" do
    it "returns http success" do
      get "/stores/update"
      expect(response).to have_http_status(:success)
    end
  end

end
