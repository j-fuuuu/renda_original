//
//  ViewController.swift
//  renda_original
//
//  Created by 藤井玖光 on 2022/08/29.
//

import UIKit

class ViewController: UIViewController {

    //連打のラベル
    @IBOutlet var countLabel: UILabel!
    
    //連打した数字の箱
    var countnumber = 0
    
    //Tapのボタンのラベル
    @IBOutlet var TapButtonLabel: UIButton!
    
    //タイマーのラベル
    @IBOutlet var timerLabel: UILabel!
    
    var count: Float = 0.0
    
    var timer: Timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TapButtonLabel.layer.cornerRadius = 125
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "identifier" {
            let nextView = segue.destination as! resultViewController
            nextView.resulttimer = count
        }
    }

    @objc func up(){
        count = count + 0.01
        timerLabel.text = String(format: "%.2f", count)
    }
   
    //TAPボタン
    @IBAction func tapButton(){
        
        countnumber = countnumber + 1
        
        countLabel.text = String(countnumber)
        
        if !timer.isValid{
                   timer = Timer.scheduledTimer(timeInterval: 0.01,
                                                target: self,
                                                selector: #selector(self.up),
                                                userInfo: nil,
                                                repeats: true)
        }
        
        if countnumber >= 100{
            
            countLabel.text = "100"
            
            if timer.isValid{
                       timer.invalidate()
                
            }
            performSegue(withIdentifier: "identifier", sender: nil)
            
            timerLabel.text = String(format: "%.2f", count)
                
            countnumber = 0
            
            countLabel.text = "0"
                
            }
            
        }
    
    
    
}
