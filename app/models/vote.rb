class Vote < ActiveRecord::Base
  validates :voter_id, uniqueness: true
end
