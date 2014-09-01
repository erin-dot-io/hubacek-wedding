###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

set :build_dir, 'tmp'

set :markdown_engine, :redcarpet
# set :markdown, parse_block_html: true

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  # activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end

# Contentful
activate :contentful do |f|
  # The Space ID of your Contentful space
  f.space = 'dkbd1xopgf8c'

  # The access token (API Key) for the Content Delivery API
  f.access_token = 'fbaa518778d38d76836a6ee012bc428370bd066f911b04eb6f98422c0b5c7a38'

  # Optional: Options for middleman-blog

  # Filter Entries for your blog posts. See Contentful gem and Content Delivery API documentation.
  # f.blog_posts_query = {content_type: "6LbnqgnwA08qYaU", category: "news" }

  # Which keys to use in the article template for blog posts
  # Key: template variable
  # Value: Entry method or block
  # f.blog_post_mappings = {
  #     slug: :id,
  #     date: :created_at,
  #     body: :id,
  #     tags: :tags,
  #     title: ->(e){"#{e.id}XXXX"}
  # }

  # Define your own template for blog posts
  # f.new_article_template = "/my_templates/article.tt"

  # Automatically synchronize blog posts before building with "middleman build"
  # f.sync_blog_before_build = true # default: false
end

# require "lib/custom_helpers"
# helpers MarkdownHelper