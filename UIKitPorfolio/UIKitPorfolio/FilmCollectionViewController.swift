//
//  FilmCollectionViewController.swift
//  UIKitPorfolio
//
//  Created by Mattia Marranzino on 26/03/24.
//

import UIKit
import SwiftUI

private let reuseIdentifier = "Cell"

class FilmCollectionViewController: UICollectionViewController {
    

    
    
    
    
    @IBOutlet var gridCollectionSetup: UICollectionView!
    
    
    
    
    
    @IBSegueAction func toSwitfUI(_ coder: NSCoder) -> UIViewController? {
        
        var test = collectionView.indexPathsForSelectedItems![0][1]
        
        var filmsPrint = films[test]
        
        
        
        return UIHostingController(coder: coder, rootView: FilmDetailSwiftUI(filmImage: filmsPrint.poster, filmName: filmsPrint.titolo, filmRate: filmsPrint.rate, filmComment: filmsPrint.comment))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */
  
    
    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 6
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "filmCollection", for: indexPath) as! FilmCollectionViewCell
        
        // Configure the cell
        let film = films[indexPath.row]
        
        cell.imagineFilm.image = UIImage(named: film.poster)
        cell.nomeFilm.text = film.titolo
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
