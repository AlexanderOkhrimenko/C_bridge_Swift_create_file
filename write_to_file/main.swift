//  main.swift
//  write_to_file

import Foundation


print("Factorial \(factorial(5))!")


// Чтение файла с клавиатуры
let greater = readLine()
// Преобразование ввода в строку
let greaterFinal = String(greater!)
// Внедрение собственной информатции в HTML теги
let hr = "<html><hr> \(greaterFinal) <hr></html>."


//MARK: Путь к файлу
let path = "/Users/xander/Desktop/test.html"
let fd = FileHandle.init(forReadingAtPath: path)


// Чтение файла
let data = fd?.readDataToEndOfFile()
// Преобразование прочитанного в  UTF-8
let newStr = String(data: data!, encoding: .utf8)

print(String(newStr!))

// Переход в конец файла
//fd?.seekToEndOfFile()

//MARK: Чтение из файла UTF-8
//let text = try String(contentsOfFile: path, encoding: String.Encoding.utf8)

//MARK: Запись в файл UTF-8 - файл перезаписыватся
//try hr.write(toFile: path, atomically: false, encoding: String.Encoding.utf8)

let dw = Data(repeating: 120, count: 100)

//try greaterFinal.write(to: URL(fileURLWithPath: path), atomically: false, encoding: .utf8)


// Дописываем в файл
if let fileUpdater = try? FileHandle(forUpdating: URL(fileURLWithPath: path)) {
    fileUpdater.seekToEndOfFile()
    fileUpdater.write(hr.data(using: .utf8)!)
    fileUpdater.seekToEndOfFile()
    fileUpdater.write(dw)
    fileUpdater.closeFile()
}

