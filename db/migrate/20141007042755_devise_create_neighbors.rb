class DeviseCreateNeighbors < ActiveRecord::Migration
  def change
    create_table(:neighbors) do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.inet     :current_sign_in_ip
      t.inet     :last_sign_in_ip

      t.string :name
      t.string :street
      t.string :street_line2
      t.string :city
      t.string :state
      t.string :zip

      t.datetime :paid_until

      t.string :provider
      t.string :uid

      t.timestamps
    end

    add_index :neighbors, :email,                unique: true
    add_index :neighbors, :reset_password_token, unique: true
  end
end
