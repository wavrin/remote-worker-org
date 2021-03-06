atom_feed do |feed|
  feed.title("Remote-Worker.org Articles")
  feed.updated(@articles[0].created_at) if @articles.length > 0

  @articles.each do |article|
    feed.entry(article) do |entry|
      entry.title(article.title)
      entry.content(article.body, type: 'html')

      entry.author do |author|
        author.name("Remote-Worder.org")
      end
    end
  end
end