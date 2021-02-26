//
//  Flight.swift
//  NavigationView
//
//  Created by 澤崎正佳 on 2021/02/26.
//

import SwiftUI

struct Flight: View {
    
    let city: String
    
    var body: some View {
        VStack{
            Text(city)
                .fontWeight(.bold)
            + Text("に飛びますか？")
            
            HStack{
                Button(action: {}, label: {
                    Text("はい")
                        .foregroundColor(.green)
                })
                .padding()
                Button(action: {}, label: {
                    Text("いいえ")
                        .foregroundColor(.red)
                })
                .padding()
            }
        }
    }
}

struct Flight_Previews: PreviewProvider {
    static var previews: some View {
        Flight(city: "マサラタウン")
    }
}
