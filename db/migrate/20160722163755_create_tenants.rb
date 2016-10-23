class CreateTenants < ActiveRecord::Migration
  def change
    create_table :tenants do |t|
      t.string :name
      t.string :company
      t.string :title
      t.timestamps 
    end
  end
end
