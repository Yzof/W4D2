# == Schema Information
#
# Table name: cat_rental_requests
#
#  id         :integer          not null, primary key
#  cat_id     :integer          not null
#  start_date :date
#  end_date   :date
#  status     :string           default("PENDING")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CatRentalRequest < ApplicationRecord
  STATUS = ['APPROVED', 'DENIED', 'PENDING']

  validates :cat_id, presence: true, uniqueness: true
  validates :status, inclusion: { in: STATUS, message: "Invalid Status" }

  belongs_to :cat,
    foreign_key: :cat_id,
    class_name: :Cat

  def overlapping_requests
    self.cat.rental_requests.where( id: params[:cat_id]).where(
      'start_date <= ? OR end_date >= ?',
      self.end_date, self.start_date
    )
  end

  def overlapping_approved_requests
    overlapping_requests.where(status: 'APPROVED')
  end

  def does_not_overlap_approved_request
    overlapping_approved_requests.exists?
  end

end
