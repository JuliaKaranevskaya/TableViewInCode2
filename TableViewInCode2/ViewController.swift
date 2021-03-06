//
//  ViewController.swift
//  TableViewInCode2
//
//  Created by Юлия Караневская on 5/5/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    let tableView: UITableView = {
        let table = UITableView()
        return table
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Hello world \(indexPath.row)"
        
        if indexPath.row % 2 == 0 {
            cell.imageView?.image = UIImage(systemName: "bandage")
            cell.imageView?.tintColor = .systemPink
        } else {
            cell.imageView?.image = UIImage(systemName: "heart")
            cell.imageView?.tintColor = .systemRed
        }
        
        return cell
    }


}

