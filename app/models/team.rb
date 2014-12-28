class Team < ActiveRecord::Base
  belongs_to :country
  belongs_to :division
  belongs_to :manager
end
