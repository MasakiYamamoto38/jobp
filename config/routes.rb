Rails.application.routes.draw do

  get 'user/index'

  # get 'index/addcom'

  post 'user/addcom',to: 'user#addcom_post'

  get 'user/addcom',to: 'user#addcom_get'

  post 'user/addprogress',to: 'user#addprogress_post'

  get 'user/addprogress',to: 'user#addprogress_get'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
