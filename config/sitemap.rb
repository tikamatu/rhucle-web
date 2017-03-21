# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://" + `hostname`.chomp

SitemapGenerator::Sitemap.create do
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end
  Disc.find_each { |disc| add [discography_path, disc.title].join("/"), lastmod: disc.updated_at }
  add gallery_path, lastmod: VisualArt.order(updated_at: :desc).first&.updated_at
  add schedule_path, lastmod: Event.order(updated_at: :desc).first&.updated_at
  add biography_path, lastmod: Biography.first.updated_at
end
