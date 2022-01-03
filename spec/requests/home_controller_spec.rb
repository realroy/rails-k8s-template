# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'HomeControllers', type: :request do
  describe 'GET /' do
    it 'return status ok' do
      get home_path

      expect(response).to render_template(:show)
    end
  end
end
