class User < ApplicationRecord
  belongs_to :chapter
  has_many :connections
  has_many :dgroups, :through => :connections

  enum gender: [:male, :female, :other]
  enum status: [:connected, :faithful, :sometimes, :rarely, :leadership]
  enum type: [:Member, :Leader, :Staff]

  scope :members, -> {where(type: 'Member')} #User.members
  scope :leaders, -> {where(type: 'Leader')} #User.leaders
  scope :staff, -> {where(type: 'Staff')} #User.staff

  validates :email, :phone, uniqueness: true
end
