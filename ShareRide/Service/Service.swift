//
//  Service.swift
//  ShareRide
//
//  Created by Ramzy Rashaun Arief on 28/04/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import Firebase

let DB_REF = Database.database().reference()
let REF_USERS = DB_REF.child("users")

struct Service {
    
    static let shared = Service()
    let currentUid = Auth.auth().currentUser?.uid
    
    func fetchUserData() {
        REF_USERS.child(currentUid!).observeSingleEvent(of: .value) { (snapshot) in
            guard let dictionary = snapshot.value as? [String: Any] else { return }
            guard let fullname = dictionary["fullname"] as? String else { return }
            print("DEBUG: User full name is \(fullname)")
        }
    }
    
}
