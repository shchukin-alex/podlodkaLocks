//
//  SemaphoreTemplate.swift
//  conferenceTest
//
//  Created by Alexey Shchukin on 08.11.2020.
//

import Foundation

final class Semaphore {
    
    private var mutex = pthread_mutex_t()
    private var condition = pthread_cond_t()
    private var counter = 0
    private var maxCount = 0
    
    init(maxCount: Int = 0) {
        self.maxCount = maxCount
        
        pthread_cond_init(&condition, nil)
        pthread_mutex_init(&mutex, nil)
    }
    
    func signal() {
        //TODO: Implement
    }
    
    func wait() {
        //TODO: Implement
    }
    
    deinit {
        pthread_mutex_destroy(&mutex)
        pthread_cond_destroy(&condition)
    }
}

func testSemaphoreSingleThread() {
    
    let semaphore = Semaphore(maxCount: 0)
    DispatchQueue.global().async {
        sleep(5)
        semaphore.signal()
    }
    semaphore.wait()
    print("Finish")
}

func testSemaphoreMultipleThreads() {
    
    let semaphore = Semaphore(maxCount: 1)
    DispatchQueue.global().async {
        semaphore.wait()
        print("test1")
        sleep(5)
        semaphore.signal()
    }
    DispatchQueue.global().async {
        semaphore.wait()
        print("test2")
        sleep(5)
        semaphore.signal()
    }
}
