# == Schema Information
#
# Table name: tasks
#
#  id          :bigint(8)        not null, primary key
#  title       :string
#  description :text
#  section_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Task < ApplicationRecord
  belongs_to :section

  validates :title, length: { maximum: 250 }, presence: true
  validates :description, length: { maximum: 250 }, presence: true
end
