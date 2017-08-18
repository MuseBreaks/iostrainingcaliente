//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var positivo:Bool = true;
var negativo:Bool = false;

var x = 10;
var y = 10;

let u = 10;
let z = "1";
var resultado = 10 + Int(z)!

var comparacion = x == y;

let alfa:String = "ABCDEFGHJKLM";
let beto:String = "NOPQRSTVWXYZ";

let alfabeto = alfa + beto;

let char0:Character = "x";
let char1:Character = "y";

let union:String = "pero que \(String(char0) + String(char1))";

var arreglo:[String] = ["maybe", "no", "yes"]

var diccionario:[Int:String] = [1:"Uno", 2:"Dos", 3:"Tres", 4:"Cuatro"]

diccionario[1]
diccionario[2]

var dicc2 = [1:1, 2:2, 3:3]
dicc2[1] = 2
dicc2[1]


let Nombres:[String:String] = ["test":"wut", "lol": "yes"]

let pelicula:(peli:String, year:Double) = ("Alien", 2017)

let peliculaInferida = ("Tomorrowland", 2015, 9)

let pelic:(peli:String, year:Double, rank:Int) = ("Alien", 2017, 9)

let someDictionary1: [String: Int] = ["Alex": 31, "Paul": 39]
let someDictionary2: Dictionary<String, Int> = ["Alex": 31, "Paul": 39]

let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names {
    print("Hello, \(name)!")
}