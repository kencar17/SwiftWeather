//
//  OptionsViewController.swift
//  SwiftWeather
//
//  Created by kenneth carmichael on 2016-04-07.
//  Copyright © 2016 Jake Lin. All rights reserved.
//

import Foundation

import UIKit

class OptionsViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    let reuseIdentifier = "cell" // also enter this string as the cell identifier in the storyboard
    var images = ["badGrass", "badBeach", "snowy", "clouds", "city" ]
    var selected = String()
    var current = String()
    
    @IBOutlet weak var mylabel: UILabel!
    
    
    @IBOutlet weak var currentBackground: UIImageView!
    
    override func viewDidLoad() {
        // Check if current 
        if (current != ""){
            currentBackground.image = UIImage(named: current)!
        }
        
        
    }
    
    
    // MARK: - UICollectionViewDataSource protocol
    
    // tell the collection view how many cells to make
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.images.count
    }
    
    // make a cell for each cell index path
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! MyCollectionViewCell
        
        // Use the outlet in our custom class to get a reference to the UILabel in the cell
        cell.myImage.image = UIImage(named:self.images[indexPath.item])! // Fill uiimage with image
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 10;
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 10;
    }
    
    // MARK: - UICollectionViewDelegate protocol
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        // handle tap events
        selected = images[indexPath.item] // Get selected photo and store image name to selected

        // Set current pic to selected
        currentBackground.image = UIImage(named: selected)!
    }
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let DestViewController : WeatherViewController = segue.destinationViewController as! WeatherViewController
        
        // check if selected was never actualy selected, if so return current
        if (selected != ""){
            DestViewController.text = selected
        }
        else{
            DestViewController.text = current
        }
        
    }
}