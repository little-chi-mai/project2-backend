if Rails.env === 'production'
  Rails.application.config.session_store :cookie_store, key: '_i-feel-like', domain: 'i-feel-like-json-api'
else
  Rails.application.config.session_store :cookie_store, key: '_i-feel-like'
end
