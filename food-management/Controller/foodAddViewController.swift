//
//  foodAddViewController.swift
//  food-management
//
//  Created by 준수김 on 2021/09/28.
//

import UIKit

class foodAddViewController: UIViewController{
    
    
    @IBOutlet weak var picker: UIPickerView!
    let data = ["탄수화물", "단백질", "지방", "비타민", "무기질", "물"]
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.dataSource = self
        picker.delegate = self
    }
   
}
extension foodAddViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data.count
    }
}

extension foodAddViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent: Int) -> String? {
        return data[row]
    }
}
