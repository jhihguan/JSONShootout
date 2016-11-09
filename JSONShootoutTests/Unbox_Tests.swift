//
//  Unbox_Tests.swift
//  JSONShootout
//
//  Created by Bart Whiteley on 5/17/16.
//  Copyright © 2016 Bart Whiteley. All rights reserved.
//

import XCTest
import Unbox
import ModelObjects

class Unbox_Tests: XCTestCase {

    func testPerformance() {
        
        let dict = try! JSONSerialization.jsonObject(with: self.data, options: [])
        
        self.measure {
            let programs:[Program] = try! unbox(dictionary: dict as! UnboxableDictionary, atKeyPath: "ProgramList.Programs")
            XCTAssert(programs.count > 1000)
        }
    }
    
    func testPerformance2() {
        self.measure {
            let users: [User] = try! unbox(data: self.usersData)
            XCTAssert(users.count > 100)
        }
    }
    
    private lazy var data:Data = {
        let path = Bundle(for: type(of: self)).url(forResource: "Large", withExtension: "json")
        let data = try! Data(contentsOf: path!)
        return data
    }()
    
    private lazy var usersData:Data = {
        let path = Bundle(for: type(of: self)).url(forResource: "Users", withExtension: "json")
        let data = try! Data(contentsOf: path!)
        return data
    }()
    
}
