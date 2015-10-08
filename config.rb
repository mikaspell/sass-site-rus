require 'breakpoint'
require 'builder'
require 'middleman-syntax'
require 'middleman-deploy'
require 'susy'
require 'typogruby'

activate :directory_indexes
activate :syntax

set :markdown, :fenced_code_blocks => true,
               :autolink => true,
               :smartypants => true
set :markdown_engine, :redcarpet
set :css_dir,    'assets/css'
set :js_dir,     'assets/js'
set :images_dir, 'assets/img'

page "/humans.txt",                :layout => false
page "/sitemap.xml",               :layout => false
page "/404.html",                  :layout => :layout_2_column
page "/about.html",                :layout => :layout_2_column
page "/guide.html",                :layout => :layout_2_column
page "/libsass.html",              :layout => :layout_2_column
page "/sitemap.html",              :layout => :layout_2_column
page "/community-guidelines.html", :layout => :layout_2_column
page "/documentation/*",           :layout => :docs, :directory_index => false

with_layout :styleguide do
  page "/styleguide/*"
end

helpers do
  def is_page_active(page)
    current_page.url == page ? {:class => 'active'} : {}
  end
end


configure :development do
  activate :livereload

  compass_config do |config|
    config.output_style = :expanded
  end
end

configure :build do
  # activate :asset_hash
  # activate :gzip
  # activate :minify_css
  # activate :minify_html
  # activate :minify_javascript
  activate :relative_assets

  activate :robots, :rules => [
    {:user_agent => '*', :allow => %w(/)}
  ],
  :sitemap => 'http://sass-scss.ru/sitemap.xml'

  set :relative_links, true

  compass_config do |config|
    config.output_style = :compact
    config.line_comments = false
  end
end
