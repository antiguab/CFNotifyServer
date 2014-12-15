class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.references :request, index: true
      t.string :content

      t.timestamps
    end
  end
end
