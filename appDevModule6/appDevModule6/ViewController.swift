//
//  ViewController.swift
//  appDevModule6
//
//  Created by Tyler Morris on 6/30/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usdInput: UITextField!
    @IBOutlet weak var eurSwitch: UISwitch!
    @IBOutlet weak var jpySwitch: UISwitch!
    @IBOutlet weak var gbpSwitch: UISwitch!
    @IBOutlet weak var chfSwitch: UISwitch!
    @IBOutlet weak var convertButton: UIButton!
    
    let intRegex = /^(-?)(\d+)$/
    
    @IBOutlet weak var ErrorLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func textValidate(_ sender: Any) {
        if ((usdInput.text ?? "").contains(intRegex)) {
            ErrorLabel.isHidden = true
        } else {
            ErrorLabel.isHidden = false
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        let result = segue.destination as! ResultViewController
        
        result.usd = Double(usdInput.text ?? "0.0")
        result.eurSwitch = eurSwitch.isOn
        result.jpySwitch = jpySwitch.isOn
        result.gbpSwitch = gbpSwitch.isOn
        result.chfSwitch = chfSwitch.isOn
    }


}

