class SidenavSubitem < SidenavItem
  include Rails.application.routes.url_helpers

  def title
    @title ||= TitleNormalizer.call(@folder)
  end

  def show_link?
    @folder[:is_file?] || @folder[:is_tabbed?]
  end

  def collapsible?
    @options['collapsible'].nil? || @options['collapsible']
  end

  def url
    @url ||= begin
      if documentation?
        url = url_for(
          document: Navigation.new(@folder).path_to_url,
          controller: :markdown,
          action: :show,
          locale: I18n.locale,
          only_path: true
        )
        url = "/#{@folder[:product]}#{url}" if @folder[:is_task?]
        url
      elsif @folder[:external_link]
        @folder[:external_link]
      else
        "/#{Navigation.new(@folder).path_to_url}"
      end
    end
  end

  def active?
    if navigation == :tutorials
      active_path.starts_with?(url)
    else
      url == active_path
    end
  end

  def active_path
    @active_path ||= request_path.chomp("/#{code_language}")
  end

  def link_css_class
    active? ? 'Vlt-sidemenu__link_active' : ''
  end
end
