module Admin
  class DashboardController < ApplicationController
    layout 'admin'

    before_action :authenticate_admin!

    def show; end

    private

    def authenticate_admin!
      return unless current_account.admin_user.nil?

      redirect_to root_path, notice: 'Please login first.'
    end
  end
end
