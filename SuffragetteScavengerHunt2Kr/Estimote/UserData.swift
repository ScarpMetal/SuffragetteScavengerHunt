//
//  UserData.swift
//  SuffragetteScavengerHunt2Kr
//
//  Created by Matthew Graham on 4/13/17.
//  Copyright © 2017 RIT Museum Studies Program. All rights reserved.
//

import Foundation

class UserData{
    static let instance = UserData()
    var seen: [String:Bool]
    private init(){
        seen = [
            "7c11ce0b9d69cdbc97b224f8ac696f00": false,   // Ice - Susan B. Anthony
            "d34aaca8bcfbd471372047d3df875418": false,   // Blueberry - Ida Breiman
            "c232d68887e4cd5315500fc4a59e1f15": false,   // Mint - Kate Gleason
            "e16dce819ae647e98a518de190702c05": false,   // Candy - Hester C. Jeffrey
            "1b853d12257e7857eb41eff1577f6214": false,   // Beetroot - Fannie Barrier Williams
            "8c5aee919dceac5f58f89dece902a82d": false    // Lemon - Martha Matilda Harper
        ]
    }
}
