Refinery::Core::Engine.routes.draw do
  get 'refinery/memberships/members/:id/disable' => 'members#disable', :as => :memberships_admin_member
  get 'refinery/memberships/members' => 'members#index', :as => :memberships_admin_members

  scope :module => :memberships do

    # Frontend routes
    resources :members, :except => [:destroy] do
      collection do
        get :login
        get :welcome
        get :edit
        put :update
        get :profile
        match '/activate/:confirmation_token' => 'members#activate', :as => :activate, :constraints => {:confirmation_token => /[a-zA-Z0-9]+/}, :via => :get
      end

    end

    # Admin routes
    namespace :admin, :path => 'refinery/memberships' do
      resources :memberships, :only => :index do
        get :foo
        collection do
          get :settings
          put :save_settings
        end
      end

      resources :roles
      resources :members do
        member do
          put :extend

          put :enable
          put :disable

          put :accept
          put :reject
        end
      end

      resources :membership_emails, :except => :show do
        collection do
          get :settings
          put :save_settings
        end
      end

      resources :membership_email_parts, :except => :index
    end

  end
end
