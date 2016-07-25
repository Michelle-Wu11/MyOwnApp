

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var monthTextField: UITextField!
    @IBOutlet weak var dateTextField: UITextField!
    @IBOutlet weak var yearTextField: UITextField!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let dvc = segue.destinationViewController as! SecondViewController
        dvc.month = monthTextField.text!
        dvc.date = dateTextField.text!
        dvc.year = yearTextField.text!
        
        view.endEditing(true)
    }

    @IBAction func resetButton(sender: AnyObject) {
        monthTextField.text = ""
        yearTextField.text = ""
        dateTextField.text = ""
    }
}

