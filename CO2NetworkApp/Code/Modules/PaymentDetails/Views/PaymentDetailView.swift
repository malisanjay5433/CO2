//
//  PaymentDetails.swift
//  CO2NetworkApp
//
//  Created by Sanjay Mali on 08/05/24.
//
import SwiftUI
struct PaymentDetailView: View {
	@State private var isAnimating = false
	private let startColor: Color = Color(red: 0.007, green: 0.210, blue: 0.065)
	var onDismiss: () -> Void // Callback to notify when dismissing PaymentDetailView
	@Environment(\.presentationMode) var presentationMode

	var body: some View {
		GeometryReader { geometry in
			ScrollView {
				VStack {
					TopView()
						.padding()
					
					ZStack {
						Color.white
							.frame(height: geometry.size.height * 0.6)
							.overlay(
								VStack(spacing: 20){
									BottomView(onDismiss: {
										presentationMode.wrappedValue.dismiss()
									})
								}
							)
						.overlay(alignment: .bottomTrailing) {
													Spacer()
													Image("airplane")
														.resizable()
														.aspectRatio(contentMode: .fit)
														.padding()
														.scaleEffect(isAnimating ? 1.1 : 1.0)
														.animation(
															Animation.easeInOut(duration: 1.5)
																.repeatForever(autoreverses: true)
														)
														.onAppear {
															self.isAnimating = true
														}
														.padding()
														.offset(y: -360)
													
													// Adjust the padding here to move the airplane image down
												}
					}
					
				}
				
			}
			.scrollIndicators(.hidden)
			.background(LinearGradient(gradient: Gradient(colors: [startColor, Color.white]), startPoint: .top, endPoint: .bottom))
		}
		.navigationBarBackButtonHidden(true)
	}
}


struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		PaymentDetailView(onDismiss: {})
	}
}

