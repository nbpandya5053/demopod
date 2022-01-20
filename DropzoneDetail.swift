//
//  DropzoneDetail.swift
//  FlightHistoryDemo
//
//  Created by Nirav pandya on 18/03/21.
//

import SwiftUI

struct DropzoneDetail: View {
    
    var body: some View {
        ZStack {
            List {
                Section(header: Text("")) {
                    DropdetailTopHeader()
                        .listRowBackground(Color(hex: "C4C4C4"))
                        .listRowInsets(EdgeInsets(top: 0, leading: 10, bottom: 10, trailing: 10))
                }
                HStack {
                    
                    Text("Upcoming Loads for this Dropzone")
                        .font(Font.custom("Roboto-Black", size: 20))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: .infinity, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 45, maxHeight: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
                .background(Color.white)
                Section(header: ListHeader()) {
                    loadscell()
                        .listRowBackground(Color.white)
                        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    loadscell()
                        .listRowBackground(Color.white)
                        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    loadscell()
                        .listRowBackground(Color.white)
                        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    loadscell()
                        .listRowBackground(Color.white)
                        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                }
                
                Section(header: ListHeader()) {
                    loadscell()
                        .listRowBackground(Color.white)
                        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    loadscell()
                        .listRowBackground(Color.white)
                        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    loadscell()
                        .listRowBackground(Color.white)
                        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    loadscell()
                        .listRowBackground(Color.white)
                        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                }
                
            }
            .onAppear(perform: {
                UITableView.appearance().backgroundColor = hexStringToUIColor(hex: "C4C4C4")
                UITableView.appearance().separatorStyle = .none
                UITableView.appearance().separatorColor = .clear
            })
        }
    }
}

struct DropzoneDetail_Previews: PreviewProvider {
    static var previews: some View {
        DropzoneDetail()
    }
}

struct ListHeader: View {
    var body: some View {
        HStack {
            Text("Today, Wednesday, March 29, 2020")
        }
        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: .infinity, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 40, maxHeight: 40, alignment: .leading)
    }
}
