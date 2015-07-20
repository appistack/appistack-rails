Rails.application.routes.draw do
  # authenticating users outside of /api/v1 scope
  mount_devise_token_auth_for 'User', at: '/auth'

  scope :api, constraints: { format: :json } do
    scope :v1 do
      resources :users, only: [:index, :show, :update]
      resources :artists, only: [:index, :show]
      resources :sounds, only: [:index, :show]
    end
  end

  get '/', to: redirect(Rails42::Application.config.client_app_url)
end
