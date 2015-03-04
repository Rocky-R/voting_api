class Api::V1::VotesController < ApplicationController
  protect_from_forgery with: :null_session
  before_action :restrict_access, only: [:create]

  def create
    @vote = Vote.new(vote_params)

    if @vote.save
      render json: @vote
    else
      render json: "Invalid parameters"
    end
  end

  def index
    results = []
    results = Candidate.all.map do |c|
      {name: c.name, party: c.party, vote_count: c.votes.count}
    end
    render json: results
  end

  private def vote_params
    params.require(:vote).permit(:candidate_id, :voter_id)
  end

end
