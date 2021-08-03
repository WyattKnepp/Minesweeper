//
//  ContentView.swift
//  Minesweeper
//
//  Created by Wyatt Knepp on 8/3/21.
//

import SwiftUI

struct ContentView: View {
	
	@State private var boardX = 8
	@State private var boardY = 8
	var body: some View {
		
		Text("Placeholder")
		
//		VStack {
//			for i in boardY{
//				HStack{
//					for j in boardX {
//						Text("\(i * j)")
//					}
//				}
//			}
//		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}

struct Cell: View {
	var isFlagged = false
	var isRevealed = false
	var numOfMines = 0
	var isMine = false
	
	var body: some View {
		ZStack{
			RoundedRectangle(cornerRadius: 25.0)
			//Image()
		}
	}
}
