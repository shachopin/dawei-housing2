class AddTenantIdToPost < ActiveRecord::Migration
  def change
    add_column :posts, :tenant_id, :integer
  end
end
