class Api::V1::VotersController < ApplicationController
  protect_from_forgery with: :null_session
  before_action :restrict_access, only: [:show, :update]
  before_action :set_voter, only: [:update]

  def create
    @voter = Voter.new(voter_params)

    if @voter.save
      render json: @voter
    else
      render json: "Invalid parameters"
    end
  end

  def show
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

  private def set_voter
    @voter = Voter.find(params[:id])
  end
end
