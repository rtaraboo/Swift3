//
//  PartyCellTableViewCell.swift
//  swift3PartyRock
//
//  Created by Rosario Tarabocchia on 8/2/16.
//  Copyright © 2016 RLDT. All rights reserved.
//

import UIKit

class PartyCellTableViewCell: UITableViewCell {

    @IBOutlet weak var songNameLbl: UILabel!
    @IBOutlet weak var videoPreviewImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateUI(partyRock: PartyRock){
        
        songNameLbl.text = partyRock.songTitle
        
        let url = URL(string: partyRock.imageUrl)!
        
        DispatchQueue.global().async {
            
            do {
                
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    
                    self.videoPreviewImage.image = UIImage(data: data)
                    
                }
                
            } catch  {
                
                print("Something went wrong")
                
            }
            
        }
        
    }

}
