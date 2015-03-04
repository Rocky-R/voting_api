class Api::V1::VotesController < ApplicationController

  def create
    @vote = Vote.new(vote_params)

    if @vote.save
      render json: @vote
    else
      render json: "Invalid parameters"
    end
  end

  def index
    render json: Vote.all
  end

  private def vote_params
    params.require(:vote).permit(:candidate_id, :voter_id)
  end

end
