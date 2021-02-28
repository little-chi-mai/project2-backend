# this needs to have the domain added here for the cookie to work once it goes to heroku

if Rails.env == 'production'
  Rails.application.config.session_store :cookie_store, key: '_i-feel-like', domain: 'heroku'
else
  Rails.application.config.session_store :cookie_store, key: '_i-feel-like'
end
