class DropTableAccounts < ActiveRecord::Migration[5.1]
  def change
    drop_table :accounts
  end
end
