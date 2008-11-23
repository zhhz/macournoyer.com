require "compass"

Webby.site.haml_options.update :escape_html => true
Webby.site.sass_options.update :load_paths => [File.expand_path(File.dirname(__FILE__) + "../content/stylesheets")] +
                                              Compass::Frameworks::ALL.map {|f| f.stylesheets_directory }
