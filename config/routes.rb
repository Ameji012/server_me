Rails.application.routes.draw do
  resources :contact_forms

  HighVoltage.configure do |config|
    config.home_page = 'home'
  end
end
