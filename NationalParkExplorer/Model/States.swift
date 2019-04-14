//
//  States.swift
//  NationalParkExplorer
//
//  Created by Cara on 4/9/19.
//  Copyright © 2019 Cara. All rights reserved.
//

import Foundation

    // this holds a list of state names
    
    
struct States {
        
        static func stateAbbreviation(for stateName: String) -> String? {
            return stateAbbreviationDictionary[stateName] ?? nil
        }
        
        static let stateNames = ["Alaska",
                                 "Alabama",
                                 "Arkansas",
                                 "American Samoa",
                                 "Arizona",
                                 "California",
                                 "Colorado",
                                 "Connecticut",
                                 "District of Columbia",
                                 "Delaware",
                                 "Florida",
                                 "Georgia",
                                 "Guam",
                                 "Hawaii",
                                 "Iowa",
                                 "Idaho",
                                 "Illinois",
                                 "Indiana",
                                 "Kansas",
                                 "Kentucky",
                                 "Louisiana",
                                 "Massachusetts",
                                 "Maryland",
                                 "Maine",
                                 "Michigan",
                                 "Minnesota",
                                 "Missouri",
                                 "Mississippi",
                                 "Montana",
                                 "North Carolina",
                                 "North Dakota",
                                 "Nebraska",
                                 "New Hampshire",
                                 "New Jersey",
                                 "New Mexico",
                                 "Nevada",
                                 "New York",
                                 "Ohio",
                                 "Oklahoma",
                                 "Oregon",
                                 "Pennsylvania",
                                 "Puerto Rico",
                                 "Rhode Island",
                                 "South Carolina",
                                 "South Dakota",
                                 "Tennessee",
                                 "Texas",
                                 "Utah",
                                 "Virginia",
                                 "Virgin Islands",
                                 "Vermont",
                                 "Washington",
                                 "Wisconsin",
                                 "West Virginia",
                                 "Wyoming"]
        
        
        static let stateAbbreviationDictionary = ["Alaska" : "AK",
                                                  "Alabama" : "AL",
                                                  "Arkansas" : "AR",
                                                  "American Samoa" : "AS",
                                                  "Arizona" : "AZ",
                                                  "California" : "CA",
                                                  "Colorado" : "CO",
                                                  "Connecticut" : "CT",
                                                  "District of Columbia" : "DC",
                                                  "Delaware" : "DE",
                                                  "Florida" : "FL",
                                                  "Georgia" : "GA",
                                                  "Guam" : "GU",
                                                  "Hawaii" : "HI",
                                                  "Iowa" : "IA",
                                                  "Idaho" : "ID",
                                                  "Illinois" : "IL",
                                                  "Indiana" : "IN",
                                                  "Kansas" : "KS",
                                                  "Kentucky" : "KY",
                                                  "Louisiana" : "LA",
                                                  "Massachusetts" : "MA",
                                                  "Maryland" : "MD",
                                                  "Maine" : "ME",
                                                  "Michigan" : "MI",
                                                  "Minnesota" : "MN",
                                                  "Missouri" : "MO",
                                                  "Mississippi" : "MS",
                                                  "Montana" : "MT",
                                                  "North Carolina" : "NC",
                                                  "North Dakota" : "ND",
                                                  "Nebraska" : "NE",
                                                  "New Hampshire" : "NH",
                                                  "New Jersey" : "NJ",
                                                  "New Mexico" : "NM",
                                                  "Nevada" : "NV",
                                                  "New York" : "NY",
                                                  "Ohio" : "OH",
                                                  "Oklahoma" : "OK",
                                                  "Oregon" : "OR",
                                                  "Pennsylvania" : "PA",
                                                  "Puerto Rico" : "PR",
                                                  "Rhode Island" : "RI",
                                                  "South Carolina" : "SC",
                                                  "South Dakota" : "SD",
                                                  "Tennessee" : "TN",
                                                  "Texas" : "TX",
                                                  "Utah" : "UT",
                                                  "Virginia" : "VA",
                                                  "Virgin Islands" : "VI",
                                                  "Vermont" : "VT",
                                                  "Washington" : "WA",
                                                  "Wisconsin" : "WI",
                                                  "West Virginia" : "WV",
                                                  "Wyoming" : "WY"]
        
        
        

}
