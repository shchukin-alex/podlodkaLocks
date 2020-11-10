//
//  Loader.swift
//  conferenceTest
//
//  Created by Alexey Shchukin on 07.11.2020.
//

import Foundation

/*
final class Loader {
    
    private var condition = pthread_cond_t()
    private var mutex = pthread_mutex_t()
    private var counter = 2
    
    var firstResult = 0
    var secondResult = 0
    
    init() {
        pthread_cond_init(&condition, nil)
        pthread_mutex_init(&mutex, nil)
    }
    
    func loadFirstRequest() {
        
        DispatchQueue.global().async {
            
            sleep(5)
            self.firstResult = 5
            
            pthread_mutex_lock(&self.mutex)
            self.counter -= 1
            pthread_mutex_unlock(&self.mutex)

            pthread_cond_signal(&self.condition)
            
        }
    }
    
    func loadSecondRequest() {
        
        DispatchQueue.global().async {
            
            sleep(7)
            self.secondResult = 7
            
            pthread_mutex_lock(&self.mutex)
            self.counter -= 1
            pthread_mutex_unlock(&self.mutex)

            pthread_cond_signal(&self.condition)
            
        }
    }
    
    func loadData() {
        
        DispatchQueue.global().async {

            self.loadFirstRequest()
            self.loadSecondRequest()
            
            pthread_mutex_lock(&self.mutex)
            while self.counter != 0 {
                pthread_cond_wait(&self.condition, &self.mutex)
            }
            pthread_mutex_unlock(&self.mutex)
            
            let sum = self.firstResult + self.secondResult
            print(sum)
        }
    }
}
 */
