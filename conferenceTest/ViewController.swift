//
//  ViewController.swift
//  conferenceTest
//
//  Created by Alexey Shchukin on 03.11.2020.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let loader = Loader()
//        loader.loadData()
        
//        testSemaphoreSingleThread()
        testSemaphoreMultipleThreads()
    }
}
