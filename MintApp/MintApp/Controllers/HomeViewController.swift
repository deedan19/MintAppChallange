//
//  HomeViewController.swift
//  MintApp
//
//  Created by Decagon on 02/09/2021.
//

import UIKit

class HomeViewController: UIViewController {
    private var items = [CellModel]()
    
    @IBOutlet weak var homeCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        homeCollectionView.delegate = self
        homeCollectionView.dataSource = self
        items = [
        CellModel(image: "arrow.triangle.2.circlepath", title: "Send money"),
        CellModel(image: "iphone", title: "Top up"),
        CellModel(image: "doc.plaintext", title: "Pay bills"),
        CellModel(image: "square.grid.2x2.fill", title: "More")
        ]
        
    }
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? Cell
        let content = items[indexPath.item]
        cell?.titleLabel.text = content.title
        cell?.imageView.image = UIImage (systemName: content.image)
        cell?.imageView.tintColor = #colorLiteral(red: 0.8123962283, green: 0.6349384785, blue: 0.2327120304, alpha: 1)
        cell?.layer.masksToBounds = false
        
        
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = ((collectionView.frame.width - 55) / 2)
        return .init(width: width, height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .init(top: 5, left: 20, bottom: 20, right: 20)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
    
    
}
