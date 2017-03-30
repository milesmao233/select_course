Rails.application.routes.draw do
  get "/students/:id" => "students#show", :as => :student

  get "/teachers" => "teachers#index", :as => :teachers

  delete "/teachers/:id" => "teachers#destory", :as => :delete_teacher


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
