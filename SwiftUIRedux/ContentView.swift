//
//  ContentView.swift
//  SwiftUIRedux
//
//  Created by 十亀眞怜 on 2019/06/04.
//  Copyright © 2019 Pocket7878. All rights reserved.
//

import SwiftUI

struct ParentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Parent: \(UUID().uuidString)")
                ContentView()
            }
        }
    }
}

struct CounterView: View {
    @EnvironmentObject var appData: AppData
    
    var body: some View {
        List {
            Text("CounterView: \(UUID().uuidString)")
            Text("Counter: \(self.appData.appState.counterState.count)")
        }
    }
}

struct CounterButton: View {
    @EnvironmentObject var appData: AppData
    
    var body: some View {
        List {
            Text("CounterButton: \(UUID().uuidString)")
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

struct ContentView : View {
    @EnvironmentObject var appData: AppData
    
    var body: some View {
        VStack {
            Text("ContentView: \(UUID().uuidString)")
            Text("CounterView ↓")
            CounterView()
            Text("CounterButton ↓")
            CounterButton()
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
