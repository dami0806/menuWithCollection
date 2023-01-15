//
//  ViewController.swift
//  Table_Collect_menu
//
//  Created by 박다미 on 2023/01/15.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var models = [Model]()
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableView()
        // Do any additional setup after loading the view.
    }
    
    func setUpTableView(){
        models.append(Model(imageName: "icecream.jpeg", title: "아이스크림", price: "1000원"))
        models.append(Model(imageName: "macaron", title: "마카롱", price: "3000원"))
        models.append(Model(imageName: "chocolate", title: "초콜릿", price: "1000원"))
        models.append(Model(imageName: "jelly", title: "젤리", price: "1500원"))
        models.append(Model(imageName: "cake", title: "케이크", price: "5000원"))
        models.append(Model(imageName: "coffee", title: "커피", price: "2000월"))
        tableView.register(UINib(nibName: "MyTableViewCell", bundle: nil), forCellReuseIdentifier: "MyTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
        
      
        
    }
}

extension ViewController: UITableViewDelegate{}
extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyTableViewCell", for: indexPath) as! MyTableViewCell
        cell.titleLabel.text = "이 상품 어때요?"
        cell.configure(with: models)
        return cell
        
       
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat { //cell의 높이 설정
           return 240
       }
    
}


