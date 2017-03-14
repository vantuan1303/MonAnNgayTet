//
//  DataManage.swift
//  MonAnNgayTet
//
//  Created by Tuấn 01635578022 on 3/11/17.
//  Copyright © 2017 Tuấn 01635578022. All rights reserved.
//

import Foundation
class DataManager {
    var data = NSMutableArray()
    
    static let sharedInstance = DataManager()
    private init() {
        let filePath = Bundle.main.path(forResource: "CacMonAn", ofType: "plist")
        let raw = NSDictionary(contentsOfFile: filePath!)
        let temp = NSMutableArray(capacity: (raw?.count)!)
        
        for item in raw! {
            let monAn = MonAn(name: (item.value as AnyObject).value(forKey: "name") as! String, photo: (item.value as AnyObject).value(forKey: "photo") as! String)
            
            temp.add(monAn)
        }
        
        data = NSMutableArray(array: temp)
    }
    
}
