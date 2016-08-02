//
//  VideoVC.swift
//  swift3PartyRock
//
//  Created by Rosario Tarabocchia on 8/2/16.
//  Copyright © 2016 RLDT. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {
    
    @IBOutlet var webView: UIWebView!
    
    @IBOutlet weak var songTitleLbl: UILabel!
    private var _partyRock: PartyRock!
    
    var partyRock: PartyRock {
        get {
            
            return _partyRock
        } set {
            
            _partyRock = newValue
            
        }
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        songTitleLbl.text = partyRock.songTitle
        webView.loadHTMLString(partyRock.videoUrl, baseURL: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
