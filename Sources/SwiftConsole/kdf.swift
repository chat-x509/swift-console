import Foundation
import Crypto

class KDF {

  public static func ceil(x: Int, y: Int) -> Int { if (x % y == 0) { return (x / y) } else { return (x / y) + 1 } }

  public static func fold<T, E>(list:Array<T>, base:E, transform:(_ item:T, _ acc:E) -> E) -> E {
      var acc = base
      for item in list { acc = transform(item, acc)  }
      return acc
  }

  public static func keysize(hash: String) -> Int {
      switch (hash) {
          case "sha256": return 32
          case "sha384": return 48
          case "sha512": return 64
          default: return -1
      }
  }

  public static func hash(hash: String, bin: Data) -> Data {
      switch (hash) {
          case "sha256": return Data(SHA256.hash(data: bin).makeIterator())
          case "sha384": return Data(SHA384.hash(data: bin).makeIterator())
          case "sha512": return Data(SHA512.hash(data: bin).makeIterator())
          default: return Data([])
      }
  }

  public static func derive(hash: String, key: Data, len: Int, data: Data) -> Data {
      let ceil = ceil(x: len, y: keysize(hash: hash))
      let seq = stride(from: ceil, to: 0, by: -1).map { $0 }
      let res = KDF.fold(list: seq, base: Data(bytes: []), transform: { x, y in
          var iter = Data()
          let bytes = Data(bytes: [0,0,0,UInt8(x)])
          iter.reserveCapacity(key.count + bytes.count + data.count)
          iter.append(contentsOf: key)
          iter.append(contentsOf: bytes)
          iter.append(contentsOf: data)
          var acc = KDF.hash(hash: hash, bin: iter)
          acc.append(contentsOf: y)
          return acc
      })

      return res.subdata(in: 0 ..< len)
  }

}
