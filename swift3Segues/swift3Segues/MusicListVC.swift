//
//  MusicListVC.swift
//  swift3Segues
//
//  Created by Rosario Tarabocchia on 8/1/16.
//  Copyright © 2016 RLDT. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.orange()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backButtonPressed(_ sender: AnyObject) {
        
        dismiss(animated: true, completion: nil)
    }

    @IBAction func loadThirdScreenPressed(_ sender: AnyObject) {
        
        let songTitle = "Bouncing Souls: Gone"
        
        performSegue(withIdentifier: "PlaySongVCSegue", sender: songTitle)
        
    }
    
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if let destination = segue.destinationViewController as? PlaySongVC {
            
            if let song = sender as? String {
                
                destination.selectedSong = song
                
            }
            
            
            
            
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
 

}
