import Foundation
import Crypto

public struct wrapVector {
    let kek: SymmetricKey
    let key: SymmetricKey
    let wrap: Data
}

extension Data {
    init?(hexString: String) {
        var hex = hexString
        hex = hex.replacingOccurrences(of: " ", with: "")
        hex = hex.replacingOccurrences(of: "0x", with: "")
        guard hex.count % 2 == 0 else {
            return nil
        }
        var data = Data()
        var index = hex.startIndex
        while index < hex.endIndex {
            let byteString = hex[index..<hex.index(index, offsetBy: 2)]
            if let byte = UInt8(byteString, radix: 16) {
                data.append(byte)
            } else {
                return nil
            }
            index = hex.index(index, offsetBy: 2)
        }
        self = data
    }
}

public class Block {

    public static var IV: UInt64 = 0xA6A6A6A6A6A6A6A6

    public static var vector: [wrapVector] = [
        wrapVector(
            kek: try SymmetricKey(data: Data(hexString: "f59782f1dceb0544a8da06b34969b9212b55ce6dcbdd0975a33f4b3f88b538da")!),
            key: try SymmetricKey(data: Data(hexString: "73d33060b5f9f2eb5785c0703ddfa704")!),
            wrap: try Data(hexString: "2e63946ea3c090902fa1558375fdb2907742ac74e39403fc")!), ]

    public static func test() throws {
        try vector.forEach { e in
            let kek = SymmetricKey(data: e.kek)
            let wrapped = try AES.KeyWrap.wrap(e.kek, using: e.key)
            let unwrapped = try AES.KeyWrap.unwrap(wrapped, using: e.key)
            print(": KEK \(e.kek)")
            print(": KEY \(e.key)")
            print(": WRAP \(Array(e.wrap))")
            print(": Wrapped \(Array(wrapped))")
            print(": Unwrapped \(unwrapped)")
       }
    }

}

