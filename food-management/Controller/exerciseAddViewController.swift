//
//  exerciseAddViewController.swift
//  food-management
//
//  Created by 준수김 on 2021/09/29.
//

import UIKit

class exerciseAddViewController: UIViewController {
    
    

    @IBOutlet weak var picker: UIPickerView!
    
    let data = ["걷기(뛰기)", "배드민턴", "복싱", "수영", "자전거", "탁구"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.dataSource = self
        picker.delegate = self
    }
    @IBAction func didTapSave() {
        
    }
   
}
extension exerciseAddViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data.count
    }
}

extension exerciseAddViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data[row]
    }
}
