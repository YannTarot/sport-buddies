class AddExpectedLevelToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :expected_level, :string
  end
end
