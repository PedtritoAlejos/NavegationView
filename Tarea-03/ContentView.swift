//
//  ContentView.swift
//  Tarea-03
//
//  Created by pealejosb on 31-07-21.
//

import SwiftUI




struct ContentView: View {

	var body: some View {
		
		NavigationView {
			VStack{
				List(listaRestaurantes){ restaurante in
					
					NavigationLink(destination: DetailViewCards(items: restaurante.detail,restaurantName: restaurante.nombre) ) {
						EmptyView()
					}.navigationBarTitle(Text("Restaurantes"),displayMode:.inline)
					.frame(width: 0, height: 0 ).hidden()
					
					RowViewRestauranteView(restaurante: restaurante)
					
				}.navigationTitle("Restaurantes")
				
				.listStyle(GroupedListStyle())
				
				
			}.background(Color("background"))
			
			
			
		}
		
		
	}
}


struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
