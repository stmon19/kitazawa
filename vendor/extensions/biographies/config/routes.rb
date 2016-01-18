Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :biographies do
    resources :biographies, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :biographies, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :biographies, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
