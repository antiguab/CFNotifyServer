class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :cfid
      t.references :user, index: true

      t.timestamps
    end
  end
end
