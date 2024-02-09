Rails.application.routes.draw do

#Homepage:
get("/", { controller: "calculator", action: "square_form"})

#Square Form + Results Page:
get("/square/new", { controller: "calculator", action: "square_form"})
get("/square/results", { controller: "calculator", action: "square_results"})

#Square Root Form + Results Page:
get("/square_root/new", { controller: "calculator", action: "square_root"})
get("/square_root/results", { controller: "calculator", action: "square_root_results"})

#Payment Form + Results:
get("/payment/new", { controller: "calculator", action: "payment_form"})
get("/payment/results", { controller: "calculator", action: "payment_results"})

#Random Form + Results:
get("/random/new", { controller: "calculator", action: "random_form"})
get("/random/results", { controller: "calculator", action: "random_results"})
end
