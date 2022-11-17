//
//  BihourlyView.swift
//  Weather Application
//
//  Created by Ella on 14.11.2022.
//

import SwiftUI

struct BihourlyView: View {
    var body: some View {
        HStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0..<12) { item in
                        HStack(alignment: .center) {
                            Image("rainy")
                                .resizable()
                                .frame(width: 48, height: 48)
                            
                            VStack(alignment: .leading) {
                                Text("80")
                                    .font(.system(size: 14, weight: .bold))
                                    .foregroundColor(Color.darkPurple)
                                Text("10:00")
                                    .font(.system(size: 14, weight: .regular))
                                    .foregroundColor(Color.darkPurple)
                            }
                            .foregroundColor(.blue)
                            
                            if item != 11 {
                                Divider().frame(width: 1)
                                    .overlay(Color.lightGray)
                            }
                        }
                        .padding(.horizontal)
                        
                        
                    }
                }
                .padding(.vertical, 5)
                .padding(.leading, 1)
                .background(Color.white)
                .cornerRadius(25)
                .padding(.leading, 20)
            }
        }
        .padding(.top, 40)
        .padding(.bottom, 30)
    }
}

struct BihourlyView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.blue
            BihourlyView()
        }
        .previewLayout(.fixed(width: 500, height: 100))
    }
}
