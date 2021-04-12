# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Articles', type: :request do
  describe '#index' do
    it 'should return success response' do
      get '/articles/index'
      expect(response).to have_http_status(:ok)
    end
  end
end
