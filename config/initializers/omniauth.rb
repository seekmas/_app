Rails.application.config.middleware.use OmniAuth::Builder do
  provider :weibo, '1791199972', '92d22a555ed9368418da424fdd013499'
end