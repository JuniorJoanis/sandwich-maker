class CreateSandwiches < ActiveRecord::Migration
  def change
    create_table :sandwiches do |t|
      t.references :type
      t.timestamps
    end
  end
end
