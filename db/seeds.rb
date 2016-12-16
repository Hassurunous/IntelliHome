# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create( name: 'Star Wars' }, { name: 'Lord of the Rings' )
#   Character.create(name: 'Luke', movie: movies.first)

Category.create(name: 'Lighting')
Category.create(name: 'Entertainment')
Category.create(name: 'Climate')
Category.create(name: 'Security')
Category.create(name: 'Safety')
Category.create(name: 'Family')
Category.create(name: 'Outdoors')
Category.create(name: 'Assistive')

Feature.create(description: "I want my lights to change colors when I play music.")                         #1
Feature.create(description: "I want my lights to turn off automatically when I'm not in the room.")         #2
Feature.create(description: "I want my lights to adjust themselves automatically for my needs.")            #3
Feature.create(description: "I want to see my house live on my cellphone.")                                 #4
Feature.create(description: "I want to keep digital recordings of my house's surroundings.")                #5
Feature.create(description: "I want to lock/unlock my door from anywhere.")                                 #6
Feature.create(description: "I want to see who is at the door from anywhere.")                              #7
Feature.create(description: "I want to stream music throughout my house.")                                  #8
Feature.create(description: "I want to control all of my devices with a single remote.")                    #9
Feature.create(description: "I want to connect all of my media players to a single device.")                #10
Feature.create(description: "I want to access all my entertainment services through a single interface.")   #11
Feature.create(description: "I want to voice control my music and shows.")                                  #12
Feature.create(description: "I want to see and speak with my family and friends from my room.")             #13
Feature.create(description: "I want to be alerted if there is dangerous weather near my home.")             #14
Feature.create(description: "I want to control my house using voice commands.")                             #15
Feature.create(description: "I want my thermostat to adjust itself.")                                       #16
Feature.create(description: "I want to know when there is someone at the door, even if I can't hear them.") #17
Feature.create(description: "I want to know about water leaks as soon as they happen, even when I'm not home.")                                                                                                     #18
Feature.create(description: "I want to moniter my appliances when they're connected.")                      #19
Feature.create(description: "I want my water valve to shut off if it detects a leak.")                      #20
Feature.create(description: "I want a thermostat that learns my habits.")                                   #21
Feature.create(description: "I want to regulate energy usage to save money and the environment.")           #22
Feature.create(description: "I want a fan that only turns on when it's too hot/cold.")                      #23
Feature.create(description: "I want a heater that turns itself on when it gets too cold.")                  #24
Feature.create(description: "I want sprinklers that work automatically.")                                   #25
Feature.create(description: "I want sprinklers that won't turn on if it's going to rain.")                  #26
Feature.create(description: "I want a lawn that mows itself.")                                              #27
Feature.create(description: "I want to know if the plants in my flowerbed/garden are healthy.")             #28
Feature.create(description: "I want to listen to my music outdoors.")                                       #29
Feature.create(description: "I want to play music in several rooms of my home.")                            #30
Feature.create(description: "I want to check in on my kid(s) when I'm not home.")                           #31
Feature.create(description: "I want to check in on my pet(s) when I'm not home.")                           #32
Feature.create(description: "I want to know that my kids are safe when they aren't home.")                  #33
Feature.create(description: "I want to feed my pets remotely.")                                             #34
Feature.create(description: "I want to be alerted if there is a gas leak in my home.")                      #35

