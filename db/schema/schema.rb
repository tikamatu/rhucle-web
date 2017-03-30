create_table :top_photos, default_charset: "utf8mb4", collate: "utf8mb4_unicode_ci", comment: "" do |t|
  t.int :id, primary_key: true, extra: "auto_increment"
  t.int :order, comment: "順番"
  t.boolean :active, default: true, comment: "アクティブフラグ"
  t.varchar :url, null: true, comment: "URL"
  t.varchar :photo, comment: "写真"

  t.datetime :created_at
  t.datetime :updated_at
end

create_table :biographies, default_charset: "utf8mb4", collate: "utf8mb4_unicode_ci", comment: "" do |t|
  t.int :id, primary_key: true, extra: "auto_increment"
  t.varchar :photo, null: true, comment: "写真"
  t.text :profile, null: true, comment: "プロフィール"

  t.datetime :created_at
  t.datetime :updated_at
end

create_table :discs, default_charset: "utf8mb4", collate: "utf8mb4_unicode_ci", comment: "" do |t|
  t.int :id, primary_key: true, extra: "auto_increment"
  t.varchar :title, comment: "タイトル"
  t.text :artist, comment: "アーティスト名"
  t.date :released_on, comment: "リリース日"
  t.varchar :record_label, comment: "レーベル"
  t.text :catalog, null: true, comment: "カタログ"
  t.varchar :artworked_by, comment: "アートワーク作成者"
  t.text :format, comment: "フォーマット"
  t.text :url, comment: "リリース先URL"
  t.text :listening_url, null: true, comment: "試聴先URL"
  t.varchar :artwork_thumb, comment: "サムネイル"
  t.varchar :artwork_full, null: true, comment: "アートワーク"
  t.text :track_list, comment: "収録楽曲"

  t.datetime :created_at
  t.datetime :updated_at
end

create_table :events, default_charset: "utf8mb4", collate: "utf8mb4_unicode_ci", comment: "" do |t|
  t.int :id, primary_key: true, extra: "auto_increment"
  t.datetime :started_on, comment: "開始日時"
  t.text :detail, comment: "詳細"

  t.datetime :created_at
  t.datetime :updated_at
end

create_table :visual_arts, default_charset: "utf8mb4", collate: "utf8mb4_unicode_ci", comment: "" do |t|
  t.int :id, primary_key: true, extra: "auto_increment"
  t.varchar :image, comment: "画像"
  t.datetime :designed_at, null: true

  t.datetime :created_at
  t.datetime :updated_at
end

create_table :admins, default_charset: "utf8mb4", collate: "utf8mb4_unicode_ci", comment: ""  do |t|
  ## Database authenticatable 
  t.int :id, primary_key: true, extra: "auto_increment"
  t.varchar :email,              null: false, default: ""                
  t.varchar :encrypted_password, null: false, default: ""                

  ## Recoverable
  t.varchar  :reset_password_token, null: true
  t.datetime :reset_password_sent_at, null: true                          

  ## Rememberable
  t.datetime :remember_created_at, null: true                        
								    
  ## Trackable
  t.int  :sign_in_count, default: 0, null: false                    
  t.datetime :current_sign_in_at, null: true
  t.datetime :last_sign_in_at, null: true
  t.varchar   :current_sign_in_ip, null: true 
  t.varchar   :last_sign_in_ip, null: true                                      
end

create_table :schema_migrations, default_charset: "utf8mb4", collate: "utf8mb4_unicode_ci", comment: "" do |t|
  t.varchar "version", limit: 191

  t.index "version", name: "unique_schema_migrations", unique: true
end
