//
//  AddNewViewController.swift
//  iosTaskList
//
//  Created by Huynh Dat on 9/25/16.
//  Copyright © 2016 HuynhDat. All rights reserved.
//

import UIKit
protocol AddNewToDoDelegate {
    <#requirements#>
}

class AddNewViewController: UIViewController {

    @IBOutlet weak var txtToDoNewName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func handleAddNew(_ sender: AnyObject) {
        let toDoName = txtToDoNewName.text
        if toDoName == "" {
            
        } else {
            print(toDoName)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
