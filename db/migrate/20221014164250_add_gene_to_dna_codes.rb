class AddGeneToDnaCodes < ActiveRecord::Migration[7.0]
  def change
    add_column :dna_codes, :gene_name, :string
  end
end
