require 'rails_helper'

describe "Model types" do
  let (:model_type) { FactoryGirl.create(:model_type) }
  let (:model) { model_type.model }

  context "JSON API receives request" do
    let (:request_format) { :json }

    context "GET models/:model_slug/model_types" do
      let(:endpoint) { "/models/#{ model.model_slug }/model_types" }

      it 'should respond with success' do
        get endpoint, format: request_format
        expect(response).to be_success
      end

      it 'should find requested model correctly' do
        get endpoint, format: request_format
        expect(assigns(:model)).not_to be_nil
        expect(assigns(:model).model_slug).to be_eql model.model_slug
      end

      it 'should raise ModelNotFound exception if failed to find requested model' do
        missing_slug = "i_was_missed"
        expect do
          get "/models/#{ missing_slug }/model_types", format: request_format
        end.to raise_exception(ModelTypesController::ModelNotFound)
      end

      it 'should return correct model_types for the given model' do
        new_model = FactoryGirl.create(:model, :with_types)
        get "/models/#{ new_model.model_slug }/model_types", format: request_format
        expect(response.body).to be_eql(new_model.model_types.to_json)
      end

    end
  end
end
