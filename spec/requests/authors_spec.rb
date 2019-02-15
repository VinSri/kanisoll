require 'rails_helper'
require 'authors'

RSpec.describe 'Author API', type: :request do
  let!(:authors) { create(:author, 10) }
  let(:author_id) { authors.first.author_id }

  describe 'GET /authors' do
    # make HTTP get request before each example
    before { get '/authors' }

    it 'returns authors' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end
  end
end
   
