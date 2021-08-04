//
//  ContentView.swift
//  Minesweeper
//
//  Created by Wyatt Knepp on 8/3/21.
//

import SwiftUI

struct ContentView: View {
	
	let boardX = 8
	let boardY = 8
	var body: some View {
		
		VStack {
			ForEach(0..<boardX) { i in
				HStack {
					ForEach(0..<boardY) { j in
						Cell(xPos: i, yPos: j)
					}
				}
			}
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
		
		var xPos : Int
		var yPos : Int
		
		var body: some View {
			ZStack{
				RoundedRectangle(cornerRadius: 15.0)
					.frame(width: 30.0, height: 30.0)
				Text("\((xPos*8) + (yPos))")
					.foregroundColor(Color.white)
					.multilineTextAlignment(.center)
					.padding(0.0)
					
			}
		}
	}
}
