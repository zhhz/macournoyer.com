def articles_for_feed
  @pages.find(:limit => 10,
              :in_directory => 'blog',
              :recursive => true,
              :sort_by => 'mtime',
              :reverse => true) { |page| page.filename != "index" && page != @page }
end