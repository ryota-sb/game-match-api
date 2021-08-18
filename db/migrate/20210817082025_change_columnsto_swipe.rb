class ChangeColumnstoSwipe < ActiveRecord::Migration[5.2]
  def change
    change_column_null :swipes, :to_user_id, false
    change_column_null :swipes, :from_user_id, false
  end
end
