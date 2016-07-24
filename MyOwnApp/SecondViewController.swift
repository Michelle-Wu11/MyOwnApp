//
//  SecondViewController.swift
//  MyOwnApp
//
//  Created by 吴雨楠 on 16/7/22.
//  Copyright © 2016年 Yunan Wu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var monthLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var myImageVIew: UIImageView!
    
    var date = ""
    var month = ""
    var year = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        monthLabel.text = month
        dateLabel.text = date
        yearLabel.text = year
        let a: String = year
        let b: Int? = Int(a)
        let c : Int = b! % 12
        switch c {
        case 0: myImageVIew.image = UIImage(named: "猴年")
        case 1: myImageVIew.image = UIImage(named: "鸡年")
        case 2: myImageVIew.image = UIImage(named: "狗年")
        case 3: myImageVIew.image = UIImage(named: "猪年")
        case 4: myImageVIew.image = UIImage(named: "鼠年")
        case 5: myImageVIew.image = UIImage(named: "牛年")
        case 6: myImageVIew.image = UIImage(named: "虎年")
        case 7: myImageVIew.image = UIImage(named: "兔年")
        case 8: myImageVIew.image = UIImage(named: "龙年")
        case 9: myImageVIew.image = UIImage(named: "蛇年")
        case 10: myImageVIew.image = UIImage(named: "马年")
        case 11: myImageVIew.image = UIImage(named: "羊年")
        default: myImageVIew.image = UIImage(named: "猴年")
        }
        
    }
   

}
