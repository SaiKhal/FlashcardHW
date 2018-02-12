//
//  DBService.swift
//  trenddit
//
//  Created by Masai Young on 2/7/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import Foundation
import FirebaseDatabase

class DBService {
    private init() {
        // reference to the root of the Firebase database
        dbRef = Database.database().reference()
        
        // children of root database node
        cardsRef = dbRef.child("cards")
        usersRef = dbRef.child("users")
    }
    static let manager = DBService()
    
    private var dbRef: DatabaseReference!
    private var cardsRef: DatabaseReference!
    private var usersRef: DatabaseReference!
    
    public func getDB()-> DatabaseReference { return dbRef }
    public func getUsers()-> DatabaseReference { return usersRef }
    public func getCards()-> DatabaseReference { return cardsRef }
}
