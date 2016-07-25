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
    @IBOutlet weak var myImageView1: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myLabel1: UILabel!
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
        let d : String = month
        let e :Int = Int(d)!
        switch c {
        case 0: myImageVIew.image = UIImage(named: "猴年")
                myLabel.text = "You are born in the Year of the Monkey."
                myLabel1.text = "Extremely curious and thirsty for knowledge, Monkeys are never happier than when absorbing facts and information and, possessed of a near photographic memory, usually retain all that they have learned. Bored with mundane, day-to-day details, they love confronting a challenging problem that calls upon their considerable genius."
       case 1: myImageVIew.image = UIImage(named: "鸡年")
                myLabel.text = "You are born in the Year of the Rooster."
                myLabel1.text = "Roosters are generally deep thinkers and it is a rare occasion when something gets by them. They are courageous by nature and know how to get what they want.  They love to entertain, and a party hosted by them is almost sure to be the most memorable and extravagant of any. "
        case 2: myImageVIew.image = UIImage(named: "狗年")
                myLabel.text = "You are born in the Year of the Dog."
                myLabel1.text = "People born in the Year of the Dog make the best of friends. As such, they often inspire confidence in others and are always willing to help those in need. Their role is more apt to be as good listeners, and they usually make good companions for the more demonstrative or gregarious personalities of the zodiac. "
        case 3: myImageVIew.image = UIImage(named: "猪年")
                myLabel.text = "You are born in the Year of the Pig."
                myLabel1.text = "Like the knights of old, Pigs are often highly regarded for their chivalry and pureness of heart, and will often sacrifice their own well-being for the greater good.The Pig can be very naive, however, and may easily fall victim to the unscrupulous who take advantage of their idealistic nature, as Pigs see."
        case 4: myImageVIew.image = UIImage(named: "鼠年")
                myLabel.text = "You are born in the Year of the Rat."
                myLabel1.text = "People born in the Year of the Rat are one of the most industrious and hardest working people in the zodiac. They are always busy in pursuit of an ambitious personal goal, and sometimes they may become difficult to work with since they are born perfectionists. As a result, they are often successful financially, and are good providers for their family and those they cherish most dearly.  "
        case 5: myImageVIew.image = UIImage(named: "牛年")
                myLabel.text = "You are born in the Year of the Ox."
                myLabel1.text = "Born to lead, Ox people can be quite stubborn — but also stubbornly loyal to those they love. However, when opposed, their fierce tempers are legendary. So always follow this very wise advice: never cross an Ox!"
        case 6: myImageVIew.image = UIImage(named: "虎年")
                myLabel.text = "You are born in the Year of the Tiger."
                myLabel1.text = "Tigers are fascinating, commanding, and exasperating. They are patient but short-tempered, calm but rebellious, petty but noble, fearsome but affectionate, free spirits but fiercely territorial. With their many & various personality traits, Tigers are also, not surprisingly, noted for a marked reluctance to make up their minds."
        case 7: myImageVIew.image = UIImage(named: "兔年")
                myLabel.text = "You are born in the Year of the Rabbit."
                myLabel1.text = "They are good listeners, kind and sweet by nature, and are therefore often sought out as popular and trusted friends. Generally noted for their physical beauty, Rabbits like to surround themselves with beautiful things. They have a good eye for art, design and fashion."
        case 8: myImageVIew.image = UIImage(named: "龙年")
                myLabel.text = "You are born in the Year of the Dragon."
                myLabel1.text = "At any social gathering, you know a Dragon has entered the room as the air starts to tingle with the energy they exude. Enthusiastic, and confident sometimes to the point of swaggering, Dragon people inspire confidence in others with their honesty and quick wit."
        case 9: myImageVIew.image = UIImage(named: "蛇年")
                myLabel.text = "You are born in the Year of the Snake."
                myLabel1.text = "Quiet and unassuming, they prefer to work by themselves and are more often in the spotlight for their real and lasting accomplishments than for outward attempts at garnering attention. Like a deep river, Snake people are usually placid on the surface, but their thoughts and emotions run very deep. "
        case 10: myImageVIew.image = UIImage(named: "马年")
                myLabel.text = "You are born in the Year of the Horse."
                myLabel1.text = "Although Horses work well in groups, they prefer to work by themselves and exhibit extraordinary levels of energy and concentration. They are good with their hands, but can be seen happily losing themselves in accomplishing any given task. "
        case 11: myImageVIew.image = UIImage(named: "羊年")
                myLabel.text = "You are born in the Year of the Goat."
                myLabel1.text = "Shy by nature, Sheep are the most not practical people. With their considerable charm and innocence, Sheep never lack for protective friends and admirers. This is especially so among family members, to whom they are strongly attached."
        default: myImageVIew.image = UIImage(named: "error")
        }
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let dvc = segue.destinationViewController as! ThirdViewController
        dvc.month = monthLabel.text!
        dvc.date = dateLabel.text!
        dvc.year = yearLabel.text!
        
    }
}
