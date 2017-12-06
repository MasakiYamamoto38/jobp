class Company < ActiveRecord::Base
  has_many :progresses, dependent: :destroy
end
