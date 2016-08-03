require 'rails_helper'

describe ArticlesController do
  let!(:article) { Article.create(title: 'jake', body: 'andrew, anya')}
  describe '#index' do
    before(:each) do
      get :index
    end
    it 'responds with a status of 200' do
      expect(response.status).to eq(200)
    end
    it 'renders json containing all articles' do
      expect(JSON.parse(response.body).first["title"]).to eq 'jake'
    end
    it 'assigns the @articles instance variable' do
      expect(assigns(:articles)).to be_an(ActiveRecord::Relation)
    end
  end
end
