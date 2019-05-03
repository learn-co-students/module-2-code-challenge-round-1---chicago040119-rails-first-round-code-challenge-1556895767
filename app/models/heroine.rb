class Heroine < ApplicationRecord
    validates :super_name, uniqueness: true

     belongs_to :power

     def self.search(q)
      if !q.to_s.empty?
        self.all.select {|heroine| heroine.power.name == q.downcase}
      else
        self.all
      end
    end
  end
