//
//  ListView.swift
//  Cars App
//
//  Created by Mohamed Elkomey on 17/07/2023.
//

import SwiftUI

struct ListView: View {
    //properties
    //body
    var body: some View {
        List{
            ForEach(carsData) { item in
                CellView(car: item)
                    .padding(.vertical,4)
            }
        }
    }
}

//preview
//struct ListView_Previews: PreviewProvider {
//    static var previews: some View {
//        ListView()
//    }
//}
