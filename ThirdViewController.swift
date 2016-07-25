//
//  ThirdViewController.swift
//  MyOwnApp
//
//  Created by 吴雨楠 on 16/7/24.
//  Copyright © 2016年 Yunan Wu. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var monthLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var myLabel: UILabel!
    
    var date = ""
    var year = ""
    var month = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        yearLabel.text = year
        monthLabel.text = month
        dateLabel.text = date
        
        func dateOfBirth(a: String, b: String) -> (String)
        {
            let c = a + b
            return c
            
        }
        
        switch dateOfBirth(monthLabel.text!, b: dateLabel.text!)
        {
        case "0321"..."0419": myImageView.image = UIImage(named: "白羊")
            myLabel.text = "You are Aries."
        case "0420"..."0520": myImageView.image = UIImage(named: "金牛")
            myLabel.text = "You are Taurus."
        case "0521"..."0621": myImageView.image = UIImage(named: "双子")
            myLabel.text = "You are Gemini."
        case "0622"..."0722": myImageView.image = UIImage(named: "巨蟹")
            myLabel.text = "You are Cancer."
        case "0723"..."0822": myImageView.image = UIImage(named: "狮子")
            myLabel.text = "You are Leo."
        case "0823"..."0922": myImageView.image = UIImage(named: "处女")
            myLabel.text = "You are Virgo."
        case "0923"..."1023": myImageView.image = UIImage(named: "天秤")
            myLabel.text = "You are Libra."
        case "1024"..."1122": myImageView.image = UIImage(named: "天蝎")
            myLabel.text = "You are Scorpio."
        case "1123"..."1221": myImageView.image = UIImage(named: "射手")
            myLabel.text = "You are Sagittarius."
        case "1222"..."0119": myImageView.image = UIImage(named: "摩羯")
            myLabel.text = "You are Capricorn."
        case "0110"..."0218": myImageView.image = UIImage(named: "水瓶")
            myLabel.text = "You are Aquarius."
        case "0219"..."0320": myImageView.image = UIImage(named: "双鱼")
            myLabel.text = "You are Pisces."
        default: myImageView.image = UIImage(named:"error")
        }
    }
}
