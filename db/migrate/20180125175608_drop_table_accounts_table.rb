class DropTableAccountsTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :accounts_tables
  end
end
