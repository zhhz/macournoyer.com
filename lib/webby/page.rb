# Monkey pach Webby to have nicer URLs.
# Generate each html pages in a <page_name>/index.html file.
# So the URL will look like /<page_name>
module Webby::Resources
  class Page < Resource
    def destination
      dest = super
      if filename == "index" || extension != "html"
        dest
      else
        File.join File.dirname(dest), File.basename(dest, ".*"), "index.html"
      end
    end
  end
end