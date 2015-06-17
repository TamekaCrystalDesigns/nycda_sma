# This is the terminal code to setup/create this page:
#bundle exec rails g model student first_name:string last_name:string phone:string status:string

class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :status
      t.string :email

      t.timestamps null: false
    end
  end
end
