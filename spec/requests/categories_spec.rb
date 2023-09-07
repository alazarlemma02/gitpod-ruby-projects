require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do
	subject {get :index}
  describe "GET /index" do
		it "should validate the status code to be ok" do
			subject
			expect(response).to have_http_status(:ok)
		end
		it "should route to the index controller" do
			expect(get: '/categories').to route_to('categories#index')
		end

  end
	describe "GET /show" do
		it "should validate the status code to be ok" do
			subject
			expect(response).to have_http_status(:ok)
		end
		it "should route to a specific category" do
			expect(get: '/categories/1').to route_to("categories#show", id: '1')
		end

	end
end
