//
//  MonAn.swift
//  MonAnNgayTet
//
//  Created by Tuấn 01635578022 on 3/11/17.
//  Copyright © 2017 Tuấn 01635578022. All rights reserved.
//
import Foundation
import UIKit

class MonAn{
    var name: String?
    var photo: UIImage?
    init(name: String, photo: String) {
        self.name = name
        self.photo = UIImage(named: "\(photo).jpg")
    }
}

