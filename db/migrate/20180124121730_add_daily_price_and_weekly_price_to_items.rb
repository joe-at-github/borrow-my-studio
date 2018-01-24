class AddDailyPriceAndWeeklyPriceToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :daily_price, :integer
    add_column :items, :weekly_price, :integer
  end
end
