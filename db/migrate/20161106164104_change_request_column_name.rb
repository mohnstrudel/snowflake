class ChangeRequestColumnName < ActiveRecord::Migration[5.0]
  def change
  	rename_column :requests, :type, :request_type
  end
end
