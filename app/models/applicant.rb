class Applicant < ApplicationRecord
  belongs_to :user
  belongs_to :positions
end
