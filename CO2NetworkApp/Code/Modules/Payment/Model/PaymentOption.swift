//
//  File.swift
//  CO2NetworkApp
//
//  Created by Sanjay Mali on 08/05/24.
//

import Foundation

struct PaymentOption: Identifiable{
	let id = UUID()
	let card: String
	let name: String
}
