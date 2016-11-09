//
//  User+Unbox.swift
//  JSONShootout
//
//  Created by Wane Wang on 11/10/16.
//  Copyright © 2016 SwiftBit. All rights reserved.
//

import Unbox

extension User.Friend: Unboxable {
    public init(unboxer: Unboxer) throws {
        self.id             = try unboxer.unbox(key:"id")
        self.name           = try unboxer.unbox(key:"name")
    }
}

extension User: Unboxable {
    public init(unboxer: Unboxer) throws {
        self.id             = try unboxer.unbox(key:"_id")
        self.index          = try unboxer.unbox(key:"index")
        self.guid           = try unboxer.unbox(key:"guid")
        self.isActive       = try unboxer.unbox(key:"isActive")
        self.balance        = try unboxer.unbox(key:"balance")
        self.picture        = try unboxer.unbox(key:"picture")
        self.age            = try unboxer.unbox(key:"age")
        self.eyeColor       = Color(rawValue: try unboxer.unbox(key:"eyeColor")) ?? .red
        self.name           = try unboxer.unbox(key:"name")
        self.gender         = Gender(rawValue: try unboxer.unbox(key:"gender")) ?? .male
        self.company        = try unboxer.unbox(key:"company")
        self.email          = try unboxer.unbox(key:"email")
        self.phone          = try unboxer.unbox(key:"phone")
        self.address        = try unboxer.unbox(key:"address")
        self.about          = try unboxer.unbox(key:"about")
        self.registered     = try unboxer.unbox(key:"registered")
        self.latitude       = try unboxer.unbox(key:"latitude")
        self.longitude      = try unboxer.unbox(key:"longitude")
        self.tags           = try unboxer.unbox(key:"tags")
        self.friends        = try unboxer.unbox(key:"friends")
        self.greeting       = try unboxer.unbox(key:"greeting")
        self.favoriteFruit  = try unboxer.unbox(key:"favoriteFruit")
    }
}
