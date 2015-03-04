class Vote < ActiveRecord::Base
  validates :voter_id, uniqueness: true
  belongs_to :candidate
  belongs_to :voter
end
