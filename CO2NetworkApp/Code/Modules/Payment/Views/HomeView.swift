//
//  ContentView.swift
//  CO2NetworkApp
//
//  Created by Sanjay Mali on 08/05/24.
//

import SwiftUI

struct HomeView: View {
	var cardOption = 10
	let paymentOption = [PaymentOption(card: "Card3", name: "Master"),PaymentOption(card: "Card1", name: "Master"),PaymentOption(card: "Card2", name: "Master"),PaymentOption(card: "Card3", name: "Master"),PaymentOption(card: "Card4", name: "Master"),PaymentOption(card: "Card1", name: "Master")]
	@State private var isActive: Bool = false
	private let startColor: Color = Color(red: 0.007, green: 0.210, blue: 0.065)
	private let clear: Color = Color.clear

	var body: some View {
		NavigationStack{
			GeometryReader { geometry in
				VStack() {
					VStack(alignment: .leading) {
							Image("icon").aspectRatio(contentMode: .fit)
						VStack {
							clear
								.frame(height: geometry.size.height * 0.4)
								.overlay(alignment: .center) {
									ZStack{
										VStack {
											FlightDetails()
												.padding()
											RoundedRectangle(cornerRadius: 0)
												.fill(
													LinearGradient(
														gradient: Gradient(colors: [clear, .clear]),
														startPoint: .top,
														endPoint: .center
													)
												)
												.frame(maxWidth: .infinity)
												.overlay(alignment: .center) {
													Image("airplane").resizable().aspectRatio(contentMode: .fit)
														.overlay(alignment: .bottomTrailing){
															Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
																Image(systemName: "plus.circle.fill")
																	.resizable()
																	.frame(width:40, height: 40)
																	.foregroundColor(.white)
																	.shadow(radius: 8)
															})
														}
												}
										}
									}
								}
							Text("SELECT PAYMENT METHOD").foregroundColor(.black.opacity(0.4)).font(.footnote).bold()
						}
						ScrollView(.vertical) {
							VStack(spacing: 25) {
								ForEach(paymentOption) { card in
									CardView(card: card)
								}
							}
							.padding()
						}
						.scrollIndicators(.hidden)
					}
					.padding()
					.background(LinearGradient(gradient: Gradient(colors: [startColor, Color.white]), startPoint: .top, endPoint: .bottom))
					VStack{
						Button(action: {}, label: {
							NavigationLink(destination: PaymentDetailView(onDismiss: {})) {
								Text("Confirm $1,536.00")
									.font(.title3)
									.foregroundColor(.white)
									.padding(25)
									.cornerRadius(8)
									.font(.headline).bold()
									.frame(height: 45)
									.background(
										RoundedRectangle(cornerRadius: 20)
											.fill(LinearGradient(gradient: Gradient(colors: [startColor.opacity(0.9), startColor.opacity(0.8)]), startPoint: .bottomTrailing, endPoint: .topTrailing)))
							}
						})
					}
				}
			}
		}
	}
}

#Preview {
    HomeView()
}
