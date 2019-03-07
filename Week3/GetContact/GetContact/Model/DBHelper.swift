//
//  DBHelper.swift
//  GetContact
//
//  Created by Алишер Халыкбаев on 07.03.2019.
//  Copyright © 2019 KBTU. All rights reserved.
//
import SQLite

class DBHelper {
    
    static let shared = DBHelper()
    public let connection: Connection?
    private init(){
        do {
            let dbPath = Bundle.main.path(forResource: "tableVukalovich", ofType: "db")!
            connection = try Connection(dbPath)
            print ("Good Database")
        } catch {
            connection = nil
            let nserror = error as NSError
            print ("Cannot connect to Database. Error is: \(nserror), \(nserror.userInfo)")
        }
    }
}
