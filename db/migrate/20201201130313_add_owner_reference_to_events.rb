class AddOwnerReferenceToEvents < ActiveRecord::Migration[6.0]
  def change
    remove_reference :events, :user
    add_reference :events, :owner, null: false, foreign_key: { to_table: :users }
  end
end
