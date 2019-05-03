class Heroine < ApplicationRecord

belongs_to :power

validates :name, uniqueness: true
validates :name, presence: true


def super_power
  self.power.name
end

end
