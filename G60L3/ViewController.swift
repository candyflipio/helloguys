//
//  ViewController.swift
//  G60L3
//
//  Created by pro on 20.08.2021.
//  Copyright © 2021 pro. All rights reserved.
//

import UIKit
import Foundation
import CoreData

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
    }
    
    
    
    
    
    
    
    //Написать метод, в который передается номер дня (1-7) и в консоль выводится день недели (Понед - Воскр)
    
    func dayOfTheWeek(day: Int) {
        
        switch day {
        case 1:
            print("Monday")
        case 2:
            print("Tuesday")
        case 3:
            print("Wednesday")
        case 4:
            print("Thursday")
        case 5:
            print("Friday")
        case 6:
            print("Saturday")
        case 7:
            print("Sunday")
        default:
            print("Error")
        }
        
        
        
        
        
        //Создать строку со своим именем.
        //Написать метод который получает это имя и возвращает кол-во символов в строке с вашим именем.
        //Возвращенное значение показать в консоль
        
        
        func stringEasyTask1() {
            print(length(name: "Oleksii"))
        }
        
        
        //Написать метод который принимает 2 слова, например имя и фамилию, возвращает юзернейм который имеет буквы нижнего регистра и разделяет имя и фамилию символом “_”
        
        func stringEasyTask2() {
            print(createUserName(name: "Алексей", surname: "Чухманенко"))
        }
        
        //Создать строку с именем и своим отчеством. Создать метод который проверит его на окончание “ич/на”. Выводит “М” или “Ж” в зависимости от окончания.
        //Также учитывать регистр букв, то есть ИЧ или Ич или На и тд.
        
        func stringEasyTask3() {
            if let sex = detectSexBy(patronymic: "Александрович"){
                print(sex)
            } else {
                print("Error!Check surname and try again")
            }
        }
        
        func createUserName(name: String, surname: String) -> String {
            return "\(name.lowercased())_\(surname.lowercased())"
        }
        
        func length(name: String) -> Int {
            return name.count
        }
        
        func detectSexBy(patronymic: String) -> String? {
            let sex: String?
            
            if patronymic.lowercased().hasSuffix("ич") {
                sex = "M"
            } else if patronymic.lowercased().hasSuffix("на") {
                sex = "Ж"
            } else {
                sex = nil
            }
            
            return sex
        }
        
        //    Создать массив со значениями типа Int. Выполнить удаление всех элементов массива.
        func collectionEasyTask1() {
            var array = [0, 1, 2]
            print("Before delete. Array: \(array)")
            
            array.removeAll()
            
            print("After delete. Array: \(array)")
        }
        
        //Создать 2 массива со значениями типа Int. Сделать соединение данных массивов. Результат вывести в консоль
        func collectionEasyTask2() {
            let firstArray = [1,2,3]
            let secondArray = [4,5,6]
            
            let result = firstArray + secondArray
            
            print(result)
        }
        
        //    Создать массив с любыми значениями типа строка(во viewDidLoad()).
        //    Создать метод который будет принимать как аргумент массив.
        //    Метод должен выводить в консоль элементы массива (по одному в одной строке)
        func collectionEasyTask3() {
            printArray(["123", "asd", "###"])
        }
        
        func printArray(_ array: [String]) {
            for string in array {
                print(string)
            }
        }
        //    Создать массив с любыми значениями типа строка.
        //    Создать метод который будет принимать как аргумент массив.
        //    Метод должен возвращать массив который состоит из первого и последнего элемента массива, который был параметром
        func collectionEasyTask4() {
            print(firstAndLastElement(array: ["1", "2", "3"]))
        }
        
        func firstAndLastElement(array: [String]) -> [String?]{
            return [
                array.first,
                array.last
            ]
        }
        
        //    Создать словарь в котором ключ будет Строкой а значение Целым.
        //    Например ключ - имя, значение - возраст. Должно быть 3 элемента (3 пары).
        //    Добавить в данный словарь еще 2 новых элемента.
        func collectionEasyTask5() {
            var dictionary = [
                "Alex" : 1,
                "Igor" : 2,
                "Ponny" : 3
            ]
            
            dictionary["Victor"] = 3
            dictionary["Tom"] = 5
        }
        
        //    Создать словарь в котором ключ будет Строкой а значение Целым. Например ключ - имя, значение - возраст.
        //    Должно быть 3 элемента (3 пары). Создать метод который будет иметь 2 параметра: словарь (типа “Строка : Целое”) и ключ типа Строка.
        //    Данный метод должен удалить из полученного (как первый аргумент) словаря элемент ключ которого был передан (как второй аргумент).
        //    Например: передаваемый словарь будет такой: ["Max": 1, "Dasha": 2, "Sergey": 3]
        //    И если передать второй аргумент "Sergey", то метод должен удалить элемент из передаваемого массива с ключом "Sergey".
        func collectionEasyTask6() {
            print(deleteElement(dictionary: [
                "Alex" : 1,
                "Igor" : 2,
                "Ponny" : 3
                ], key: "Victor"))
        }
        
        func deleteElement(dictionary: [String: Int], key: String) -> [String: Int] {
            var result = dictionary
            result.removeValue(forKey: key)
            return result
        }
        
        //    Создать метод который принимает 2 аргумента: массив строк и просто строку.
        //    Метод возвращает true или false в зависимости есть ли данный элемент (тот второй аргумент,
        //    который строка) в массиве (тот первый аргумент, который массив строк). например массив let array = [“one”, “two”]
        //    и если передать в этот метод “one“ то должно вернуть true а если передать “three” то должно вернуть false
        func collectionHardTask1() {
            print(contains(in: ["one", "two"], value: "one"))
        }
        
        func contains(in array: [String], value:String) -> Bool {
            return array.contains(value)
        }
        
        //    метод который выведет все ключи словаря и метод который выведет все значения словаря
        func collectionHardTask2() {
            let dataSetForTest =  ["1":"2", "3": "4"]
            
            printKeys(dictionary: dataSetForTest)
            printValues(dictionary: dataSetForTest)
        }
        
        func printKeys(dictionary: [String: String]) {
            print(dictionary.keys)
        }
        
        func printValues(dictionary: [String: String]) {
            print(dictionary.values)
        }
        
        //    Cортировка массива не встроенным методом по возрастанию + удалить дубликаты
        //    Например задается массив [3, 6, 1, 2, 2, 6, 13, 77, 36] Результат должен быть [1, 2, 3, 6, 13, 36, 77]
        func collectionHardTask3() {
            let dataSetForTest =  [3, 6, 1, 2, 2, 6, 13, 77, 36]
            let  result = insertionSort(deleteDublicats(array: dataSetForTest))
            
            print(result)
        }
        
        func deleteDublicats(array: [Int]) -> [Int] {
            return Array(Set(array))
        }
        
        func insertionSort(_ array: [Int]) -> [Int] {
            var result = array
            
            for x in 1..<result.count {
                var y = x
                while y > 0 && result[y] < result[y - 1] {
                    result.swapAt(y - 1, y)
                    y -= 1
                }
            }
            return result
        }
        
        //    Во ViewDidLoad создать словарь внутри которого будет 2 словаря (ключ - строка, значение - словарь). С любыми данными.
        //    Их мы будем передавать в метод, который напишем.
        //    Создать метод который будет принимать как параметры: словарь (такого типа как выше) и строку.
        //    Данный метод должен вернуть значение которое хранится внутри элемента ключ которого был передан как аргумент.
        func collectionHardTask4() {
            let dataSetForTest = [
                "2" : [2: 3],
                "3" : [4: 5]
            ]
            
            print(getValue(dictionary: dataSetForTest, key: "3") as Any)
        }
        
        func getValue(dictionary: [String: [Int: Int]], key: String) -> [Int: Int]? {
            return dictionary[key]
        }
        
        //    Создать метод который будет принимать строку где слитно написано Ваши ИмяФамилия “TungFam" и возвращать строку, где они будут разделены
        //    пробелом input = “TungFam” output = “Tung Fam" Сложность задачи в том, что имя может быть любое. Например: Введя “ArtemPigor” должно вернуть
        //    “Artem Pigor” Введя “AnnaSecure” должно вернуть “Anna Secure” Введя “BlaCar” должно вернуть “Bla Car” То есть алгоритм разбивает
        //    два слова которые начинаются на большую букву
        func stringHardTask1() {
            print(splitByUpperCase(string: "dgNJfheejnJHjkej"))
        }
        
        //    Создать метод который принимает как аргумент строку.
        //    Метод выводит строку зеркально, например Ось -> ьсО, Привет -> тевирП. не используя reverse (сделать алгоритм самому посимвольно)
        func stringHardTask2() {
            print(reverse(string: "Привет"))
        }
        
        //    Добавить запятые в строку как их расставляет калькулятор
        //    1234567 -> 1,234,567 12345 -> 12,345 (не использовать встроенный метод для применения формата)
        func stringHardTask3() {
            print(format(number: "12345"))
        }
        
        //    проверить пароль на надежность от 1 до 5
        //    если пароль содержит числа +1
        //    символы верхнего регистра +1
        //    символы нижнего регистра +1
        //    спец символы +1
        //    если длина пароля 8 или более символов +1
        func stringHardTask4() {
            print(checkSecureLavel(password: "12345678ф,A"))
        }
        
        func checkSecureLavel(password: String) -> Int{
            var secureLevel = 0
            
            if containsNumber(password) {
                secureLevel += 1
            }
            
            if  containsLowcaseChar(password){
                secureLevel += 1
            }
            
            if  containsUpercaseChar(password){
                secureLevel += 1
            }
            
            if  containsSpecialChar(password){
                secureLevel += 1
            }
            
            if  password.count >= 8{
                secureLevel += 1
            }
            
            return secureLevel
        }
        
        func containsSpecialChar(_ string: String) -> Bool {
            return string.rangeOfCharacter(from: CharacterSet.alphanumerics.inverted) != nil
        }
        
        func containsUpercaseChar(_ string: String) -> Bool {
            return string.rangeOfCharacter(from: CharacterSet.uppercaseLetters) != nil
        }
        
        func containsLowcaseChar(_ string: String) -> Bool {
            return string.rangeOfCharacter(from: CharacterSet.lowercaseLetters) != nil
        }
        
        func containsNumber(_ string: String) -> Bool {
            let numbersRange = string.rangeOfCharacter(from: .decimalDigits)
            return (numbersRange != nil)
        }
        
        func splitByUpperCase(string: String) -> String {
            var result = ""
            
            for ch in string {
                if String(ch) == String(ch).uppercased() {
                    result.append(" ")
                }
                
                result.append(ch)
            }
            
            return result
        }
        
        func format(number: String) -> String {
            var result = ""
            
            for (index, element) in number.reversed().enumerated() {
                result.insert(element, at: result.startIndex)
                
                if((index + 1) % 3 == 0 && index != number.count - 1) {
                    result.insert(",", at: result.startIndex)
                }
            }
            
            return result
        }
        
        func reverse(string: String) -> String {
            var result: String = ""
            
            for ch in string {
                result.insert(ch, at: result.startIndex)
            }
            
            return result
        }

        
        dayOfTheWeek(day: 5)
        stringEasyTask1()
        stringEasyTask2()
        stringEasyTask3()
        
        stringHardTask1()
        stringHardTask2()
        stringHardTask3()
        stringHardTask4()
        
        collectionEasyTask1()
        collectionEasyTask2()
        collectionEasyTask3()
        collectionEasyTask4()
        collectionEasyTask5()
        collectionEasyTask6()
        
        collectionHardTask1()
        collectionHardTask2()
        collectionHardTask3()
        collectionHardTask4()

        
        
        
        
        
        
        
        
        
        
    }
    
}

