//
//  ORDR.swift
//  Embeddedview
//
//
//  An exercise file for iOS Development Tips Weekly
//  by Steven Lipton (C)2018, All rights reserved
//  For videos go to http://bit.ly/TipsLinkedInLearning
//  For code go to http://bit.ly/AppPieGithub
//

import UIKit
struct RDR1{
    var description:String
    var price:Double
    var detail:String
    init(description:String,price:Double, detail:String){
        self.description = description
        self.price = price
        self.detail = detail
    }
}

class ItemsOrdered{
    var orderRows = [RDR1]()
    init(){
        orderRows += [RDR1(description: "Pizza Margherita", price: 15.50, detail: "The classic pizza")]
        orderRows += [RDR1(description: "Sparking Water", price: 3.00, detail: "From the great spring")]
        orderRows += [RDR1(description: "Caesar Salad", price: 6.50, detail: "Serious salad")]
        orderRows += [RDR1(description: "Small Pan Meat Lover's Pizza", price: 12.00, detail: "For the carnivore")]
        orderRows += [RDR1(description: "Caprese Salad", price: 6.50, detail: "Buffalo Mozzarella and tomatoes")]
        orderRows += [RDR1(description: "Soft Drink", price: 6.50, detail: "your favore bubbly")]
        orderRows += [RDR1(description: "Tiramisu", price: 7.50, detail: "Yum. Just yum.")]
        orderRows += [RDR1(description: "Hazelnut Gelato", price: 6.50, detail: "Heaven melting in your mouth")]
    }
}
