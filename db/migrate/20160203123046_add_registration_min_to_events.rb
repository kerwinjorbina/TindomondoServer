class AddRegistrationMinToEvents < ActiveRecord::Migration
  def change
    add_column :events, :registration_min, :integer
  end
end
