Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://localhost:3001/project2-frontend', 'anchorite1001.github.io'
    resource '*',
      :headers => :any,
      :methods => [:get, :post, :put, :patch, :delete, :options, :head],
      credentials: true
  end

  # this will need to be completed & changed to match the production app environment
  # allow do
  #   origins 'https://ADD DOMAIN HERE'
  #   resource '*',
  #     :headers => :any,
  #     :methods => [:get, :post, :put, :patch, :delete, :options, :head],
  #     credentials: true
  # end

end
