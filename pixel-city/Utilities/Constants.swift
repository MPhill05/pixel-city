//
//  Constants.swift
//  pixel-city
//
//  Created by Mark Phillips on 11/16/17.
//  Copyright © 2017 Team Nerd. All rights reserved.
//

import Foundation

let apiKey = "344f8292cc9664b20cbc816ff2fc5b70"

func flickrUrl(forApiKey key: String, withAnnotation annotation: DroppablePin, andNumberOfPhotos number: Int) -> String {
    let url = "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(apiKey)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=1&radius_units=mi&per_page=\(number)&format=json&nojsoncallback=1"
    print(url)
    return url
}
