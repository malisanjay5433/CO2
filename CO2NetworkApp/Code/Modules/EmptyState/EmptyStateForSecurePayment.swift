//
//  File.swift
//  CO2NetworkApp
//
//  Created by Sanjay Mali on 09/05/24.
//

import SwiftUI
struct EmptyStateForSecurePayment: View {
	@State private var isAnimating = false
	@State private var shouldNavigate = false
	@Environment(\.presentationMode) var presentationMode

	var body: some View {
		NavigationView {
			VStack(spacing: 30) {
				Image("airplane")
					.resizable()
					.aspectRatio(contentMode: .fit)
					.padding()
					.scaleEffect(isAnimating ? 1.1 : 1.0)
					.animation(
						Animation.interactiveSpring(duration: 3.0)
							.repeatForever(autoreverses: true)
					)
					.onAppear {
						self.isAnimating = true
					}
					.padding()
				
				Text("Secure Payment...")
					.font(.title3)
					.bold()
					.foregroundColor(.gray)
				
				Circle()
					.frame(width: 80, height: 80)
					.foregroundColor(.white.opacity(0.5))
					.shadow(radius: 10, x: 4, y: 4)
					.overlay(alignment: .center) {
						Image(systemName: "wifi.circle.fill")
							.resizable()
							.aspectRatio(contentMode: .fit)
							.shadow(radius: 10, x: 4, y: 4)
							.foregroundColor(Color.white.opacity(0.9))
							.scaleEffect(isAnimating ? 1.0 : 1.5)
							.opacity(isAnimating ? 0.3 : 1.0)
							.animation(Animation.easeInOut(duration: 2.0))
							.onAppear {
								self.isAnimating = true
							}
					}
			}
			.ignoresSafeArea(.all)
			.navigationBarBackButtonHidden(true)
			.background(
				// Use NavigationLink with isActive binding to navigate to PaymentDetailView
				NavigationLink(
					destination: PaymentDetailView(	onDismiss: {
						self.presentationMode.wrappedValue.dismiss()
					}),
					isActive: $shouldNavigate,
					label: { EmptyView() }
				).hidden()
			)
		}
		.navigationBarBackButtonHidden(true)

		.onAppear {
			DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
				// Set shouldNavigate to true after a delay of 3 seconds to trigger navigation
				self.shouldNavigate = true
			}
		}
//		.onChange(of: skipEmptyState) { _ in
//			self.presentationMode.wrappedValue.dismiss()
//		}
	}
}


struct EmptyStateForSecurePayment_Previews: PreviewProvider {
	static var previews: some View {
		EmptyStateForSecurePayment()
	}
}

