###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# General configuration
activate :google_drive, load_sheets: '1x178PMDJDr2JWIBukv6JrLOfJD529Gcnbx4BCanbISM' 

activate :deploy do |deploy|
  deploy.method = :git
  deploy.build_before = true
end

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

###
# Helpers
###

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# Add path to Bower components directory
after_configuration do
 sprockets.append_path File.join "#{root}", "bower_components"
end

# Build-specific configuration
configure :build do
  # Minify CSS on build
  activate :minify_css
  # Relative assets needed to deploy to Github Pages
  activate :relative_assets
end
