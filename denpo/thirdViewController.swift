//
//  thirdViewController.swift
//  denpo
//
//  Created by 横尾美空 on 2018/12/12.
//  Copyright © 2018年 横尾美空. All rights reserved.
//

import UIKit

class thirdViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet var dayTextField : UITextField!
    @IBOutlet var messageTextField : UITextField!
    
    var infoArray : [Dictionary<String,String>] = []
    var saveData : UserDefaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dayTextField.delegate = self
        messageTextField.delegate = self
        
    }
    override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
        // Do any additional setup after loading the view.
    

    @IBAction func done (){
        let infoDictionary = ["day":dayTextField.text!,
                              "message":messageTextField.text!]
        infoArray.append(infoDictionary)
        
        saveData.set(infoDictionary, forKey: "INFO")
        //        saveData2.set(doneNumber,forKey:"number")
        
        self.dismiss(animated: true, completion: nil)
        
        dayTextField.text = ""
        messageTextField.text = ""
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
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
