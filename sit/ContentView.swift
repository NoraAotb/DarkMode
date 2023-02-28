//
//  ContentView.swift
//  sit
//
//  Created by Norah Abass AlOtaibi on 11/07/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State var theColorScheme: ColorScheme = .dark

       func toggleColorScheme() {
           theColorScheme = (theColorScheme == .dark) ? .light : .dark
       }
    @AppStorage("isDarkMode") private var isDarkMode = false
    var body: some View {
        NavigationView {
            List{
                HStack{
                    Toggle("Dark Mode", isOn: $isDarkMode)
                }
            }
            ZStack { // or any other View
                        Color.primary // to make the change visible

                        Button(action: self.toggleColorScheme) {
                            Text("Toggle")
                        }
                    }   .colorScheme(theColorScheme)
                }
            }
        }
          
        
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
