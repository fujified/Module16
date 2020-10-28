// 1. Создайте кортеж для двух человек с одинаковыми типами данных и параметрами.
//При том одни значения доставайте по индексу, а другие — по параметру.
//Пример (для демонстрации задачи, чтобы было понимание, что надо делать):

//let someTuple = (age: 0, name: "some name", surname: "some surname")
//let someTwoTuple = (age: 0, name: "some two name", surname: "some two surname")
//someTuple.0
///// ...
//someTwoTuple.age
//

// 2. Создайте массив «дни в месяцах» (12 элементов содержащих количество дней в соответствующем месяце). Используя цикл for и этот массив:
//выведите количество дней в каждом месяце
//используйте еще один массив с именами месяцев чтобы вывести название месяца + количество дней
//сделайте тоже самое, но используя массив кортежей с параметрами (имя месяца, количество дней)
//сделайте тоже самое, только выводите дни в обратном порядке (порядок в исходном массиве не меняется)
//для произвольно выбранной даты (месяц и день) посчитайте количество дней до конца года

// 3. Создайте словарь, как журнал студентов, где имя и фамилия студента это ключ, а оценка за экзамен — значение.
//Повысьте студенту оценку за экзамен
//Если оценка положительная (4 или 5) или удовлетворительная (3), то выведите сообщение с поздравлением, отрицательная (1, 2) - отправьте на пересдачу
//Добавьте еще несколько студентов — это ваши новые одногруппники!
//Удалите одного студента — он отчислен
//Посчитайте средний балл всей группы по итогам экзамена.


// 1 //
let humanOne = (age: 30, name: "Bob", surname: "Green")
let humanTwo = (age: 25, name: "John", surname: "Doe")

humanOne.0
humanOne.1
humanOne.2

humanTwo.age
humanTwo.name
humanTwo.surname

// 2 //
let daysInMonth = ["31", "29", "31", "30", "31", "30", "31", "31", "30", "31", "30", "31"]

for days in daysInMonth {
    print(days)
}


let monthNames = ["January", "February", "March", "April", "May", "June", "Jule", "August", "September", "October", "November", "December"]


for (days, months) in zip(daysInMonth, monthNames) {
    print("\(months): \(days)")
}

for (days, months) in zip(daysInMonth.reversed(), monthNames) {
    print("\(months): \(days)")
}

var monthsTuple = (January: 31, February: 29, March: 31, April: 30, May: 31, June: 30, Jule: 31, August: 31, September: 30, October: 31, November: 30, December: 31)

// 3 //
var students = ["Bob Green": 4]
students.updateValue(5, forKey: "Bob Green")
print(students)
for (name, rating) in students {
    if rating >= 3  {
        print("Congratulation \(name), your rating is \(rating)")
    } else {
        print("Oopps, your rating is \(rating), you have to retakean exam")
    }
}
students["John Doe"] = 3
students["Martha Cooper"] = 4
students["Robert Klein"] = 2
print(students)
students.removeValue(forKey: "Robert Klein")
print(students)

let sumOfScore = students.reduce(0.0) { $0 + Double($1.value) }
print(sumOfScore)

let averageScore = (sumOfScore / Double(students.count))
print(averageScore)
