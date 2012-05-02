class CreateSandwiches < ActiveRecord::Migration
  def change
    create_table :sandwiches do |t|
      t.references :type
      t.references :user
      t.timestamps
    end
  end
end
