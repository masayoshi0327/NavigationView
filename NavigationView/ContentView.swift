//
//  ContentView.swift
//  NavigationView
//
//  Created by 澤崎正佳 on 2021/02/26.
//

import SwiftUI

struct ContentView: View {
    
    let regions = ["カントー地方", "ジョウト地方", "ホウエン地方", "シンオウ地方"]
    
    var body: some View {
        VStack{
            // ここから
            HStack{
                Spacer()
                Button(action: {}, label: {
                    Text("ヘルプ")
                })
            }
            .padding(.horizontal)
            // ここまではNavigationViewに含まれない
            
            //ここから
            NavigationView {
                List(0..<4) { n in
                    NavigationLink(regions[n], destination: Region(id: n, regionName: regions[n]))
                }
                .navigationTitle("そらをとぶ")
            }
            //ここまでがNavigationViewの領域
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
