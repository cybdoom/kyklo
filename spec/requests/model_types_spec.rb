require 'rails_helper'

describe "Model types" do
  let (:model_type) { FactoryGirl.create(:model_type) }
  let (:model) { model_type.model }

  context "JSON API receives request" do
    let (:request_format) { :json }

    context "GET models/:model_slug/model_types" do
      let(:endpoint) { "/models/#{ model.model_slug }/model_types" }

      it 'responds with success' do
        get endpoint, format: request_format
        expect(response).to be_success
      end

      it 'finds requested model correctly' do
        get endpoint, format: request_format
        expect(assigns(:model)).not_to be_nil
        expect(assigns(:model).model_slug).to be_eql model.model_slug
      end

      it 'raise ModelNotFound exception if failed to find given model' do\
        expect do
          get endpoint, format: request_format
        end.to raise_exception(ModelNotFound)
      end

    end
  end
end
