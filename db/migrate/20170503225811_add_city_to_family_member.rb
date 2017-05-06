class AddCityToFamilyMember < ActiveRecord::Migration[5.0]
  def change
    change_table :family_members do |t|
      t.string :city
    end
  end
end
