
Specs:

 Using Ruby on Rails for the project
 [x] Include at least one has_many relationship (x has_many y e.g. User has_many Recipes) - Event has many Happenings and Organization has many Events (capitalization for ease of reading)

 [x] Include at least one belongs_to relationship (x belongs_to y e.g. Post belongs_to User) - Event belongs_to Organization; Happening belongs_to Users, and Happening belongs_to Events 

 [x] Include at least one has_many through relationship (x has_many y through z e.g. Recipe has_many Items through Ingredients) - Events has_many Users through Happenings; Users has_many Events through Happenings

 [x] The "through" part of the has_many through includes at least one user submittable attribute (attribute_name e.g. ingredients.quantity) - Happenings allow Users to indicate whether they plan to attend an Event. Planned attendance and/or participation in a carpool are user submittable attributes that in turn create a Happening.

 [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item) - Event validates name, presence: true; Organization validates :name, presence: true and validates_uniqueness_of :name; User has_secure_password, validates :name, presence: true, validates :password, presence: true, length: { in: 6..64 }

 [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
 - Possibly an area to be expanded. May do this before the actual review. Event: scope :last_added, -> { order(created_at: :desc).first 

 [x] Include signup (how e.g. Devise) - local 

 [x] Include login (how e.g. Devise) - local & Omniauth/Facebook

 [x] Include logout (how e.g. Devise) - local

 [x] Include third party signup/login (how e.g. Devise/OmniAuth) - Omniauth/Facebook

 [x] Include nested resource show or index (URL e.g. users/2/recipes) - events#show; events#index; happenings#index

 [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients) - events#new;

 [x] Include form display of validation errors (form URL e.g. /recipes/new) - users#signin; users#new; sessions#new

Confirm:

[x] The application is pretty DRY
[x] Limited logic in controllers
[x] Views use helper methods if appropriate
[x] Views use partials if appropriate