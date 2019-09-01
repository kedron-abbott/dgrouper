class Chapter < ApplicationRecord
  has_many :users, :dependent => :destroy
  has_many :dgroups, :dependent => :destroy
end
