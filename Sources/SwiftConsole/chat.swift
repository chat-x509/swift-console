import SwiftASN1
import Crypto
import Foundation

class Chat {

  public static func exists(f: String) -> Bool { return FileManager.default.fileExists(atPath: f) }

  public static func showCMS(name: String) throws {
     print(": CMS=\(name)")
     let url = URL(fileURLWithPath: name)
     if (!Chat.exists(f: url.path)) { print(": CMS file not found.") } else {
         let data = try Data(contentsOf: url)
         let cms = try CMSContentInfo(derEncoded: Array(data))
         print(": \(cms.contentType)")
     }
  }

  public static func showCRT(name: String) throws {
     print(": CRT=\(name)")
     let url = URL(fileURLWithPath: name)
     if (!Chat.exists(f: url.path)) { print(": CRT file not found.") } else {
         let data = try Data(contentsOf: url)
         let crt = try Certificate(derEncoded: Array(data))
         print(": \(crt)")
     }
  }

  public static func showCSR(name: String) throws {
     print(": CSR=\(name)")
     let url = URL(fileURLWithPath: name)
     if (!Chat.exists(f: url.path)) { print(": CSR file not found.") } else {
         let data = try Data(contentsOf: url)
         let csr = try CertificateSigningRequest(derEncoded: Array(data))
         print(": \(csr)")
     }
  }

}