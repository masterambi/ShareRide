//
//  User.swift
//  ShareRide
//
//  Created by Ramzy Rashaun Arief on 28/04/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import CoreLocation

struct User {
    let fullname: String
    let email: String
    let accountType: Int
    var location: CLLocation?
    let uid: String
    
    init(uid: String, dictionary: [String: Any]) {
        self.uid = uid
        self.fullname = dictionary["fullname"] as? String ?? ""
        self.email = dictionary["email"] as? String ?? ""
        self.accountType = dictionary["accountType"] as? Int ?? 0
    }
}
