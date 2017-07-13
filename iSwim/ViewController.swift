//
//  ViewController.swift
//  iSwim
//
//  Created by Estudiante on 28/6/17.
//  Copyright © 2017 Estudiante. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tableView : UITableView!
    var newArray : [Int] = [1, 2, 3, 4, 5, 6, 7, 8]
    //@IBOutlet var navigationBar : UINavigationBar!
    //@IBOutlet var tabBar: UITabBarController?
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.title = "Perfil"
    }
    
    @IBAction func showPopUp () {
        //self.navigationController?.navigationBar
        //self.navigationController?.tabBarController?.tabBar.isHidden = true
        //self.tabBar?.tabBar.isHidden = true
        self.navigationController?.tabBarController?.performSegue(withIdentifier: "one", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("custom")
    }
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        if section == 0 {
            return nil
        }
        
        let view = UIView()
        view.backgroundColor = UIColor.white
        
        let profileImage = UIImageView.init(frame: CGRect.init(x: 0, y: 0, width: 136, height: 114))
        //imageView.backgroundColor = UIColor.blue
        profileImage.image = UIImage.init(named: Users().profilePicture)
        
        
        
        let usernameLabel = UILabel.init(frame: CGRect.init(x: 150, y: 24, width: UIScreen.main.bounds.width - 170, height: 22))
        let textView = UITextView.init(frame: CGRect.init(x: 150, y: 52, width: UIScreen.main.bounds.width - 170, height: 44))//Hay que hacer que no sea editable por el usuario
        
        
        
        usernameLabel.text = Users().fullName()
        textView.text = Users().descriptionProfile
        
        view.addSubview(profileImage)
        view.addSubview(usernameLabel)
        view.addSubview(textView)
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        if section == 0 {
            return 0
        }
        
        return 114
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Seleccionó la fila \(indexPath.row) de la sección \(indexPath.section)")
        self.tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        if indexPath.section == 1{
            return true
        } else {
            return false
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if (editingStyle == .delete) {
            newArray.remove(at: indexPath.item)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return section == 0 ? 1 : newArray.count
    }
    
    func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 220
        }
        
        return 80
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "defaultCellForProfile") as! ProfileTableViewCell
            
            cell.volume?.text = CardController.shareController.volume
            cell.ppm?.text = CardController.shareController.ppm
            cell.date?.text = Users().whatDay()
            return cell
            
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "profileStaticCell") as! ProfileStaticViewCell
            
            let imageStr = String.init(format: Users().backgroundProfile)
            cell.background?.image = UIImage.init(named: imageStr)
            return cell
            
        }
            }
    
    /*@IBAction func back() {
        self.dismiss(animated: true, completion: nil)
    }*/
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}


