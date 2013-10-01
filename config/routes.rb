MyPage::Application.routes.draw do

  resources :contact_messages, only: [:new, :create]
  resources :scores

  root to: 'static_pages#home'

  match '/packman', to: 'static_pages#packman', via: [:get, :post]
  match '/cars', to: 'static_pages#cars', via: [:get, :post]
  match '/java', to: 'static_pages#java', via: [:get, :post]
  match '/rails', to: 'static_pages#rails', via: [:get, :post]
  match '/contact', to: 'static_pages#contact', via: [:get, :post]
  match '/resume', to: 'static_pages#resume', via: [:get, :post]
end

