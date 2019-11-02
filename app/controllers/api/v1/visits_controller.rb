class Api::V1::VisitsController < ApplicationController
  before_action :set_url, only: [:show]

  # GET /visits/token
  def show
    Visit.register_for(@url)
    redirect_to @url.original_url
  end

  private

  def set_url
    @url = Url.find_by(params[:token])
  end

    # Only allow a trusted parameter "white list" through.
    def visit_params
      params.require(:visit).permit(:token)
    end
end
