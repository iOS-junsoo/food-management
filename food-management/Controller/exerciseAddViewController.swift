//
//  exerciseAddViewController.swift
//  food-management
//
//  Created by 준수김 on 2021/09/29.
//

import UIKit
var tray = ""
class exerciseAddViewController: UIViewController {
    
    var selectRow = 0

    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var timePicker: UIDatePicker!
    @IBOutlet weak var exerciseCalorie: UITextField!
    
    let data = ["걷기", "배드민턴", "복싱", "수영", "자전거", "탁구"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.dataSource = self
        picker.delegate = self
    }
    @IBAction func didTapSave() {
        exerciseList.add(exerciseImage: data[selectRow], exercisename: data[selectRow], exerciseHour: tray, exercisecalorie: exerciseCalorie.text!)
    }
    var timeInt : Int = Int()
    @IBAction func didTimePickerValueChanged(_ sender : UIDatePicker){
           self.timeInt = Int(self.timePicker.countDownDuration) / 60
           
           if timeInt >= 60{
               let hour : Int = timeInt / 60
               let minit : Int = timeInt % 60
               
               if hour < 10 {
                   tray = "\(hour)시간 \(minit)분"
               }else{
                   tray = "\(hour)시간 \(minit)분"
               }
               if minit == 0{
                   if hour < 10 {
                       tray = "\(hour)시간 00분"
               }else{
                   tray = "\(hour)시간 00분"
               }
               }
           }else{
               tray = "\(timeInt)분"
           }
           
       }
}
extension exerciseAddViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data.count
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectRow = row
    }
}

extension exerciseAddViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data[row]
    }
}
