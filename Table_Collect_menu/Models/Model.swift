//
//  Model.swift
//  Table_Collect_menu
//
//  Created by 박다미 on 2023/01/15.
//

struct Model {
    let imageName: String
    let title : String
    let price : String

    init(imageName: String, title: String, price:String){
        self.imageName = imageName
        self.title = title
        self.price = price
        
    }
}
