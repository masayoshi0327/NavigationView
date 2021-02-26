//
//  Region.swift
//  NavigationView
//
//  Created by 澤崎正佳 on 2021/02/26.
//

import SwiftUI

struct Region: View {
    
    let id: Int
    let regionName: String
    
    var body: some View {
        List(0..<4) { n in
            NavigationLink(regionsArray[id][n], destination: Flight(city: regionsArray[id][n]))
                .navigationTitle(regionName)
        }
    }
}

let kanto = ["マサラタウン", "トキワシティ", "ニビシティ", "ハナダシティ"]
let joto = ["ワカバタウン", "ヨシノシティ", "キキョウシティ", "ヒワダタウン"]
let hoen = ["ミシロタウン", "コトキタウン", "トウカシティ", "カナズミシティ"]
let shino = ["フタバタウン", "マサゴタウン", "クロガネシティ", "コトブキシティ"]
let regionsArray = [kanto, joto, hoen, shino]


struct Region_Previews: PreviewProvider {
    static var previews: some View {
        Region(id: 0, regionName: "カントー地方")
    }
}