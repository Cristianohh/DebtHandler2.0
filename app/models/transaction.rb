class Transaction < ActiveRecord::Base
  belongs_to :user

  validates :name, :presence => true
  validates :amount, :presence => true
end
