Rails.application.routes.draw do
  # Expenses
  get "/expenses" => "expenses#index"
  post "/expenses" => "expenses#create"
  get "/expenses/:id" => "expenses#show"
  patch "/expenses/:id" => "expenses#update"
  delete "/expenses/:id" => "expenses#destroy"
  get "/recurring" => "expenses#recurring"
  
  # Incomes
  get "/incomes" => "incomes#index"
  post "/incomes" => "incomes#create"
  get "/incomes/:id" => "incomes#show"
  patch "/incomes/:id" => "incomes#update"
  delete "/incomes/:id" => "incomes#destroy"
  get "/recurring" => "incomes#recurring"

  # MonthlyBalances
  get "/monthly_balances" => "monthly_balances#index"
  post "/monthly_balances" => "monthly_balances#create"
  get "/monthly_balances/:id" => "monthly_balances#show"
  patch "/monthly_balances/:id" => "monthly_balances#update"
  delete "/monthly_balances/:id" => "monthly_balances#destroy"

  # CurrentBalances
  get "/current_balances" => "current_balances#show"
  post "/current_balances" => "current_balances#create"

  # Calcs
  get "/calcs/monthly_data" => "calcs#monthly_data"

  # Recurring
  get "/recurring_expenses" => "recurring_expenses#index"
  get "/recurring_incomes" => "recurring_incomes#index"

  # Account creation, login and user profile
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  get "/users/:id" => "users#show"

end
