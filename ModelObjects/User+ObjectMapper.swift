//
//  User+ObjectMapper.swift
//  JSONShootout
//
//  Created by Wane Wang on 11/10/16.
//  Copyright © 2016 SwiftBit. All rights reserved.
//

import ObjectMapper

extension User.Friend: ImmutableMappable {
    public init(map: Map) throws {
        self.id             = try map.value("id")
        self.name           = try map.value("name")
    }
}

extension User: ImmutableMappable {
    
    public init(map: Map) throws {
        self.id             = try map.value("_id")
        self.index          = try map.value("index")
        self.guid           = try map.value("guid")
        self.isActive       = try map.value("isActive")
        self.balance        = try map.value("balance")
        self.picture        = try map.value("picture")
        self.age            = try map.value("age")
        self.eyeColor       = (try? map.value("eyeColor")) ?? .red
        self.name           = try map.value("name")
        self.gender         = (try? map.value("gender")) ?? .male
        self.company        = try map.value("company")
        self.email          = try map.value("email")
        self.phone          = try map.value("phone")
        self.address        = try map.value("address")
        self.about          = try map.value("about")
        self.registered     = try map.value("registered")
        self.latitude       = try map.value("latitude")
        self.longitude      = try map.value("longitude")
        self.tags           = try map.value("tags")
        self.friends        = try map.value("friends")
        self.greeting       = try map.value("greeting")
        self.favoriteFruit  = try map.value("favoriteFruit")
    }
    
}
