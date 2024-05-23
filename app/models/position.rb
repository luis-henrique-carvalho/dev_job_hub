# == Schema Information
#
# Table name: positions
#
#  id          :bigint           not null, primary key
#  carrer      :integer
#  city        :string
#  contract    :integer
#  description :text
#  name        :string
#  publish     :boolean
#  remote      :boolean
#  state       :string
#  summary     :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  company_id  :bigint           not null
#
# Indexes
#
#  index_positions_on_company_id  (company_id)
#
# Foreign Keys
#
#  fk_rails_...  (company_id => companies.id)
#
class Position < ApplicationRecord
  belongs_to :company
end