CategoryFeature.create(category_id: 1, feature_id: 1)
CategoryFeature.create(category_id: 1, feature_id: 2)
CategoryFeature.create(category_id: 1, feature_id: 3)
CategoryFeature.create(category_id: 1, feature_id: 22)
CategoryFeature.create(category_id: 2, feature_id: 1)
CategoryFeature.create(category_id: 2, feature_id: 8)
CategoryFeature.create(category_id: 2, feature_id: 1)
CategoryFeature.create(category_id: 2, feature_id: 9)
CategoryFeature.create(category_id: 2, feature_id: 10)
CategoryFeature.create(category_id: 2, feature_id: 11)
CategoryFeature.create(category_id: 2, feature_id: 12)
CategoryFeature.create(category_id: 2, feature_id: 29)
CategoryFeature.create(category_id: 2, feature_id: 30)
CategoryFeature.create(category_id: 3, feature_id: 9)
CategoryFeature.create(category_id: 3, feature_id: 15)
CategoryFeature.create(category_id: 3, feature_id: 16)
CategoryFeature.create(category_id: 3, feature_id: 21)
CategoryFeature.create(category_id: 3, feature_id: 22)
CategoryFeature.create(category_id: 3, feature_id: 23)
CategoryFeature.create(category_id: 3, feature_id: 24)
CategoryFeature.create(category_id: 4, feature_id: 4)
CategoryFeature.create(category_id: 4, feature_id: 5)
CategoryFeature.create(category_id: 4, feature_id: 6)
CategoryFeature.create(category_id: 4, feature_id: 7)
CategoryFeature.create(category_id: 4, feature_id: 8)
CategoryFeature.create(category_id: 4, feature_id: 17)
CategoryFeature.create(category_id: 4, feature_id: 31)
CategoryFeature.create(category_id: 4, feature_id: 32)
CategoryFeature.create(category_id: 4, feature_id: 33)
CategoryFeature.create(category_id: 5, feature_id: 4)
CategoryFeature.create(category_id: 5, feature_id: 9)
CategoryFeature.create(category_id: 5, feature_id: 13)
CategoryFeature.create(category_id: 5, feature_id: 15)
CategoryFeature.create(category_id: 5, feature_id: 18)
CategoryFeature.create(category_id: 5, feature_id: 19)
CategoryFeature.create(category_id: 5, feature_id: 20)
CategoryFeature.create(category_id: 5, feature_id: 31)
CategoryFeature.create(category_id: 5, feature_id: 32)
CategoryFeature.create(category_id: 5, feature_id: 33)
CategoryFeature.create(category_id: 5, feature_id: 35)
CategoryFeature.create(category_id: 5, feature_id: 14)
CategoryFeature.create(category_id: 6, feature_id: 4)
CategoryFeature.create(category_id: 6, feature_id: 5)
CategoryFeature.create(category_id: 6, feature_id: 6)
CategoryFeature.create(category_id: 6, feature_id: 7)
CategoryFeature.create(category_id: 6, feature_id: 13)
CategoryFeature.create(category_id: 6, feature_id: 14)
CategoryFeature.create(category_id: 6, feature_id: 30)
CategoryFeature.create(category_id: 6, feature_id: 31)
CategoryFeature.create(category_id: 6, feature_id: 32)
CategoryFeature.create(category_id: 6, feature_id: 33)
CategoryFeature.create(category_id: 6, feature_id: 34)
CategoryFeature.create(category_id: 7, feature_id: 14)
CategoryFeature.create(category_id: 7, feature_id: 17)
CategoryFeature.create(category_id: 7, feature_id: 25)
CategoryFeature.create(category_id: 7, feature_id: 26)
CategoryFeature.create(category_id: 7, feature_id: 27)
CategoryFeature.create(category_id: 7, feature_id: 28)
CategoryFeature.create(category_id: 7, feature_id: 29)
CategoryFeature.create(category_id: 8, feature_id: 2)
CategoryFeature.create(category_id: 8, feature_id: 3)
CategoryFeature.create(category_id: 8, feature_id: 5)
CategoryFeature.create(category_id: 8, feature_id: 6)
CategoryFeature.create(category_id: 8, feature_id: 7)
CategoryFeature.create(category_id: 8, feature_id: 12)
CategoryFeature.create(category_id: 8, feature_id: 13)
CategoryFeature.create(category_id: 8, feature_id: 14)
CategoryFeature.create(category_id: 8, feature_id: 15)
CategoryFeature.create(category_id: 8, feature_id: 17)
