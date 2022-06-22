//
//  HomeViewController.swift
//  ModuleTen
//
//  Created by Karavella on 22/06/22.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    

    @IBOutlet var colView: UICollectionView!
    let numberOfColumns: CGFloat = 2
    var items: Array<Item> = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        colView.delegate = self
        colView.dataSource = self
        
        self.colView.register(UINib(nibName: "ItemColViewCell", bundle: nil), forCellWithReuseIdentifier: "myCell")
        
        if let flowLayout = colView?.collectionViewLayout as? UICollectionViewFlowLayout {
            let screenSize: CGRect = UIScreen.main.bounds
            let cellWidth = screenSize.width / numberOfColumns - 15
            flowLayout.itemSize = CGSize(width: cellWidth, height: 250)
        }
        
        inites()
        addNavigationBar()
        // Do any additional setup after loading the view.
    }

    //MARK: - init
    
    func inites(){
        items.append(Item(name: "Best Coding", image: "photo_m"))
        items.append(Item(name: "Amazing Coding", image: "photo_w"))
        items.append(Item(name: "Best Coding", image: "photo_m"))
        items.append(Item(name: "Amazing Coding", image: "photo_w"))
        items.append(Item(name: "Best Coding", image: "photo_m"))
        items.append(Item(name: "Amazing Coding", image: "photo_w"))
        items.append(Item(name: "Best Coding", image: "photo_m"))
        items.append(Item(name: "Amazing Coding", image: "photo_w"))
        items.append(Item(name: "Best Coding", image: "photo_m"))
        items.append(Item(name: "Amazing Coding", image: "photo_w"))
        items.append(Item(name: "Best Coding", image: "photo_m"))
        items.append(Item(name: "Amazing Coding", image: "photo_w"))
        items.append(Item(name: "Best Coding", image: "photo_m"))
        items.append(Item(name: "Amazing Coding", image: "photo_w"))
        items.append(Item(name: "Best Coding", image: "photo_m"))
        items.append(Item(name: "Amazing Coding", image: "photo_w"))
        items.append(Item(name: "Best Coding", image: "photo_m"))
        items.append(Item(name: "Amazing Coding", image: "photo_w"))
    }
    
    func addNavigationBar() {
        let list = UIImage(named: "ic_list")
        
        title = "CollectionView"
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: list, style: .plain, target: self, action: #selector(toList))
    }
    
    //MARK: - functions
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = items[indexPath.row]
        
        let cell = colView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! ItemColViewCell
        
        cell.itemImage.image = UIImage(named: item.image)
        cell.ItemLabel.text = item.name
        
        return cell
    }
    
    
    //MARK: - Actions
    @objc func toList() {
        let vc = SecondViewController(nibName: "SecondViewController", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
        //todo page list
    }

}
