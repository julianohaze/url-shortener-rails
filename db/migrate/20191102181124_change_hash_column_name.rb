class ChangeHashColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :urls, :hash, :token
  end
end
