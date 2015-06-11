Rails.application.routes.draw do

  # Adds routes for evercookie under namespace (path)
  scope "#{Evercookie.get_namespace}" do
    # route for js file to set cookie
    match 'set' => "evercookie/evercookie#set", as: :evercookie_set, via: [:get, :options]
    # route for js file to get cookie
    match 'get' => "evercookie/evercookie#get", as: :evercookie_get, via: [:get, :options]
    # route for save action to save cookie value to session
    match 'save' => "evercookie/evercookie#save", as: :evercookie_save, via: [:get, :options]

    # route to png image to be tracked by js script
    match 'ec_png' => "evercookie/evercookie#ec_png", as: :evercookie_png, via: [:get, :options]
    # route to etag action to be tracked by js script
    match 'ec_etag' => "evercookie/evercookie#ec_etag", as: :evercookie_etag, via: [:get, :options]
    # route to cache action to be tracked by js script
    match 'ec_cache' => "evercookie/evercookie#ec_cache", as: :evercookie_cache, via: [:get, :options]
  end

end
