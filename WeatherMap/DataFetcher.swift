//
//  DataFetcher.swift
//  WeatherMap
//
//  Created by Tomi Lahtinen on 19/05/16.
//  Copyright © 2016 Tomi Lahtinen. All rights reserved.
//

import Foundation
import Alamofire

class DataFetcher {
    
    let endPoint = "http://m.fmi.fi/mobile/interfaces/weatherdata.php?l=en&locations=61.5,23.4&version=1.1.7"
    
    func requestData() {
        Alamofire.request(.GET, endPoint, parameters: nil)
            .responseJSON { response in
                print(response.request)  // original URL request
                print(response.response) // URL response
                print(response.data)     // server data
                print(response.result)   // result of response serialization
                
                if let JSON = response.result.value {
                    print("JSON: \(JSON)")
                }
        }
    }
    
    
}
