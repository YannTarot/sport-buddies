class AddSportsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :sports, :jsonb, default: {}
  end
end
