class Appliance < ApplicationRecord
  has_many :buttons, dependent: :destroy
end
