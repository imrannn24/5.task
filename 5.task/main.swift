//
//  main.swift
//  5.task
//
//  Created by imran on 12.01.2023.
//

import Foundation

//Задание 1

var basket: [String: Int] = [:]

basket.updateValue(50, forKey: "Кола")
basket.updateValue(20, forKey: "Хлеб")
basket.updateValue(70, forKey: "Молоко")

var a = 0

for (_, value) in basket{
    a += value
}

print(basket)
print("Сумма: \(a)")

//Задание 2

print("Ассортимент:")
var spisok:  [String:Int] = ["Кола":70, "Хлеб":20, "Молоко":50, "Кефир":60,"Сахар":80,"Салат":100]
for (product,cena) in spisok{
    print(product,cena,"сом")
}
print("Выберите товары(введите их наименование):")
var u = 0
var basket2: [String:Int] = [:]
var tovar = readLine()!
for (prod,cen) in spisok{
    if tovar == prod{
        u += cen
        basket2.updateValue(cen, forKey: prod)
    }
}
var tovar2 = readLine()!
for (prod,cen) in spisok{
    if tovar2 == prod{
        u += cen
        basket2.updateValue(cen, forKey: prod)
    }
}
var tovar3 = readLine()!
for (prod,cen) in spisok{
    if tovar3 == prod{
        u += cen
        basket2.updateValue(cen, forKey: prod)
    }
}
print("-----------ЧЕК-----------")
print("Наименование: "," Цена:")
for (product,cena) in basket2{
    var probel = ""
    let g = 13 - product.count
    for _ in 0...g{
        probel += " "
    }
    print(product,probel,cena,"сом")
}
print("-------------------------")
print("Итого к оплате: \(u) сом")

