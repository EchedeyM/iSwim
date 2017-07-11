//
//  GoupsViewController.swift
//  iSwim
//
//  Created by Estudiante on 30/6/17.
//  Copyright © 2017 Estudiante. All rights reserved.
//

import UIKit

class GroupsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableViewGroups: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableViewGroups.delegate   = self
        self.tableViewGroups.dataSource = self
        //self.navigationController?.navigationBar.title = UIColor.white
        self.title = "Grupos"
    }
    
    // MARK: - UITableViewDelegate
    
    /*func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        
        let label = UILabel.init(frame: CGRect.init(x: 0, y: 0, width: 0, height: 0))
        
        view.addSubview(label)
        return view
        
        
    }*/
    
    /*func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0
    }*/
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Seleccionó la fila \(indexPath.row) de la sección \(indexPath.section)")
        self.tableViewGroups.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // let cell = UITableViewCell.init(style: .default, reuseIdentifier: "mycellId")
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "defaultCellForGroup") as! GroupViewCell
        
        cell.groupProfileImage?.layer.masksToBounds = true
        cell.groupProfileImage?.layer.cornerRadius = 40
        cell.groupProfileImage?.image = UIImage.init(named: GroupViewCell().groupProfile)
        cell.groupTitle?.text = GroupViewCell().groupTitleLabel
        
        return cell
        
    }
    
    /*cell?.textLabel?.text = String.init(format: "Section %i : Row %i", indexPath.section, indexPath.row)
     cell?.detailTextLabel?.text = String.init(format: "Detail (%i, %i)", indexPath.section, indexPath.row)*/
    
}
