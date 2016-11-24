require 'rails_helper'

describe "Model types" do
  let (:model_type) { FactoryGirl.create(:model_type) }
  let (:model) { model_type.model }

  context "GET models/:model_slug/model_types" do
    it 'responds with success' do
      get "/models/#{model.model_slug}/model_types"
      expect(response).to be_success
    end
  end
end
