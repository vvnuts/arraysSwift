var monthDurations = [Int]()
let isLeapYear = true
if (isLeapYear) {
    monthDurations += [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
} else {
    monthDurations += [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
}
let monthNames = ["January", "February", "March", "April", "May", "June",
"July", "August", "September", "October", "November", "December"]

print("Кол-во дней в месяцах:")
for duration in monthDurations {
    print(duration)
}

if (monthDurations.count == monthNames.count) {
    print("Кол-во дней в месяцах:")
    for i in 0..<monthNames.count {
        print("\(monthNames[i]): \(monthDurations[i])")
    }

    print("Кол-во дней в месяцах(tuple):")
    for (monthName, monthDuration) in zip(monthNames, monthDurations) {
         print("\(monthName): \(monthDuration)")
    }

    print("Кол-во дней в месяцах в обратном порядке:")
    for (monthName, monthDuration) in zip(monthNames.reversed(), monthDurations.reversed()) {
         print("\(monthName): \(monthDuration)")
    }

    let randMonth = Int.random(in: 0..<monthNames.count)
    let randDay = Int.random(in: 1...monthDurations[randMonth])
    var dayFromStartYear = 0
    for indexMonth in 0..<randMonth {
        dayFromStartYear += monthDurations[indexMonth]
    }
    print("Дата: \(randDay) \(monthNames[randMonth])")
    print("С начала года прошло \(dayFromStartYear + randDay - 1) дня(ей).")
}


