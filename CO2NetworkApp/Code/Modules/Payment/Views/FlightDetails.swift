//
//  FlightDetails.swift
//  CO2NetworkApp
//
//  Created by Sanjay Mali on 08/05/24.
//

import SwiftUI
struct FlightDetails: View {
	var body: some View {
		HStack{
			VStack(alignment: .leading){
				Text("Seoul").foregroundColor(.white.opacity(0.5))
				Text("SL").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.white)
				Text("23 Nov, 3:30PM").foregroundColor(.white.opacity(0.5))
					.font(.subheadline)
			}
			Spacer()
			VStack(alignment: .center){
				Image("greater")
					.resizable()
					.renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
					.foregroundColor(.white).frame(width:40, height: 40)
				Text("4h 15m").foregroundColor(.white)
			}
			Spacer()
			VStack(alignment: .trailing){
				Text("Delhi").foregroundColor(.white.opacity(0.5))
				Text("DH").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.white)
				Text("23 Nov, 07:15").foregroundColor(.white.opacity(0.5)).font(.subheadline)
			}
		}
	}
}
