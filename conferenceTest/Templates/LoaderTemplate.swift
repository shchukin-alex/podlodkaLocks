//
//  LoaderTemplate.swift
//  conferenceTest
//
//  Created by Alexey Shchukin on 08.11.2020.
//

import Foundation

final class Loader {
    

    private var firstResult = 0
    
    init() {

    }
    
    deinit {

    }
    
   private func loadFirstRequest() {
        DispatchQueue.global().async {
            sleep(5)
            self.firstResult = 5
        }
    }
    
    func loadData() {
        DispatchQueue.global().async {
            
            self.loadFirstRequest()
        }
    }
}
