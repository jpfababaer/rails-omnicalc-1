class CalculatorController < ApplicationController

  #Square Form + Results Page:
  def square_form

    render({template: "calculator_templates/square_form"})
  end

  def square_results

    @user_number = params.fetch("users_number").to_f

    @squared_number = @user_number**2

    render({template: "calculator_templates/square_results"})
  end

  #Square Root Form + Results Page:
  def square_root

    render({template: "calculator_templates/square_root"})

  end

  def square_root_results

    @user_number = params.fetch("users_number").to_f

    @squared_number = @user_number**0.5

    render({template: "calculator_templates/square_root_results"})

  end

  #Payment Form + Results:
  def payment_form

    render({template: "calculator_templates/payment_form"})

  end

  def payment_results

    @user_APR = params.fetch("user_APR").to_f
    r_variable = (@user_APR/100)/12
  
    @user_years = (params.fetch("user_years").to_f)
    n_variable = @user_years * 12
  
    @user_principal = params.fetch("user_principal").to_f
  
    #Debugging variables: Numerator and Denominator
    numerator = r_variable * @user_principal
    denominator1 = 1 - ((1+r_variable)**-n_variable)
  
    @user_payment = (numerator/denominator1)

    render({template: "calculator_templates/payment_results"})

  end

  #Random Form + Results:
  def random_form

    render({template: "calculator_templates/random_form"})

  end

  def random_results

    @user_minimum = params.fetch("user_minimum").to_f
    @user_maximum = params.fetch("user_maximum").to_f
  
    @rand_number = rand(@user_minimum..@user_maximum)

    render({template: "calculator_templates/random_results"})

  end

end
