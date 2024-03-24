class CreateIncidents < ActiveRecord::Migration[7.1]
  def change
    create_table :incidents do |t|
      t.string :inc_id
      t.text :desc
      t.string :user_name

      t.timestamps
    end
  end
end
