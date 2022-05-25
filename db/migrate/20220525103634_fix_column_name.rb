class FixColumnName < ActiveRecord::Migration[6.1]
  def self.up
    rename_column :posts, :type, :kind
  end
end
