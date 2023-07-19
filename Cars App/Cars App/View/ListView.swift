//
//  ListView.swift
//  Cars App
//
//  Created by Mohamed Elkomey on 17/07/2023.
//

import SwiftUI

struct ListView: View {
    //properties
    @State var isSettingSheetPresented :Bool = false
    //body
    var body: some View {
        
        NavigationView{
            List{
                ForEach(carsData) { item in
                    NavigationLink(destination: DetailedView(car: item)){
                    CellView(car: item)
                        .padding(.vertical,4)
                    }//:NavigationLink
                }//:NavigationLink
            }//:List
            .navigationTitle("Cars")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarItems(trailing:Button(action: {
                // show sheet
                isSettingSheetPresented = true
            }, label: {
                Image(systemName: "slider.horizontal.3")
            })
            )
            .sheet(isPresented: $isSettingSheetPresented) {
                SettingView()
            }
        }//:NavigationView
        .navigationViewStyle(StackNavigationViewStyle()) // to solve ipad master details
    }
}

//preview
//struct ListView_Previews: PreviewProvider {
//    static var previews: some View {
//        ListView()
//    }
//}
