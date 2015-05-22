class CreateHangmen < ActiveRecord::Migration
  def change
    create_table :hangmen do |t|

      t.timestamps null: false
    end
  end
end
