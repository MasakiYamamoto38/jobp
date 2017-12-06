Rails.application.routes.draw do

  get 'progress/edit/:prg_id',to: 'progress#edit'

  post 'progress/edit/:prg_id',to: 'progress#update'

  get 'progress/destroy/:prg_id',to: 'progress#destroy'

  get 'user/index'

  # get 'index/addcom'

  post 'user/addcom',to: 'user#addcom_post'

  get 'user/addcom',to: 'user#addcom_get'

  post 'user/addprogress',to: 'user#addprogress_post'

  get 'user/addprogress',to: 'user#addprogress_get'

  get 'user/deletecom/:id',to:'user#deletecom'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
