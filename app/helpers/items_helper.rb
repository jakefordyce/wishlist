module ItemsHelper

  def full_url(item_url)
    if(item_url.match?(/^http/))
      item_url
    else
      "http://" + item_url
    end
  end

end
