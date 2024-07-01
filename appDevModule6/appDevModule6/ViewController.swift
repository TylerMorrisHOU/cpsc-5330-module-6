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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func textValidate(_ sender: Any) {
        convertButton.isEnabled = false
    }
    
    
    func textFieldDidChange(textField: UITextField) {
        if (false) {
            convertButton.isEnabled = false
        } else {
            convertButton.isEnabled = true
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

