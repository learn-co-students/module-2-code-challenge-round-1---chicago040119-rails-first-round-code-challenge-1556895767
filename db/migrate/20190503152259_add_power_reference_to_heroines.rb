class AddPowerReferenceToHeroines < ActiveRecord::Migration[5.1]
  def change
    add_reference(:heroines, :power)
  end
end
