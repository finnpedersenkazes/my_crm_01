Company.create!([
  {name: "Microsoft", description: "The company behind windows and office", active: "Yes"},
  {name: "Apple", description: "The inventor of the iPad, the iPhone and the Apple Watch", active: "Yes"},
  {name: "Salesforce", description: "The leading CRM system", active: "Yes"},
  {name: "Navision", description: "Got sold to Microsoft", active: "No"},
  {name: "Tesla", description: "Makes the best electric cars", active: "Yes"},
  {name: "SpaceX", description: "Sends stuff into space", active: "Yes"},
  {name: "Le Wagon", description: "Change your life: learn to code", active: "Yes"}
])
CompanyEventRelation.create!([
  {active: "", company_id: 7, event_id: 1}
])
CompanyPersonRelation.create!([
  {start_date: "", end_date: "", job_function: "Chief Technology Officer", active: "", company_id: 1, person_id: 1},
  {start_date: "2004", end_date: "2007", job_function: "International Localization", active: "No", company_id: 1, person_id: 3},
  {start_date: "1994", end_date: "2004", job_function: "Country Support", active: "No", company_id: 4, person_id: 3},
  {start_date: "", end_date: "", job_function: "CEO", active: "", company_id: 5, person_id: 4},
  {start_date: "", end_date: "", job_function: "CEO", active: "", company_id: 6, person_id: 4},
  {start_date: "July 3rd", end_date: "September 2nd", job_function: "Student", active: "", company_id: 7, person_id: 3}
])
CompanyThingRelation.create!([
  {acquired_date: "", disposed_date: "", active: "", company_id: 5, thing_id: 4},
  {acquired_date: "", disposed_date: "", active: "", company_id: 5, thing_id: 5},
  {acquired_date: "", disposed_date: "", active: "", company_id: 5, thing_id: 6},
  {acquired_date: "", disposed_date: "", active: "", company_id: 2, thing_id: 2},
  {acquired_date: "", disposed_date: "", active: "", company_id: 2, thing_id: 3}
])
Event.create!([
  {name: "Le Wagon Lisbon  Summer 2017", description: "Lear to code with Ruby on Rails and deploy it on Heroku", active: "During July and August"}
])
Person.create!([
  {name: "Bill Gates", description: "", active: ""},
  {name: "Steve Jobs", description: "", active: ""},
  {name: "Finn Pedersen", description: "", active: ""},
  {name: "Elon Musk", description: "", active: ""}
])
PersonEventRelation.create!([
  {active: "", person_id: 3, event_id: 1}
])
PersonPlaceRelation.create!([
  {active: "During July and August 2017", person_id: 3, place_id: 1},
  {active: "", person_id: 3, place_id: 2}
])
PersonThingRelation.create!([
  {active: "I would really like to have the new one", person_id: 3, thing_id: 2},
  {active: "Model 6", person_id: 3, thing_id: 3},
  {active: "I would really like one", person_id: 3, thing_id: 6}
])
Place.create!([
  {name: "Beta-i", description: "Home of Le Wagon Lisbon", address: "Av. Casal Ribeiro 28, 1000-092 Lisboa, Portugal", lattitude: "38.732435", longitude: "-9.142385", altitude: "200 m"},
  {name: "Company address", description: "", address: "21 bis rue passe Demoiselles, Reims, France", lattitude: "", longitude: "", altitude: ""}
])
PlaceEventRelation.create!([
  {active: "", place_id: 1, event_id: 1}
])
Thing.create!([
  {name: "Microsoft Windows", description: "", active: ""},
  {name: "iPad", description: "", active: ""},
  {name: "iPhone", description: "", active: ""},
  {name: "Tesla Model S", description: "", active: ""},
  {name: "Tesla Model X", description: "", active: ""},
  {name: "Tesla Model 3", description: "", active: ""}
])
