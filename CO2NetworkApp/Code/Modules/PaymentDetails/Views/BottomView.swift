//
//  BottomView.swift
//  CO2NetworkApp
//
//  Created by Sanjay Mali on 09/05/24.
//

import SwiftUI
struct BottomView: View {
	private let startColor: Color = Color(red: 0.007, green: 0.210, blue: 0.065)
	@State private var isAnimating = false
	@Environment(\.presentationMode) var presentationMode
	var onDismiss: () -> Void // Callback to notify when dismissing PaymentDetailView

	var body: some View {
		VStack(alignment: .leading, content: {
			HStack{
				VStack{
					Text("Flight").foregroundStyle(.gray).font(.headline).bold()
					Text("AR 580").foregroundStyle(.black).font(.headline).bold()
				}
				Spacer()
				VStack{
					Text("Class").foregroundStyle(.gray).font(.headline).bold()
					Text("Premimum").foregroundStyle(.black).font(.headline).bold()
				}
				Spacer()
				
				VStack{
					Text("Aircraft").foregroundStyle(.gray).font(.headline).bold()
					Text("B-737-900").foregroundStyle(.black).font(.headline).bold()
				}
				Spacer()
				
				VStack{
					Text("Possiblity").foregroundStyle(.gray).font(.headline).bold()
					Text("AR 580").foregroundStyle(.black).font(.headline).bold()
				}
			}
			.padding()
			VStack(alignment: .leading, spacing: 8){
				Text("Kevin").foregroundStyle(.black).font(.headline).bold()
				Text("kevin@gmail.com").foregroundStyle(.gray).font(.headline).bold()
				Text("Max").foregroundStyle(.black).font(.headline).bold()
				Text("max@gmail.com").foregroundStyle(.gray).font(.headline).bold()
			}
			
			.padding()
			
			VStack(alignment: .leading, spacing: 8){
				Text("Total Price").foregroundStyle(.black).font(.headline).bold()
				Text("$1,536.00").foregroundStyle(.black).font(.headline).bold()
			}
			.padding()
		})
		Button(action: {
			presentationMode.wrappedValue.dismiss()
		}, label: {
				Text("Go to Home Screen")
					.font(.title3)
					.foregroundColor(.white)
					.padding(25)
					.cornerRadius(8)
					.font(.headline).bold()
					.frame(height: 45)
					.background(
						RoundedRectangle(cornerRadius: 20)
							.fill(LinearGradient(gradient: Gradient(colors: [startColor.opacity(0.9), startColor.opacity(0.8)]), startPoint: .bottomTrailing, endPoint: .topTrailing)))
			
		})
		.padding(.vertical)
	}
}
