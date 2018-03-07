# == Schema Information
#
# Table name: cats
#
#  id          :integer          not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

COLORS = ["brown", "orange", "white", "black", "grey", "calico"]

class Cat < ApplicationRecord
  validates :birth_date, presence: true
  validates :color, presence: true, inclusion: { in: COLORS,
                                    message: "Pick a proper color"}
  validates :name, presence: true
  validates :sex, presence: true, inclusion: { in: %w(M F)}

  has_many :rental_requests,
    foreign_key: :cat_id,
    class_name: :CatRentalRequest,
    dependent: :destroy

  def age
    now = Time.now.utc.to_date
    now.year - birth_date.year - ((now.month > birth_date.month || (now.month == birth_date.month && now.day >= birth_date.day)) ? 0 : 1)
  end
end
