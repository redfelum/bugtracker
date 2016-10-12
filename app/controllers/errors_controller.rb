class ErrorsController < ApplicationController
  def index
    @errors = Errors.all
  end

  def create
    error = Errors.create
    error.update(name: params[:name], params: params[:params], stack_trace: params[:stack_trace])
  end
end
