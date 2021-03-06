module ApplicationHelper
  
  def full_title(page_title)
    base_title = 'Autotune'
    if page_title.empty?
      base_title
    else 
      "#{base_title} | #{page_title}"
    end
  end
  
  def resource_name
    :user
  end
 
  def resource
    @resource ||= User.new
  end
 
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
  
  protected 
    def after_sign_in_path_for(resource) 
      user_path(resource) 
    end
end
