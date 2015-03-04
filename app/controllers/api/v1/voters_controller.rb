class Api::V1::VotersController < ApplicationController
  protect_from_forgery with: :null_session
  before_action :restrict_access, only: [:show, :update]

  def create
    @voter = Voter.new(voter_params)

    if @voter.save
      render json: @voter
    else
      render json: "Invalid parameters"
    end
  end

  def show
    @voter = Voter.find(params[:id])
    render json: @voter
  end

  def update
    if @voter.update(voter_params)
      render json: @voter
    else
      render json: "Invalid parameters"
    end
  end

  private def voter_params
    params.require(:voter).permit(:name, :party)
  end

  private def restrict_access
    authenticate_or_request_with_http_token do |token, options|
    Voter.exists?(api_key: token)
    end
  end

end
