//
//  ViewController.swift
//  swift3PartyRock
//
//  Created by Rosario Tarabocchia on 8/2/16.
//  Copyright © 2016 RLDT. All rights reserved.
//

import UIKit


class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var listOfSongVideos = [PartyRock]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p1 = PartyRock(imageUrl: "http://www.partyrockclothing.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/c/o/costume-redfoo-wig.jpg", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ev4bY1SkZLg\" frameborder=\"0\" allowfullscreen></iframe>", songTitle: "Light Out")
        
        
        let p2 = PartyRock(imageUrl: "http://www.partyrockclothing.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/c/o/costume-redfoo-wig.jpg", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ev4bY1SkZLg\" frameborder=\"0\" allowfullscreen></iframe>", songTitle: "Blah Blah Blah")
        
        let p3 = PartyRock(imageUrl: "http://www.partyrockclothing.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/c/o/costume-redfoo-wig.jpg", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ev4bY1SkZLg\" frameborder=\"0\" allowfullscreen></iframe>", songTitle: "Declan is here")
        
        let p4 = PartyRock(imageUrl: "http://www.partyrockclothing.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/c/o/costume-redfoo-wig.jpg", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ev4bY1SkZLg\" frameborder=\"0\" allowfullscreen></iframe>", songTitle: "Lindsay was there.")
        
        listOfSongVideos.append(p1)
        listOfSongVideos.append(p2)
        listOfSongVideos.append(p3)
        listOfSongVideos.append(p4)

        
        tableView.dataSource = self
        tableView.delegate = self
        
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCellTableViewCell {
            
            let partyRock = listOfSongVideos[indexPath.row]
            
            cell.updateUI(partyRock: partyRock)
            
            return cell
            
        } else {
            
            return UITableViewCell()
            
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listOfSongVideos.count
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let partyRock = listOfSongVideos[indexPath.row]
        
        performSegue(withIdentifier: "VideoVC", sender: partyRock)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        if let destination = segue.destinationViewController as? VideoVC {
            
            if let party = sender as? PartyRock {
                
                destination.partyRock = party   
            }
            
        }
    }
    
    
}

