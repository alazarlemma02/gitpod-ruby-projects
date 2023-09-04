require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do

  describe "#index" do
    subject { get :index }
    it "should route to articles" do
      expect(get: '/articles').to route_to('articles#index')
    end
    it "should return success status" do
      subject
      expect(response).to have_http_status(:ok)
    end
    it "should return proper json data" do
      create_list :article, 3
      subject
      expect(json.class).to eq(Hash)
      Article.recent.each_with_index do |article, index|
        expect(json_data[index]['attributes']).to eq(
          'title'=> article.title,
          'content' => article.content,
          'slug'=> article.slug
        )
      end
    end

    it "should paginate returned articles" do
      create_list :article, 3
      get :index, params:{page: 2, per_page: 1}
      pp json
      expect(json_data.length).to eq 1
      expect(json_data.first['id']).to eq(Article.recent.second.id.to_s)
    end


end
  describe "#show" do
    it "should route to a specific article" do
      expect(get: '/articles/1').to route_to('articles#show', id:'1')
    end
  end

end

