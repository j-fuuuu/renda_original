//
//  resultViewController.swift
//  renda_original
//
//  Created by 藤井玖光 on 2022/09/03.
//

import UIKit

class resultViewController: UIViewController {

    //時間の結果を表示するラベル
    @IBOutlet var resulttimerLabel: UILabel!
    
    //リブレイボタンのラベル
    @IBOutlet var replay: UIButton!
    
    var resulttimer: Float = 0.0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resulttimerLabel.text = String(format: "%.2f", resulttimer)
        
        //ボタンの角を作る
        replay.layer.cornerRadius = 50
    
    
        // Do any additional setup after loading the view.
    }
    
    @IBAction func replaybutton() {
        self.dismiss(animated: true, completion: nil)
        

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
