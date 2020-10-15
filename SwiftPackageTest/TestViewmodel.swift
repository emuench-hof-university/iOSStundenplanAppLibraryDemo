//
//  TestViewmodel.swift
//  SwiftPackageTest
//
//  Created by Eric Münch on 15.10.20.
//

import Foundation
import Combine
import iOSStundenplanLib

class TestViewmodel : ObservableObject{
    @Published var dataIsAvalible = false
    var data = [Event]()
    var subscriber : AnyCancellable? = nil
    
    func loadData(){
        dataIsAvalible = false
        data.removeAll()
        
        subscriber = StundenplanAPI
            .getTestStundenplan()
            .receive(on: RunLoop.main)
            .sink(receiveCompletion: {_ in
                self.dataIsAvalible = true
            }, receiveValue: {
                self.data.append(contentsOf: $0.schedule)
            })
    }
}
