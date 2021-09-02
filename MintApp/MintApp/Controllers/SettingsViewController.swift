//
//  SettingsTableViewController.swift
//  MintApp
//
//  Created by Decagon on 02/09/2021.
//

import UIKit

class SettingsViewController: UIViewController {
    private var items = [TableViewModel]()
    @IBOutlet weak var settingsTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Settings"
       
        settingsTableView.separatorStyle = .none
        
        settingsTableView.delegate = self
        settingsTableView.dataSource = self
        items = [
            TableViewModel(image: "person.fill", title: "Profile"),
            TableViewModel(image: "creditcard", title: "Account management"),
            TableViewModel(image: "speaker.wave.2", title: "Referrals"),
            TableViewModel(image: "textformat.size.smaller.hi", title: "Legal"),
            TableViewModel(image: "square.and.pencil", title: "Help and Supposrt"),
            TableViewModel(image: "doc.fill", title: "System"),
            TableViewModel(image: "square.and.arrow.up", title: "Logout")
        ]
        
    }
}

extension SettingsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as? TableViewCell
        cell?.setup(items[indexPath.row])
        cell?.selectionStyle = .none
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = indexPath.row
        
        switch cell {
        case 0:
            print("One")
        case 3:
            guard let legalsController = storyboard?.instantiateViewController(identifier: "LegalsViewController") as? LegalsViewController else {return}
            legalsController.title = "Legals"
            navigationController?.pushViewController(legalsController, animated: true)
        case 5:
            guard let systemController = storyboard?.instantiateViewController(identifier: "SystemController") as? SystemController else {return}
            systemController.title = "Settings"
            navigationController?.pushViewController(systemController, animated: true)
        case 6:
            dismiss(animated: true, completion: nil)
            
        default:
            print("None")
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
        
    }
    
    
}
