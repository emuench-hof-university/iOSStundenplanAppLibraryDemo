//
//  EventView.swift
//  SwiftPackageTest
//
//  Created by Eric Münch on 15.10.20.
//

import SwiftUI
import iOSStundenplanLib

struct EventView : View{
    let event : Event
    
    var body: some View{
        VStack(alignment: .leading){
            Text(event.label).font(.headline).bold()
            Text(event.docent).font(.subheadline).fontWeight(.light)
        }.padding(EdgeInsets(top: 4, leading: 0, bottom: 4, trailing: 0))
    }
}

struct EventView_Previews: PreviewProvider {
    static var previews: some View {
        EventView(event: Event(id: "weird_id", label: "OOP1", docent: "Der Atze"))
    }
}
