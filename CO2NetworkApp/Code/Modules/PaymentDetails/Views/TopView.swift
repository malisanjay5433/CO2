//
//  TopView.swift
//  CO2NetworkApp
//
//  Created by Sanjay Mali on 09/05/24.
//

import SwiftUI
struct TopView: View {
	private let startColor: Color = Color(red: 0.007, green: 0.210, blue: 0.065)
	@State private var isAnimating = false

	var body: some View {
		RoundedRectangle(cornerRadius: 15)
			.fill(
											LinearGradient(
												gradient: Gradient(colors: [startColor, .gray]),
												startPoint: .top,
												endPoint: .bottom
											)
										)
			.frame(width: 350, height: 300)
			.shadow(radius: 1)
			.overlay{
				VStack(spacing: 10){
					Image("icon")
						.resizable()
						.aspectRatio(contentMode: .fit)
						.frame(height: 35)
					
					Text("You are travelling in United Net Zero Nation")
						.foregroundColor(.white)
						.bold()
						.multilineTextAlignment(.leading)
						.padding(.vertical, 1)
					
					Text("You are welcome")
						.foregroundColor(Color.white.opacity(0.6))
						.font(.footnote)
					Spacer()
						.overlay(alignment: .top) {
							RoundedRectangle(cornerRadius: 20)
								.fill(
									LinearGradient(
										gradient: Gradient(colors: [startColor, .gray.opacity(0.6)]),
											  startPoint: .bottom,
											  endPoint: .top
										  )
									  )
							
								.frame(width: 350, height: 200)
						}
					FlightDetails()
				}
				.padding()
			}
	}
		
}
