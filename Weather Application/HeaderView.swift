//
//  HeaderView.swift
//  Weather Application
//
//  Created by Ella on 12.11.2022.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        //ZStack {
            //Color.blue.ignoresSafeArea()
            VStack {
                HStack {
                    VStack (alignment: .leading) {
                        Text("12 November, Saturday")
                            .font(.system(size: 14, weight: .regular))
                        Text("Rostov-on-Don, Rostov region")
                            .font(.system(size: 14, weight: .bold))
                    }
                    
                    Spacer()
                }
                .foregroundColor(.white)
                .padding(.horizontal, 20)
                
                Image("rainy")
                    .resizable()
                    .frame(width: 160, height: 160)
                
                HStack(alignment: .lastTextBaseline) {
                    HStack(spacing: 0) {
                        Text("6°")
                            .font(.system(size: 80, weight: .bold))
                        Text("C")
                            .font(.system(size: 80, weight: .regular))
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .leading) {
                        Text("feels like")
                            .font(.system(size: 18, weight: .regular))
                        HStack {
                            Text("4°")
                            Text("C")
                        }
                        .font(.system(size: 18, weight: .bold))
                    }
                    
                    Spacer()
                    
                }
                .foregroundColor(.white)
                .padding(.horizontal, 20)
            }
        //}
    }
}
struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.blue
            HeaderView()
        }
        .previewLayout(.fixed(width: 390, height: 400))
    }
}
