class CreateInterestedPeople < ActiveRecord::Migration[5.0]
  def change
    create_table :interested_people do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.text :suggestion

      t.timestamps
    end
  end
end
