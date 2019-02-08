1. Do I need more than one JS file? Separation of task v streamlined?
2. Does */* indicate I'm hitting JS?
	e.g., 
	Started GET "/users/5" for 127.0.0.1 at 2019-02-08 11:07:12 -0600
	Processing by UsersController#show as HTML
  	Parameters: {"id"=>"5"}
  	Completed 200 OK in 96ms (Views: 90.8ms | ActiveRecord: 0.9ms)
	-v-
	Started GET "/users/5" for 127.0.0.1 at 2019-02-08 11:07:13 -0600
	Processing by UsersController#show as */*
  	Parameters: {"id"=>"5"}
	Completed 200 OK in 177ms (Views: 103.6ms | ActiveRecord: 0.6ms)

	