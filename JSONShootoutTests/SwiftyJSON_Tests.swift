//
//  SwiftyJSON_Tests.swift
//  JSONShootout
//
//  Created by Bart Whiteley on 6/1/16.
//  Copyright © 2016 SwiftBit. All rights reserved.
//

import XCTest
import ModelObjects
import SwiftyJSON

class SwiftyJSON_Tests: XCTestCase {
    
    func testDeserialization() {
        self.measure {
            let json = JSON(data:self.data)
            XCTAssert(json.count > 0)
        }
    }
    
    func testPerformance() {
        let json = JSON(data:self.data)
        self.measure {
            let programRA = json["ProgramList"]["Programs"].arrayValue
            let programs = programRA.map(Program.init)
            XCTAssert(programs.count > 1000)
        }
    }
    
    func testDeserialization2() {
        self.measure {
            let json = JSON(data:self.usersData)
            XCTAssert(json.count > 0)
        }
    }
    
    func testPerformance2() {
        let json = JSON(data:self.usersData)
        self.measure {
            let users = json.arrayValue.map(User.init)
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
