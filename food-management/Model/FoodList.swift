//
//  FoodList.swift
//  food-management
//
//  Created by 준수김 on 2021/09/30.
//

import Foundation
import UIKit

class FoodList {
    var storage: [Food]
    init() {
        self.storage = [Food]()
    }
    
    public var count: Int {
        return storage.count
    }
    //새로운 Data 추가
    public func add(foodImage: String, foodname: String, foodweight: String, foodcalorie: String) {
        self.storage.append(Food(foodImage: foodImage, foodname: foodname, foodweight: foodweight, foodcalorie: foodcalorie))
    }
    //Data 삭제
    public func delete(indexRow: Int) {
        self.storage.remove(at: indexRow)
    }
    
    public func itemAt(index: Int) -> Food {
      return storage[index]
    }
}
