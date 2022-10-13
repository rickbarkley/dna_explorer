class UpdateUserId < ActiveRecord::Migration[7.0]
  def change
  	rename_column :dna_codes, :user_id, :account_id
  end
end
