//
//  ContentView.swift
//  SwiftPackageTest
//
//  Created by Eric Münch on 15.10.20.
//

import SwiftUI
import iOSStundenplanLib

struct ContentView: View {
    @ObservedObject var viewModel : TestViewmodel
    
    var body: some View {
        VStack{
            if(!viewModel.dataIsAvalible){
                Text("Loading...")
                    .padding()
            }
            else if(viewModel.data.count == 0){
                Text("error")
            }
            else{
                List(viewModel.data, id: \.id){element in
                    EventView(event: element)
                }.padding(EdgeInsets(top: 4, leading: 0, bottom: 4, trailing: 0))
            }
            Button("Reload"){
                viewModel.loadData()
            }
        }.onAppear(perform: {
            viewModel.loadData()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: TestViewmodel())
    }
}
