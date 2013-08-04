Pairwithme::Application.routes.draw do
  match '/:search'    => 'tweets#show'
  root :to => 'tweets#index'
end
