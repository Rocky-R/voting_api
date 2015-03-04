class Api::V1::CandidatesController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    render json: Candidate.all
  end

  def show
    @candidate = Candidate.find(params[:id])
    render json: @candidate
  end

end
