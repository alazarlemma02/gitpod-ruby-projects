require 'rails_helper'

RSpec.describe BooksController, type: :controller do
  describe "GET /index" do
		subject {get :index}
		it "should validate the status code to be ok" do
			subject
			expect(response).to have_http_status(:ok)
		end
		it "should route to the index controller" do
			expect(get: '/books').to route_to('books#index')
		end
		it "should return corrrect format of json data" do
			create_list :book, 3
			subject
			pp json
			expect(json.class).to eq(Hash)
		end
  end
end
