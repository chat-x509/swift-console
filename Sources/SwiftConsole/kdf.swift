import Foundation

class KDF {

  public func derive(hash: String, key: Data, len: Int, data: Data) throws -> Data {
      let data = Data(count: len)
      return data
  }

}
