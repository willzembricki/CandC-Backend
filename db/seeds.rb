# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.create(username: "Will",password:"Will")

crimes = ["drug-possession-marijuana","drug-possession-opium","drug-possession-synthetic","drug-possession-other","drug-sales-marijuana","drug-sales-opium","drug-sales-synthetic","drug-sales-other"]
states = ["AL", "AK","AZ", "AR", "CA", "CO", "CT", "DE", "FL", "GA", "HI",  "ID", "IL", "IN", "IA","KS", "KY", "LA", "MA", "MD", "ME", "MI", "MN", "MO",
          "MS", "MT", "NC", "ND", "NE", "NH", "NJ", "NM", "NV", "NY", "OH", "OK", "OR", "PA", "RI", "SC", "SD", "TN", "TX", "UT", "VA", "VT", "WA", "WI", "WV", "WY"]

# Arrest_records and Offender_records creatiion 
# states.each.with_index do |state,si|
#     crimes.each.with_index do |crime,ci| 
       
#         arrestsRace = JSON.parse(File.read("db/datafiles-race/#{state}_#{crime}.json"))
#         # arrestsGender = JSON.parse(File.read("db/datafiles-gender/#{state}_#{crime}.json"))
#         arrestsRace["results"].each do |arrest_item|
#             ArrestRecord.create(state_id: si + 1 , 
#                             offender_record_id: ci + 1, 
#                             year: arrest_item["data_year"].to_i
#                             )
        
#         end
#     end
# end
#States creation 
stateDemo = JSON.parse(File.read("/Users/willzembricki/Flatiron/code/FinalProject/candc-backend/db/CensusData.json"))
print (stateDemo.length)
stateDemo.each.with_index do |state,ci |
   
    State.create(
       
        name: state[10],
        abbreviation: state[11],
        population:state[0],
        asianPop:state[4],
        native_hawaiian:state[5],
        black:state[2],
        american_indian:state[3],
        white:state[1])
end