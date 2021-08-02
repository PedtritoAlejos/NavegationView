//
//  DetailView.swift
//  Tarea-03
//
//  Created by pealejosb on 01-08-21.
//

import SwiftUI


struct DetailViewCards: View {
    @State var items: [Item]
    @State var restaurantName: String
    
    var body: some View {
        
        VStack{
            TopBar(restaurante: restaurantName)
            
            
            GeometryReader{ _ in
                
                List(items.indices) { itemIndex in
                    
                    CardListRow(item: self.$items[itemIndex])
                    
                    
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                .edgesIgnoringSafeArea(.all)
                .onAppear {
                    UITableView.appearance().separatorStyle = .none
                }
                .onDisappear {
                    UITableView.appearance().separatorStyle = .singleLine
                }.background(Color(.red))
            }.background(Color("background"))
            
        }.edgesIgnoringSafeArea(.top)
        
        
    }
}

struct TopBar :View{
    
    let restaurantName: String
    
    init(restaurante:String){
        self.restaurantName = restaurante
    }
    
    var body : some View{
        VStack(spacing: 0){
            HStack{
                Text(self.restaurantName).font(.system(size: 17)).fontWeight(.semibold).foregroundColor(.black)
                    
                    .frame(maxWidth: .infinity, alignment: .center)
                
                
                
                Spacer()
                
            }.padding()
            .padding(.top,(UIApplication.shared.windows.last?.safeAreaInsets.top)! + 50)
            .background(Color("background"))
            .border(Color.white)
            .shadow(radius: 5)
            
            
            
        }
    }
}





struct CardListRow: View {
    @Binding var item: Item
    
    var body: some View {
        ZStack {
            Color.white
                .cornerRadius(12)
            CardContentView(item: $item)
        }
        .fixedSize(horizontal: false, vertical: true)
        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
    }
}
struct CardContentView: View {
    @Binding var item: Item
    
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 8) {
                Text(item.name)
                    .font(.system(size: 15 ))
                    .fixedSize(horizontal: false, vertical: true)
                
                Text(item.summary)
                    .font(.caption)
                    .foregroundColor(Color("color-description"))
                Text( item.priceProduct)
                    .font(.system(size: 15 ))
            }
            Image(item.imageName)
                .resizable()
                .frame(width: 80, height: 80)
                .cornerRadius(8)
                .padding(.top,10)
            
        }
        .padding()
    }
}
