class Dgroup < ApplicationRecord
  belongs_to :chapter
  
  has_many :connections
  has_many :users, :through => :connections


  enum gender: [:male, :female, :other]
  enum day: [:monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday]
  enum location: [:on_campus, :off_campus]
end
