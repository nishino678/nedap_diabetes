class CreateSpecialists < ActiveRecord::Migration[5.0]
  def change
    create_table :specialists do |t|
      t.string :specialist_name
      t.string :specialist_profession
      t.string :specialist_bio

      t.timestamps
    end
  end
end
