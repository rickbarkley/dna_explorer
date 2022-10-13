class CreateDnaCodes < ActiveRecord::Migration[7.0]
  def change
    create_table :dna_codes do |t|
      t.text :raw
      t.integer :user_id
      t.integer :entity_id

      t.timestamps
    end
  end
end
