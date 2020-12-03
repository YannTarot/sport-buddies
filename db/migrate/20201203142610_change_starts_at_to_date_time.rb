class ChangeStartsAtToDateTime < ActiveRecord::Migration[6.0]
  def change
    remove_column :events, :starts_at, :time
    add_column :events, :starts_at, :datetime
  end
end
