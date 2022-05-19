//
//  Database.swift
//  CoffeePlace
//
//  Created by Thiago Henrique on 18/05/22.
//

import Foundation

class Database {
    func openDataBase() -> String? {
        return Bundle.main.path(forResource: "Database", ofType: "json")
    }
}
