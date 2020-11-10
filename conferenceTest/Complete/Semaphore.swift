//
//  Semaphore.swift
//  conferenceTest
//
//  Created by Alexey Shchukin on 07.11.2020.
//

import Foundation

/*
final class Semaphore {
    
    private var mutex = pthread_mutex_t()
    private var condition = pthread_cond_t()
    private var counter = 0
    private var maxCount = 0
    
    init(maxCount: Int = 0) {
        pthread_mutex_init(&mutex, nil)
        pthread_cond_init(&condition, nil)
        self.maxCount = maxCount
    }
    
    func signal() {
        pthread_mutex_lock(&mutex)
        counter -= 1
        pthread_mutex_unlock(&mutex)
        
        pthread_cond_signal(&condition)
    }
    
    func wait() {
        
        pthread_mutex_lock(&self.mutex)
        counter += 1
        while(self.counter > self.maxCount) {
            pthread_cond_wait(&self.condition, &self.mutex)
        }
        pthread_mutex_unlock(&self.mutex)
    }
}
*/
