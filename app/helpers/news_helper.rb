module NewsHelper

  def display_index_news_links(news)
    html = "<td>#{link_to 'Show', news}</td>"
    if(news.user == current_user)
      html += "<td>#{link_to 'Edit', edit_news_path(news)}</td>"
      html += "<td>#{link_to 'Destroy', news, method: :delete, data: { confirm: 'Are you sure?' }}</td>"
    end
    html.html_safe
  end


end
