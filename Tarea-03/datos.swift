//
//  datos.swift
//  Tarea-03
//
//  Created by pealejosb on 01-08-21.
//

import Foundation


struct Restaurante: Identifiable {
    let id = UUID()
    let logo: String
    let nombre: String
    let valoracion : Double
    let descripcion : String
    let patrocinado : Bool
    let detail :  [Item]
}
struct Item: Identifiable {
    let id = UUID()
    let name: String
    let summary: String
    let imageName: String
    let priceProduct : String
}

let burgerItems : [Item] = [
    Item(name: "Bobo Rey", summary: "Promo - 1 Baby back ribs BBQ + 1 Papa familiar + 2 Salsa Rey", imageName: "burger2",priceProduct:"$8.490"),
    Item(name: "2x Sándwich Rodeo King", summary: "Promo - 2 Baby back ribs BBQ + 5 Papa familiar + 7 Salsa Rey", imageName: "burger1",priceProduct:"$5.490"),
    Item(name: "Mix & Match", summary: "Promo - 4 Baby back ribs BBQ + 3 Papa familiar + 3 Salsa Rey", imageName: "burger2",priceProduct:"$12.490")
]
let dominoPizzaItems : [Item] = [
    Item(name: "2 Pizzas Familiares Doble", summary: "2 Pizzas Familiares Doble Pepperoni + Bebida 1.5 lts", imageName: "pizza1",priceProduct:"$17.390"),
    Item(name: "Extravaganzza", summary: "2 Pizzas Familiares Doble Pepperoni + Bebida 1.5 lts", imageName: "pizza2",priceProduct:"$22.490"),
    Item(name: "Americana", summary: "2 Pizzas Familiares Doble Pepperoni + Bebida 1.5 lts", imageName: "pizza3",priceProduct:"$18.490")
]
let lovasanoItems : [Item] = [
    Item(name: "Fajitas", summary: "Dos fajitas,base de lechuga,tomate y zanahoria", imageName: "olivia1",priceProduct:"$7.390"),
    Item(name: "Ensalada Huevo Papa Zanahoria", summary: "Base de lechugas mixta,pasta,palta,tomates del huerto", imageName: "olivia2",priceProduct:"$4.490"),
    Item(name: "Torta Tres Leches", summary: "Delicioso bizcocho de vainilla humero en creme tres leches", imageName: "olivia3",priceProduct:"$2.490")
]
let subwayItems : [Item] = [
    Item(name: "Sub Texano", summary: "Una de las recetas preferidas por todos,hecho de lámina de pollo", imageName: "subway1",priceProduct:"$7.390"),
    Item(name: "Sub de Carne y Queso", summary: "Una de las recetas preferidas por todos,hecho de lámina de pollo", imageName: "subway2",priceProduct:"$4.490"),
    Item(name: "Sub de Pollo Teriyake", summary: "Una de las recetas preferidas por todos,hecho de lámina de pollo", imageName: "subway3",priceProduct:"$2.490")
]
let sushiDubaiItems : [Item] = [
    Item(name: "Promoción - 80 piezas", summary: "10 Piezas de sake tempura (salmón,queso crema,cebollín)", imageName: "sushi1",priceProduct:"$17.390"),
    Item(name: "Promoción - 50 piezas", summary: "10 Piezas de sake tempura (salmón,queso crema,cebollín)", imageName: "sushi2",priceProduct:"$14.490"),
    Item(name: "Promoción - 70 piezas", summary: "10 Piezas de sake tempura (salmón,queso crema,cebollín)", imageName: "sushi3",priceProduct:"$12.490")
]

let listaRestaurantes : [Restaurante] = [
    Restaurante(logo: "burger-king", nombre: "Burger King", valoracion: 4.2, descripcion: "10-30 min· $1.790 envío ",patrocinado: false,detail: burgerItems),
    Restaurante(logo: "domino-pizza", nombre: "Domino Pizza", valoracion: 3.6, descripcion: "30-45 min· $1.600 envío ",patrocinado: true,detail: dominoPizzaItems),
    Restaurante(logo: "lovasano", nombre: "Oliva Sano", valoracion: 4.7, descripcion: "15-30 min· $1.590 envío ",patrocinado: false,detail: lovasanoItems),
    Restaurante(logo: "subway", nombre: "Subway Bandera", valoracion: 4.4, descripcion: "15-30 min· $1.590 envío ",patrocinado: false,detail: subwayItems),
    Restaurante(logo: "sushi_dubai", nombre: "Dubai Sushi", valoracion: 3.9, descripcion: "45-60 min· $1.500 envío ",patrocinado: true,detail: sushiDubaiItems)
    
]
