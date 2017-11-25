require 'rails_helper'

RSpec.describe 'Status requests' do
  describe 'GET /api/status' do
    it 'returns a status message' do
      get('/api/status')
      expect(response_json['status']).to eql('ok')
      expect(response.status).to eql(200)
    end
  end
end
