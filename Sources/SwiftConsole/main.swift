import SwiftASN1
import Crypto
import Foundation

func exists(f: String) -> Bool { return FileManager.default.fileExists(atPath: f) }

func showCMS(name: String) throws {
     print(": CMS=\(name)")
     let url = URL(fileURLWithPath: name)
     if (!exists(f: url.path)) { print(": CMS file not found.") } else {
         let data = try Data(contentsOf: url)
         let cms = try CMSContentInfo(derEncoded: Array(data))
         print(": \(cms.contentType)")
     }
}

func showCRT(name: String) throws {
     print(": CRT=\(name)")
     let url = URL(fileURLWithPath: name)
     if (!exists(f: url.path)) { print(": CRT file not found.") } else {
         let data = try Data(contentsOf: url)
         let crt = try Certificate(derEncoded: Array(data))
         print(": \(crt)")
     }
}

func showCSR(name: String) throws {
     print(": CSR=\(name)")
     let url = URL(fileURLWithPath: name)
     if (!exists(f: url.path)) { print(": CSR file not found.") } else {
         let data = try Data(contentsOf: url)
         let csr = try CertificateSigningRequest(derEncoded: Array(data))
         print(": \(csr)")
     }
}

func run() throws {
     print(": CHAT 💬 X.509 © SYNRC")
     print("> ", terminator: "")
     while let line = readLine() {
        let data = line.components(separatedBy: " ")
        if (data.joined() == "") {
            print("> ", terminator: "")
            continue
        } else {
            let f: (_ x: String) -> Bool = { (x: String) -> Bool in x != "" }
            let args1 = data.filter(f)
            let args2 = data.filter({ (x: String) -> Bool in x != "" })
            let args3 = data.filter({ x in x != "" })
            let args4  = data.filter({ $0 != "" })
            print(": \(args1)")
        }
        if (data.count > 2 && data[0] == "show") {
            switch (data[2]) {
                case "crt": try showCRT(name: data[1])
                case "csr": try showCSR(name: data[1])
                case "cms": try showCMS(name: data[1])
                default: ()
            }
        }
        print("> ", terminator: "")
     }
     print("Bye!")
}

try run()
// ...
