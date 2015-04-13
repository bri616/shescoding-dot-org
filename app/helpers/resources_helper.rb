module ResourcesHelper
  def add_custom_nav_class
    if current_page?(controller: 'resources')
      "resources-nav"
    end
  end

  def format_date(date)
    date.strftime("%B %-d, %Y")
  end

  def create_filter(id)
    ".filter_#{id}"
  end

  def create_filter_targets(resource)
    ids = resource.categories.pluck(:id)
    ids.map {|i| "filter_#{i}"}.join(' ')
  end
end
