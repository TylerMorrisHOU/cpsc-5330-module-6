//
//  ResultViewController.swift
//  appDevModule6
//
//  Created by Tyler Morris on 6/30/24.
//

import UIKit

class ResultViewController: UIViewController {
    
    var eurSwitch : Bool?
    var jpySwitch : Bool?
    var gbpSwitch : Bool?
    var chfSwitch : Bool?
    var usd : Double?
    
    let eurRate : Double = 0.93
    let jpyRate : Double = 160.85
    let gbpRate : Double = 0.79
    let chfRate : Double = 0.90
    
    @IBOutlet weak var eurStack: UIStackView!
    @IBOutlet weak var jpyStack: UIStackView!
    @IBOutlet weak var gbpStack: UIStackView!
    @IBOutlet weak var chfStack: UIStackView!
    
    @IBOutlet weak var usdLabel: UILabel!
    @IBOutlet weak var eurLabel: UILabel!
    @IBOutlet weak var jpyLabel: UILabel!
    @IBOutlet weak var gbpLabel: UILabel!
    @IBOutlet weak var chfLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        usdLabel.text = String((usd ?? 0))
        eurStack.isHidden = !(eurSwitch ?? true)
        eurLabel.text = String((usd ?? 0) * eurRate)
        jpyStack.isHidden = !(jpySwitch ?? true)
        jpyLabel.text = String((usd ?? 0) * jpyRate)
        gbpStack.isHidden = !(gbpSwitch ?? true)
        gbpLabel.text = String((usd ?? 0) * gbpRate)
        chfStack.isHidden = !(chfSwitch ?? true)
        chfLabel.text = String((usd ?? 0) * chfRate)
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
