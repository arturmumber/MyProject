import AVKit
import AVFoundation

/*struct ValueCurrency: Codable {
    let id, numCode, charCode: String
    let nominal: Int
    let name: String
    let value, previous: Double

    enum CodingKeys: String, CodingKey {
        case id = "ID"
        case numCode = "NumCode"
        case charCode = "CharCode"
        case nominal = "Nominal"
        case name = "Name"
        case value = "Value"
        case previous = "Previous"
    }
}



let urlString = "https://www.cbr-xml-daily.ru/daily_json.js"
guard let url = URL(string: urlString) else { return }

URLSession.shared.dataTask(with: url) {(data, response, error) in
    
    guard let data = data else { return }
    guard error == nil else { return }
    
    do {
    
    } catch let error {
        print (error)
    }
}
*/
struct Empty: Codable {
    let date, previousDate: Date
    let previousURL: String
    let timestamp: Date
    let valute: [String: Valute]

    enum CodingKeys: String, CodingKey {
        case date = "Date"
        case previousDate = "PreviousDate"
        case previousURL = "PreviousURL"
        case timestamp = "Timestamp"
        case valute = "Valute"
    }
}

// MARK: - Valute
struct Valute: Codable {
    let id, numCode, charCode: String
    let nominal: Int
    let name: String
    let value, previous: Double

    enum CodingKeys: String, CodingKey {
        case id = "ID"
        case numCode = "NumCode"
        case charCode = "CharCode"
        case nominal = "Nominal"
        case name = "Name"
        case value = "Value"
        case previous = "Previous"
    }
}
