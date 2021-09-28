//
//  ViewController.swift
//  food-management
//
//  Created by 준수김 on 2021/09/25.
//

import UIKit

private let cellID = "foodTableViewCell"

class foodViewController: UIViewController {
    
    
    // MARK: - 프로퍼티
    var foodTableViewDataModel: Array = [Food(foodImage: "탄수화물", foodname: "현미밥", foodweight: "210g", foodcalorie: "351"),
                                  Food(foodImage: "단백질", foodname: "닭가슴살", foodweight: "200g", foodcalorie: "218"),
                                  Food(foodImage: "지방", foodname: "케이크", foodweight: "74g", foodcalorie: "264"),
                                  Food(foodImage: "비타민", foodname: "오렌지", foodweight: "100g", foodcalorie: "40"),
                                  Food(foodImage: "무기질", foodname: "브로콜리", foodweight: "91g", foodcalorie: "31"),
                                  Food(foodImage: "물", foodname: "생수", foodweight: "1L", foodcalorie: "0")]

    var Total = 0
    
    // MARK: - UI 객체
    @IBOutlet weak var foodTableView: UITableView!
    @IBOutlet weak var calorieTotal: UINavigationItem!
    // MARK: - 생명주기
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableView()
        setUpLayout()
    }
    
    // MARK: -  Helper
    private func setUpTableView() {
        foodTableView.delegate = self
        foodTableView.dataSource = self
        foodTableView.register(UINib(nibName: cellID, bundle: nil), forCellReuseIdentifier: cellID)
        }
        private func setUpLayout() {
        }
    // MARK: - Delete(CRUD)
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
           
           if editingStyle == .delete {
               foodTableViewDataModel.remove(at: indexPath.row)
               tableView.deleteRows(at: [indexPath], with: .fade)
               
           } else if editingStyle == .insert {
               
           }
       }
}
    
    // MARK: - UITableViewDataSource, UITableViewDelegate
    extension foodViewController: UITableViewDataSource, UITableViewDelegate {
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return foodTableViewDataModel.count
        }

        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cellData = foodTableViewDataModel[indexPath.row]
            let cell = foodTableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! foodTableViewCell
            cell.foodImage.image = UIImage(named: cellData.foodImage) //사진 나타내기!!!
            cell.titleLabel?.text = cellData.foodname
            cell.titleLabel?.sizeToFit() //Label 짤림 해결
            cell.detailLabel?.text = cellData.foodweight
            cell.detailLabel?.sizeToFit()
            cell.calorieLabel?.text = "+\(cellData.foodcalorie)Kcal"
            cell.calorieLabel?.sizeToFit()
            Total += Int(cellData.foodcalorie) ?? 0
            calorieTotal.title = "총 섭취 칼로리는 \(Total)Kcal입니다!"
            //테이블 뷰를 리로드하면 칼로리가 추가되는 문제가 있음.
            return cell
        }
    }
    

