//
//  User+SwiftyJSON.swift
//  JSONShootout
//
//  Created by Wane Wang on 11/10/16.
//  Copyright © 2016 SwiftBit. All rights reserved.
//

import SwiftyJSON

extension User.Friend { // SwiftyJSON
    public init(json: JSON) {
        self.id             = json["id"].intValue
        self.name           = json["name"].stringValue
    }
}

extension User {
    public init(json: JSON) {
        self.id             = json["_id"].stringValue
        self.index          = json["index"].intValue
        self.guid           = json["guid"].stringValue
        self.isActive       = json["isActive"].boolValue
        self.balance        = json["balance"].stringValue
        self.picture        = json["picture"].stringValue
        self.age            = json["age"].intValue
        self.eyeColor       = Color(rawValue: json["eyeColor"].stringValue) ?? .red
        self.name           = json["name"].stringValue
        self.gender         = Gender(rawValue: json["gender"].stringValue) ?? .male
        self.company        = json["company"].stringValue
        self.email          = json["email"].stringValue
        self.phone          = json["phone"].stringValue
        self.address        = json["address"].stringValue
        self.about          = json["about"].stringValue
        self.registered     = json["registered"].stringValue
        self.latitude       = json["latitude"].doubleValue
        self.longitude      = json["longitude"].doubleValue
        self.tags           = json["tags"].arrayValue.map { $0.stringValue }
        self.friends        = json["friends"].arrayValue.map(User.Friend.init)
        self.greeting       = json["greeting"].stringValue
        self.favoriteFruit  = json["favoriteFruit"].stringValue
    }
}
