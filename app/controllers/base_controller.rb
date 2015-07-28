class BaseController < ApplicationController
  before_action :authenticate_user!
  before_filter :ensure_json_request

  protected

  def ensure_json_request
    return if params[:format] == "json" || request.headers["Accept"] =~ /json/
    render :nothing => true, :status => 406
  end
end