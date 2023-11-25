//
//  HomeVC.swift
//  ProjectOne
//
//  Created by Chandra Jayaswal on 10/08/2023.
//

import UIKit

class HomeVC: BaseVC {
    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnSignOutAction(_ sender: Any) {
        self.moveToLoginVC()
    }
    
}

extension HomeVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tblView.dequeueReusableCell(withIdentifier: "cellMessage")!
        cell.textLabel?.text = "Hi Row: \(indexPath.row), Section: \(indexPath.section)"
        return cell
    }
    
    
}
