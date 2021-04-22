class CreateUserAirlines < ActiveRecord::Migration[6.1]
  def change
    create_table :user_airlines do |t|

      t.timestamps
    end
  end
end
