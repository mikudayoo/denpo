//
//  secondViewController.swift
//  denpo
//
//  Created by 横尾美空 on 2018/12/12.
//  Copyright © 2018年 横尾美空. All rights reserved.
//

import UIKit

class secondViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    @IBOutlet var table : UITableView!
    var saveData : UserDefaults = UserDefaults.standard
    var infoArray : [Dictionary<String,String>] = []
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        table.dataSource = self
        table.delegate = self
        table.register(UINib(nibName: "myTableView", bundle: nil), forCellReuseIdentifier: "cell")
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        if saveData.array(forKey: "INFO") != nil{
            infoArray = saveData.array(forKey: "INFO") as! [Dictionary<String, String>]
        }
        table.reloadData()
    }
    
    func numberOfSections(in ListTableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section:Int) ->Int{
        return infoArray.count
    }
    //tableViewのセルの数を指定
    
    func tableView(_ tableView : UITableView, cellForRowAt indexpath:IndexPath) -> UITableViewCell{
        let cell : UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for:indexpath) as! myTableViewCell
        let nowIndexPathDictionary = infoArray[indexpath.row]
        cell.textLabel?.text = nowIndexPathDictionary["message"]
//        cell.textLabel?.text = nowIndexPathDictionary["message"]
        // 一覧にでるのを名前にしてる
        return cell
    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        selectedInfo = indexPath.row as Int
//        if selectedInfo != nil {
//            // SubViewController へ遷移するために Segue を呼び出す
//            performSegue(withIdentifier: "toHenkyakuView",sender: nil)
//        }
//    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(infoArray[indexPath.row])が選ばれました")
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            infoArray.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            saveData.set(infoArray,forKey:"INFO")
        }
    }
    // これはスライドしたらdelegateできる　ネットからコピペしたけどsaveDataの描き忘れに注意
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
