//
//  HttpManager.swift
//  Wigilabs-test
//
//  Created by Jc on 29/04/20.
//  Copyright © 2020 Jc. All rights reserved.
//

import Foundation

class HttpManager {
    
    struct Constants {
        static let baseUrl = "http://localhost:3000/api/v1/counter"
    }
    
    func get() {
    }
    
    func savePost() {
        guard let url = URL(string: "\(Constants.baseUrl)") else { return }
        var request = URLRequest(url: url)
    }
}
