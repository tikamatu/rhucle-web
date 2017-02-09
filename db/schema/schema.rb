create_table :top_photos, default_charset: "utf8mb4", collate: "utf8mb4_unicode_ci", comment: "" do |t|
  t.int :id, primary_key: true, extra: "auto_increment"
  t.int :order, comment: "順番"
  t.boolean :active, default: true, comment: "アクティブフラグ"
  t.varchar :url, null: true, comment: "URL"
  t.varchar :photo, null: true, comment: "写真"

  t.datetime :created_at
  t.datetime :updated_at
end

create_table :abouts, default_charset: "utf8mb4", collate: "utf8mb4_unicode_ci", comment: "" do |t|
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
  t.date :released_on, null: true, comment: "リリース日"
  t.varchar :record_label, null: true, comment: "レーベル"
  t.text :catalog, null: true, comment: "カタログ"
  t.varchar :artworked_by, null: true, comment: "アートワーク作成者"
  t.text :format, comment: "フォーマット"
  t.text :url, null: true, comment: "リリース先URL"
  t.varchar :artwork, null: true, comment: "アートワーク"
  t.text :track_list, null: true, comment: "収録楽曲"

  t.datetime :created_at
  t.datetime :updated_at
end

create_table :events, default_charset: "utf8mb4", collate: "utf8mb4_unicode_ci", comment: "" do |t|
  t.int :id, primary_key: true, extra: "auto_increment"
  t.datetime :started_on, null: true, comment: "開始日時"
  t.text :detail, null: true, comment: "詳細"

  t.datetime :created_at
  t.datetime :updated_at
end

create_table :visual_arts, default_charset: "utf8mb4", collate: "utf8mb4_unicode_ci", comment: "" do |t|
  t.int :id, primary_key: true, extra: "auto_increment"
  t.varchar :image, null: true, comment: "画像"

  t.datetime :created_at
  t.datetime :updated_at
end

create_table :schema_migrations, default_charset: "utf8mb4", collate: "utf8mb4_unicode_ci", comment: "" do |t|
  t.varchar "version", limit: 191

  t.index "version", name: "unique_schema_migrations", unique: true
end
