//
//  MyTableViewCell.swift
//  Table_Collect_menu
//
//  Created by 박다미 on 2023/01/15.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    func configure(with models: [Model]){
        self.models = models
        collectionView.reloadData()
    }
    var models = [Model]()

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpCollectionView()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    //collectionView등록
    func setUpCollectionView(){
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        self.collectionView.register(UINib(nibName: "MyCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "MyCollectionViewCell")
    }
    
}
extension MyTableViewCell: UICollectionViewDelegate{}
extension MyTableViewCell: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return models.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:"MyCollectionViewCell", for: indexPath) as! MyCollectionViewCell
      
        cell.configure(with: models[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt: IndexPath) -> CGSize { //cell의 크기 설정
           return CGSize(width: 150, height: 230)
       }
    
}
