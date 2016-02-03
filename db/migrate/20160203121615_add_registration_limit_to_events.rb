class AddRegistrationLimitToEvents < ActiveRecord::Migration
  def change
    add_column :events, :registration_limit, :integer
  end
end
