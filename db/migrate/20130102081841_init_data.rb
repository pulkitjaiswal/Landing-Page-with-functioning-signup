class InitData < ActiveRecord::Migration
  def up
    create_table "user_providers", :force => true do |t|
      t.string   "provider"
      t.string   "uid"
      t.string   "access_token"
      t.datetime "token_expires_at"
      t.integer  "user_id"
      t.datetime "created_at",       :null => false
      t.datetime "updated_at",       :null => false
    end
  
    create_table "users", :force => true do |t|
      t.string   "first_name"
      t.string   "last_name"
      t.string   "profile_name"
      t.string   "email",                                   :default => "",    :null => false
      t.string   "encrypted_password",                      :default => "",    :null => false
      t.string   "reset_password_token"
      t.datetime "reset_password_sent_at"
      t.datetime "remember_created_at"
      t.integer  "sign_in_count",                           :default => 0
      t.datetime "current_sign_in_at"
      t.datetime "last_sign_in_at"
      t.string   "current_sign_in_ip"
      t.string   "last_sign_in_ip"
      t.datetime "created_at",                                                 :null => false
      t.datetime "updated_at",                                                 :null => false
      t.string   "card_type"
      t.string   "card_name"
      t.string   "card_expired_month",         :limit => 2
      t.string   "card_expired_year",          :limit => 4
      t.string   "card_postal_code"
      t.string   "address"
      t.string   "stripe_customer_id"
      t.string   "stripe_card_token"
      t.string   "card_last_four_number"
      t.string   "stripe_coupon"
      t.string   "stripe_customer_card_token"
      t.decimal  "honey_balance",                           :default => 0.0
      t.string   "provider_image"
      t.boolean  "is_admin",                                :default => false
    end
  
    add_index "users", ["email"], :name => "index_users_on_email", :unique => true
    add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  end

  def down
  end
end
