# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Pages', type: :request do
  describe 'GET /' do
    it do
      get '/'
      expect(response).to have_http_status(:success)
    end
  end
end
