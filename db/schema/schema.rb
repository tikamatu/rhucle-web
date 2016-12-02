create_table :discs, default_charset: "utf8mb4", collate: "utf8mb4_unicode_ci", comment: "" do |t|
  t.int :id, primary_key: true, extra: "auto_increment"
  t.varchar :title, comment: "タイトル"
  t.date :released_on, null: true, comment: "リリース日"
  t.varchar :record_label, null: true, comment: "レーベル"
  t.varchar :artworked_by, null: true, comment: "アートワーク作成者"
  t.varchar :format, comment: "フォーマット(CD, テープ, デジタル)"
  t.text :url, null: true, comment: "リリース先URL"
  t.varchar :artwork, null: true, comment: "アートワーク"
  t.text :track_list, null: true, comment: "収録楽曲"
  t.varchar :release_type, comment: "リリース形式(コンピ、リミックス、ソロアルバム)"

  t.datetime :created_at
  t.datetime :updated_at
end

create_table :events, default_charset: "utf8mb4", collate: "utf8mb4_unicode_ci", comment: "" do |t|
  t.int :id, primary_key: true, extra: "auto_increment"
  t.varchar :title, comment: "タイトル"
  t.datetime :started_at, null: true, comment: "開始日時"
  t.varchar :venue, null: true, comment: "会場"
  t.varchar :url, null: true, comment: "イベントURL"
  t.varchar :venue_url, null: true, comment: "会場URL"
  t.text :ticket_info, null: true, comment: "チケット情報"
  t.text :performers, null: true, comment: "出演者"

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

create_table :top_photos, default_charset: "utf8mb4", collate: "utf8mb4_unicode_ci", comment: "" do |t|
  t.int :id, primary_key: true, extra: "auto_increment"
  t.int :order, comment: "順番"
  t.boolean :active, default: true, comment: "アクティブフラグ"
  t.varchar :url, null: true, comment: "URL"
  t.varchar :photo, null: true, comment: "写真"

  t.datetime :created_at
  t.datetime :updated_at
end

create_table :schema_migrations, default_charset: "utf8mb4", collate: "utf8mb4_unicode_ci", comment: "" do |t|
  t.varchar "version", limit: 191

  t.index "version", name: "unique_schema_migrations", unique: true
end
