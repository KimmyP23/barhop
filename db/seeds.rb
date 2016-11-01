neighborhoods = [
                  "The Castro",
                  "Dogpatch",
                  "Hayes Valley",
                  "Mission District",
                  "North Beach",
                  "SoMa"
                ]

neighborhoods.each do |n|
  Neighborhood.create(name: n)
end

# create bar template:

# Bar.create( name: "",
#             specialty_drink: "",
#             cash_only: ,
#             neighborhood_id:  )

# castro 1
Bar.create( name: "440 Castro",
            specialty_drink: "Bulleit Bourbon Shot",
            cash_only: true,
            neighborhood_id: 1 )

Bar.create( name: "The Mix",
            specialty_drink: "Absolut Cocktail",
            cash_only: false,
            neighborhood_id: 1 )

# "Dogpatch" 2
Bar.create( name: "Dogpatch Saloon",
            specialty_drink: "Berry White",
            cash_only: true,
            neighborhood_id: 2 )

Bar.create( name: "The Sea Star",
            specialty_drink: "About Thyme",
            cash_only: true,
            neighborhood_id: 2 )

# "Hayes Valley" 3

Bar.create( name: "Brass Tacks",
            specialty_drink: "Cinnamon Toast Punch",
            cash_only: true,
            neighborhood_id: 3 )

Bar.create( name: "Absinthe",
            specialty_drink: "Absinthe",
            cash_only: false,
            neighborhood_id: 3 )

# "Mission District" 4

Bar.create( name: "The Armory Club",
            specialty_drink: "Bonded & Bold",
            cash_only: false,
            neighborhood_id: 4 )

Bar.create( name: "Zeitgeist",
            specialty_drink: "Duncan's Secret Swizzle",
            cash_only: true,
            neighborhood_id: 4 )

Bar.create( name: "Elixir",
            specialty_drink: "The Elixir Mule",
            cash_only: false,
            neighborhood_id: 4 )

# "North Beach" 5

Bar.create( name: "The Saloon",
            specialty_drink: "Whatamelon #3",
            cash_only: false,
            neighborhood_id: 5 )

Bar.create( name: "Romolo",
            specialty_drink: "Bajan Love Punch",
            cash_only: false,
            neighborhood_id: 5 )

# "SoMa" 6

Bar.create( name: "Tempest",
            specialty_drink: "Yerba Buena Sling",
            cash_only: false ,
            neighborhood_id: 6 )

Bar.create( name: "House of Shields",
            specialty_drink: "Sunday Streets",
            cash_only: true ,
            neighborhood_id: 6 )
