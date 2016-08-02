require 'rails_helper'

describe Article do
  let(:article) { Article.new(body: 'afhjl', title: '01932840193') }
  let(:article_no_title) { Article.new(body: 'aksdjfh') }
  let(:article_no_body) { Article.new(title: 'alkdshflsdf')}
  describe 'validations' do
    describe 'when valid' do
      it 'validates the presence of title' do
        expect(article).to be_valid
      end
      it 'validates the presence of body' do
        expect(article).to be_valid
      end
    end
    describe 'when invalid' do
      it 'does not validate an article with no title' do
        expect(article_no_title).to_not be_valid
      end
      it 'does not validate an article with no body' do
        expect(article_no_body).to_not be_valid
      end
    end
  end
end
