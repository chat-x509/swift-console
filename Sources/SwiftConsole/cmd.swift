import SwiftASN1
import Crypto
import Foundation

public class Cmd {

  public static func exists(f: String) -> Bool { return FileManager.default.fileExists(atPath: f) }
  public static func nop() { print(">", terminator: " ") }
  public static func showKDF(data: Array<String>) throws {
     let x = KDF.derive(alg: "sha512", key: Data(bytes: [0,1,2,3,4]),
                        len: 20, data: Data(bytes: [100,101,102,103,104]))
     print(": KDF \(Array(x))")
  }

  public static func showDER(data: Array<String>) throws {
     if (data.count > 2) {
         switch (data[2]) {
            case "crt": try Cmd.showCRT(name: data[1])
            case "csr": try Cmd.showCSR(name: data[1])
            case "cms": try Cmd.showCMS(name: data[1])
            default: ()
         }
     } else {
         print(": Not enough arguments.")
     }
  }

  public static func showCMS(name: String) throws {
     print(": CMS=\(name)")
     let url = URL(fileURLWithPath: name)
     if (!Cmd.exists(f: url.path)) { print(": CMS file not found.") } else {
         let data = try Data(contentsOf: url)
         let cms = try CMSContentInfo(derEncoded: Array(data))
         print(": \(cms.contentType)")
     }
  }

  public static func showCRT(name: String) throws {
     print(": CRT=\(name)")
     let url = URL(fileURLWithPath: name)
     if (!Cmd.exists(f: url.path)) { print(": CRT file not found.") } else {
         let data = try Data(contentsOf: url)
         let crt = try Certificate(derEncoded: Array(data))
         print(": \(crt)")
     }
  }

  public static func showCSR(name: String) throws {
     print(": CSR=\(name)")
     let url = URL(fileURLWithPath: name)
     if (!Cmd.exists(f: url.path)) { print(": CSR file not found.") } else {
         let data = try Data(contentsOf: url)
         let csr = try CertificateSigningRequest(derEncoded: Array(data))
         print(": \(csr)")
     }
  }

}