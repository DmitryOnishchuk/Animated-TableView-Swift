//
//  TableViewController.swift
//  AnimatedTableView
//
//  Created by Dmitry Onishchuk on 23.09.2021.
//

import UIKit

class TableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Test text"
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "reuseIdentifier")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        animateTableView()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        30
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        cell.textLabel!.text = "Test text"
        return cell
    }
    
    private func animateTableView(){
        tableView.reloadData()
        
        let cells = tableView.visibleCells
        let tableViewHeight = tableView.bounds.height
        var delay: Double = 0
        
        for cell in cells{
            cell.transform = CGAffineTransform(translationX: 0, y: tableViewHeight)
            UIView.animate(withDuration: 1.5,
                           delay: delay * 0.05,
                           usingSpringWithDamping: 0.8,
                           initialSpringVelocity: 0,
                           options: .curveEaseInOut,
                           animations: {cell.transform = CGAffineTransform.identity})
            delay += 1
        }
    }
    
}
