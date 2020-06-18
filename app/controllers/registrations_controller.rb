# frozen_string_literal: true

class RegistrationsController < Devise::RegistrationsController  
  respond_to :html, :json
  before_action :trigger_clear_respond_to, if: -> { request.format == 'json' }

  def trigger_clear_respond_to
    clear_respond_to
  end
end 
