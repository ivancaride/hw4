Rails.application.routes.draw do
  # Login/out
  get "/", :controller => "users", :action => "new"
  get "/login", :controller => "sessions", :action => "new"
  get "/logout", :controller => "sessions", :action => "destroy"

  resources "places"
  resources "posts"
  resources "sessions"
  resources "users"

  get "/", :controller => "marketing_pages", :action => "index"
  resources "marketing_pages"

end
