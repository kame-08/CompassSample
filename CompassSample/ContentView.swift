//
//  ContentView.swift
//  CompassSample
//
//  Created by Ryo on 2022/07/27.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var manager = LocationManager()
    
    var body: some View {
        let heading   = $manager.heading.wrappedValue
        
        VStack{
            Text("\(heading)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
