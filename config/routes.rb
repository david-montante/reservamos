Rails.application.routes.draw do
  resources :weather, only: [] do
    collection do
      get 'forecast/:city_name', to: 'weather#forecast', as: 'forecast'
    end
  end
end
