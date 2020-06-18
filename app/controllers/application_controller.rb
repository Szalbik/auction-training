# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery if: :json_request # return null session when API call
  protect_from_forgery with: :exception, unless: :json_request
  
  before_action :authenticate_request, if: :json_request
  before_action :authenticate_account!, unless: :json_request
  
  attr_reader :current_account
  
  private
  
  def json_request
      request.format.json?
  end
  
  def authenticate_request
      @current_account = AuthorizeApiRequest.call(request.headers).result
      render json: { error: 'Not Authorized' }, status: 401 unless @current_account
  end
end
