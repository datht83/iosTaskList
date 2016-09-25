//
//  ViewController.swift
//  iosTaskList
//
//  Created by Huynh Dat on 9/25/16.
//  Copyright © 2016 HuynhDat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var todoList = [ToDo]()
    @IBAction func moveToAdd(_ sender: AnyObject) {
        let addNew = self.storyboard?.instantiateViewController(withIdentifier: "addNewVC")
        self.navigationController?.pushViewController(addNew!, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.dataSource = self
        tableView.delegate = self
        todoList = [
            ToDo(name: "di hoc", isCompleted: false),
            ToDo(name: "di lam", isCompleted: true),
            ToDo(name: "di choi", isCompleted: false),
            ToDo(name: "di ngu", isCompleted: false),
            ToDo(name: "di da banh", isCompleted: true),
            ToDo(name: "di boi", isCompleted: false)
        ]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }


}
extension ViewController:UITableViewDataSource {
    // 3 func tion bat buoc phai co
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = todoList[indexPath.row].name
        if todoList[indexPath.row].isCompleted == true {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }
        return cell
    }
}
extension ViewController:UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var todo = todoList[indexPath.row]
        if todo.isCompleted == true {
            todo.isCompleted = false
        } else {
            todo.isCompleted = true
        }
        todoList[indexPath.row] = todo
        tableView.reloadRows(at: [indexPath], with: .none)
    }
}

