module ApplicationHelper

  def full_title(page_title = '')
    base_title = "Smart Gioiosa"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def meta_descriptions(page_description = ' ')
    base_description = "Blog Smart Gioiosa"
    if page_description.empty?
      tag('meta', name: 'description', content: "#{base_description}")
    else
      tag('meta', name: 'description', content: "#{base_description} - #{page_description}")

    end
  end

  def last_posts
    @posts = Post.last(3).reverse
  end

  def last_events
    @events = Event.all.order('start_time DESC').last(3)
    #@events.last(3)
  end

end
