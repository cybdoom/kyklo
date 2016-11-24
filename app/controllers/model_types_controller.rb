class ModelTypesController < ApplicationController

  before_action :set_model

  def index
  end

  private

  def set_model
    @model = Model.find_by_model_slug model_params[:model_id]
  end

  def model_params
    params.permit :model_id
  end
end
