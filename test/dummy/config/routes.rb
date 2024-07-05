Rails.application.routes.draw do
  mount BackpackUi::Engine => "/backpack_ui"

  root 'test_components#index'
end
