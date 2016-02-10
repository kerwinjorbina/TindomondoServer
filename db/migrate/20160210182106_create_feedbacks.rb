class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.datetime :date_time
      t.integer :user_id
      t.string :feedback_description
    end
  end
end
