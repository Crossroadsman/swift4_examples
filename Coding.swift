/*:
 iOS 11 features significantly improved serializing/deserializing support through the new Codable protocol (replacing NSCoding)
 */
 
// Define a type that conforms to `Codable`
struct Pen: Codable {
    var name: String
    var colour: String
}
 
// Here are some example values
let pilot743 = Pen(name: "Pilot Custom 743", colour: "black")
let pelikanM1000 = Pen(name: "Pelikan M1000", colour: "green/black")
let nakayaLotusFlower = Pen(name: "Nakaya Portable Writer Lotus Flower", colour: "kuro-tamenuri")

let jEncoder = JSONEncoder()
do {
    let encoded = try jEncoder.encode(nakayaLotsFlower)
        // make json object from coded value
        if let jsonObject = String(data: encoded, encoding: .utf8) {
            print(jsonObject)
        }
} catch {
        // unable to encode - handle the error
}

let jDecoder = JSONDecoder()
do {
    let decoded = try jDecoder.decode(Pen.self, from: encoded) {
        print(decoded.name)
    }
