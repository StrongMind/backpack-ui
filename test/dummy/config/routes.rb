Rails.application.routes.draw do
  get 'test_components/index'
  mount BackpackUi::Engine => "/backpack_ui"

  root 'test_components#index'
end
