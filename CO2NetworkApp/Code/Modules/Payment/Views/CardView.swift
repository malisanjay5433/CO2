//
//  CardView.swift
//  CO2NetworkApp
//
//  Created by Sanjay Mali on 08/05/24.
//

import SwiftUI
struct CardView: View {
  let card: PaymentOption

  var body: some View {
	  ZStack(alignment: .topLeading) {
			Image(card.card) // Replace with your image loading logic
				.resizable()
				.frame(maxWidth: .infinity, maxHeight: .infinity)
				.aspectRatio(contentMode: .fit)
				.shadow(color: .gray, radius: 3, x: 2, y: 2)
				.rotation3DEffect(
				.degrees(0), // Rotate by 180 degrees
				axis: (x: 1, y: 1, z: 1), // Rotate around the Y-axis
				anchor: .center // Rotate around the center of the view
		)
	  }
  }
}
