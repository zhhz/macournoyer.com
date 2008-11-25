def articles_for_feed
  @pages.find(:limit => 10,
              :in_directory => 'blog',
              :recursive => true,
              :sort_by => 'mtime',
              :reverse => true) { |page| page.filename != "index" && page != @page }
end

def each_main_page_posts(&block)
  articles = @pages.find(:all, :in_directory => "blog", :recursive => true,
      :sort_by => "created_at", :reverse => true, :blog_post => true)
  articles.delete(@page)
  paginate(articles, 10, &block)
end
