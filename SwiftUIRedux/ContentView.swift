//
//  ContentView.swift
//  SwiftUIRedux
//
//  Created by 十亀眞怜 on 2019/06/04.
//  Copyright © 2019 Pocket7878. All rights reserved.
//

import SwiftUI

struct ParentView: View {
    @EnvironmentObject var appData: AppData
    
    var body: some View {
        NavigationView {
            VStack {
                Text("\(UUID().uuidString)")
                Text("Counter: \(appData.counterState.count)")
                ContentView()
            }
        }
    }
}

struct ContentView : View {
    @EnvironmentObject var appData: AppData
    
    var body: some View {
        List {
            Text("\(UUID().uuidString)")
            Text("Counter: \(self.appData.counterState.count)")
            Button(action: {
                self.appData.dispatch(a: CounterAction.CountUp)
            }) {
                Text("Count Up")
            }
            Button(action: {
                self.appData.dispatch(a: CounterAction.CountDown)
            }) {
                Text("Count Down")
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
