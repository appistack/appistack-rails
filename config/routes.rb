Rails.application.routes.draw do
  scope :api, constraints: { format: :json } do
    scope :v1 do
      devise_for :users
      resources :users, only: [:index, :show]
    end
  end

  get '/*url', to: redirect(Rails42::Application.config.client_app_url)
  get '/', to: redirect(Rails42::Application.config.client_app_url)
end
