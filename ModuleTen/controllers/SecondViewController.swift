//
//  SecondViewController.swift
//  ModuleTen
//
//  Created by Karavella on 22/06/22.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "scroll"
        addNavBar()

        // Do any additional setup after loading the view.
    }

    func addNavBar(){
        let back = UIImage(named: "ic_back")
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: back, style: .plain, target: self, action: #selector(backTap))
    }
    
    @objc func backTap(){
        
        navigationController?.popViewController(animated: true)
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
