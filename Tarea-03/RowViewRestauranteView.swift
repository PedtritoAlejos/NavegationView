//
//  RowViewRestauranteView.swift
//  Tarea-03
//
//  Created by pealejosb on 01-08-21.
//

import SwiftUI

struct RowViewRestauranteView: View {
    @State var restaurante : Restaurante

    var body: some View {
        HStack{
            Image(restaurante.logo)
            .resizable()
            .frame(width: 50.0, height: 50.0)
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
            .padding()
               
            VStack{
                restaurante.patrocinado ? Text( "PATROCINADO").foregroundColor(Color("color-description")).frame(maxWidth: .infinity, alignment: .leading).font(.system(size: 8 )) : nil
                HStack{
                   
                    Text(restaurante.nombre ).frame(maxWidth: .infinity, alignment: .leading).font(.system(size: 15 ))
                    Image(systemName: "heart").foregroundColor(.gray)
                  
                    HStack{
                        Image(systemName: "star.fill").foregroundColor(Color("font-color"))
                        
                        Text( "\( String(format:"%.1f",restaurante.valoracion) )").foregroundColor(Color("font-color"))
                    
                    }.frame(width: 50, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).background(Color("puntaje").opacity(0.3)).font(.system(size: 11.5))
                    .cornerRadius(3.5)

                    
                }
               
                
                Text(restaurante.descripcion).frame(maxWidth: .infinity, alignment: .leading).font(.system(size: 11 )).foregroundColor(Color("color-description"))
            }.frame(maxWidth: .infinity ,alignment: .leading)
           
              
               
        }.background(Color.white)
        .cornerRadius(5)
        
      
        
        
    }
}

