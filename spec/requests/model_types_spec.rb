require 'rails_helper'

describe "Model types" do
  let (:model_type) { FactoryGirl.create(:model_type) }
  let (:model) { model_type.model }

  context "JSON API receives request" do
    let (:request_format) { :json }

    context "GET models/:model_slug/model_types" do

      it 'responds with success' do
        get "/models/#{ model.model_slug }/model_types", format: request_format
        expect(response).to be_success
      end

      it 'finds requested model correctly' do
        get "/models/#{ model.model_slug }/model_types", format: request_format
        expect(assigns(:model)).not_to be_nil
        expect(assigns(:model).model_slug).to be_eql model.model_slug
      end

    end
  end
end
