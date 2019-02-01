//
//  setupViewController.swift
//  denpo
//
//  Created by 横尾美空 on 2019/01/24.
//  Copyright © 2019年 横尾美空. All rights reserved.
//

import UIKit

class setupViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
//    1/255をかける
    @IBAction func changecolorToGreen(){
        view.backgroundColor = UIColor(red: 0.4862, green: 0.5803, blue: 0.5607, alpha: 1)
    }
    @IBAction func changecolorToPurple(){
        view.backgroundColor = UIColor(red: 0.507, green: 0.4953, blue: 0.5772, alpha: 1)
    }
    @IBAction func changecolorToRed(){
        view.backgroundColor = UIColor(red: 0.5772, green: 0.3354, blue: 0.2847, alpha: 1)
    }
    @IBAction func changecolorToNavy(){
        view.backgroundColor = UIColor(red: 0.2574, green: 0.3198, blue: 0.5031, alpha: 1)
    }
    @IBAction func changecolorToPink(){
        view.backgroundColor = UIColor(red: 0.5187, green: 0.3627, blue: 0.4992, alpha: 1)
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
