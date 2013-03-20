# Pager for each article page
# Previous(Olfer) article
def prev_link
  prv = sorted_articles.index(@item) + 1
  unless articles.size - 1 < prv
    link_to(
      '&laquo;[Older] ' + sorted_articles[prv][:title],
      sorted_articles[prv].reps[0],
      :class => "prev"
    )
  end
end

# Next(Newer) article
def next_link
  nxt = sorted_articles.index(@item) - 1
  unless nxt < 0
    link_to(
      sorted_articles[nxt][:title] + ' [Newer]&raquo;',
      sorted_articles[nxt].reps[0],
      :class => "next"
    )
  end
end
