class ModelTypesController < ApplicationController

  class Error < RuntimeError; end
  class ModelNotFound < Error; end

  before_action :set_model

  def index
  end

  private

  def set_model
    @model = Model.find_by_model_slug model_params[:model_id]
    raise ModelNotFound if @model.blank?
  end

  def model_params
    params.permit :model_id
  end
end
