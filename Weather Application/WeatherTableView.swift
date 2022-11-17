//
//  WeatherTableView.swift
//  Weather Application
//
//  Created by Ella on 12.11.2022.
//

import SwiftUI

struct WeatherTableView: View {
    var titleColor: Color = .white
    var dataColor: Color = .white
    var dividerColor: Color = .white
    
    var body: some View {
        VStack {
            // row-1
            HStack (alignment: .bottom) {
                HStack {
                Text("Humidity")
                        .foregroundColor(titleColor)
                        .font(.system(size: 14, weight: .regular))
                Spacer()
                Text("80%")
                        .foregroundColor(dataColor)
                        .font(.system(size: 14, weight: .bold))
                }
                //.padding(.trailing, 5)

                Divider()
//                    .overlay(dividerColor.frame(width: 1, height: 50))
//                    .offset(y: 8)
                    .foregroundColor(dividerColor)

                HStack {
                Text("UV index")
                        .foregroundColor(titleColor)
                        .font(.system(size: 14, weight: .regular))
                    Spacer()
                Text("4/10")
                        .foregroundColor(dataColor)
                        .font(.system(size: 14, weight: .bold))
                }
            }
            //.padding(.horizontal, 5)
            
            //white line
            Divider()
//                .frame(height: 1)
//                .overlay(dividerColor)
                .foregroundColor(.lightGray)
            // row-2
            HStack (alignment: .bottom) {
                HStack {
                Text("Rain")
                        .foregroundColor(titleColor)
                        .font(.system(size: 14, weight: .regular))
                Spacer()
                Text("89%")
                        .foregroundColor(dataColor)
                        .font(.system(size: 14, weight: .bold))
                }
                //.padding(.trailing, 5)

                //white line
                Divider()
//                    .overlay(dividerColor.frame(width: 1, height: 50))
                    .foregroundColor(dividerColor)

                HStack {
                Text("Wind")
                        .foregroundColor(titleColor)
                        .font(.system(size: 14, weight: .regular))
                    Spacer()
                Text("29km/h")
                        .foregroundColor(dataColor)
                        .font(.system(size: 14, weight: .bold))
                }
            }
            //.padding(5)
            .padding(.bottom, 10)
            
        }
        //.padding()
        .foregroundColor(.white)
    }
}

struct WeatherTableView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherTableView()
            .background(Color.blue)
            .previewLayout(.fixed(width: 400, height: 150))
    }
}


