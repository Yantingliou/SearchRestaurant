//
//  LocationIName.swift
//  SearchRestauranr
//
//  Created by 劉彥廷 on 2018/12/4.
//  Copyright © 2018年 liou. All rights reserved.
//

import Foundation

class LocationIName: NSObject {
    static let shard = LocationIName()
    /*
    let locationNameData = ["north":["taiwanNorth":["台北","桃園"],
                                     "taiwanNorthImage":["",""]],
                            "central":["taiwanCentral":["台中","彰化"],
                                       "taiwanCentralImage":["",""]],
                            "south":["taiwanSouth":["高雄","屏東"],
                                     "taiwanSouthImage":["",""]],
                            ]
*/
   let taiwanNorth = ["台北","桃園"]
   let taiwanNorthImage = ["",""]
   let taiwanCentral = ["台中","彰化"]
   let taiwanCentralImage = ["",""]

   let taiwanSouth = ["高雄","屏東"]
   let taiwanSouthImage = ["",""]
}
