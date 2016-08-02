//
//  PartyRocks.swift
//  swift3PartyRock
//
//  Created by Rosario Tarabocchia on 8/2/16.
//  Copyright © 2016 RLDT. All rights reserved.
//

import Foundation

class PartyRock {
    
    private var _imageUrl: String!
    private var _videoUrl: String!
    private var _songTitle: String!
    
    var imageUrl: String {
        return _imageUrl
        
    }
    
    var videoUrl: String {
        
        return _videoUrl
        
    }
    
    var songTitle: String {
        
        return _songTitle
        
    }
    
    init(imageUrl: String, videoUrl: String, songTitle: String) {
        _imageUrl = imageUrl
        _videoUrl = videoUrl
        _songTitle = songTitle
    }
    
    
}
