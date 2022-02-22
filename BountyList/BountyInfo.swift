//
//  BountyInfo.swift
//  BountyList
//
//  Created by Doy Kim on 2022/02/22.
//

import UIKit

struct BountyInfo {
    let name: String
    let bounty: Int
    
    var image: UIImage? {
        return UIImage(named: "\(name).jpg")
    }
    
    
    init(name: String, bounty: Int){
        self.name = name
        self.bounty = bounty
    }
}


