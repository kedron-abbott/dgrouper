class Connection < ApplicationRecord
  belongs_to :dgroup
  belongs_to :user

  validates :user, uniqueness: true
  validate :gender_match

  def gender_match
    if dgroup.gender != user.gender
      errors.add(:user, "gender must match dgroup gender")
    end
  end
end
