class Vote < ApplicationRecord
  belongs_to :city
  belongs_to :voter
end
