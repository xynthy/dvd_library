DvdLibrary::Application.routes.draw do
  resources :dvds, only: [] do
    get :in_library, :on => :collection
  end
end
