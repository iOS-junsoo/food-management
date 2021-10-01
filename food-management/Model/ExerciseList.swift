//
//  ExerciseList.swift
//  food-management
//
//  Created by 준수김 on 2021/10/01.
//

import Foundation


class ExerciseList {
    var storage: [Exercise]
    init() {
        self.storage = [Exercise]()
    }
    
    public var count: Int {
        return storage.count
    }
    //새로운 Data 추가
    public func add(exerciseImage: String, exercisename: String, exerciseHour: String, exercisecalorie: String) {
        self.storage.append(Exercise(exerciseImage: exerciseImage, exercisename: exercisename, exerciseHour: exerciseHour, exercisecalorie: exercisecalorie))
    }
    //Data 삭제
    public func delete(indexRow: Int) {
        self.storage.remove(at: indexRow)
    }
    
    public func itemAt(index: Int) -> Exercise {
      return storage[index]
    }
}
