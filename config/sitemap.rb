# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://bookmygaddi.in"

SitemapGenerator::Sitemap.create do
  add home_index_path, changefreq: 'daily'

  Content.categories.each do |category|
    add "/#{category.slug}", :changefreq => 'weekly', :lastmod => category.updated_at
    category.articles.each do |article|
      add "/#{category.slug}/hire/#{article.slug}", :changefreq => 'weekly', :lastmod => article.updated_at
    end
  end
end
