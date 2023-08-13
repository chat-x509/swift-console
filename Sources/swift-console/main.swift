import Darwin.libc
import Foundation
import X509

func showCMS(name: String) throws {
  print("CMS: \(name)")
  let url = URL(fileURLWithPath: name)
  do {
     let data = try Data(contentsOf: url)
//     let cms = try CMSContentInfo(derEncoded: Array(data))
     print("\(data)")
  }
}

func showCSR(name: String) throws {
  print("CSR: \(name)")
  let url = URL(fileURLWithPath: name)
  do {
     let data = try Data(contentsOf: url)
     let csr = try CertificateSigningRequest(derEncoded: Array(data))
     print("\(csr.signatureAlgorithm)")
  }
}

func run() throws {
     print(": CHAT 💬 X.509 © SYNRC")
     print(">", terminator: "")
     while let line = readLine() {
        let data = line.components(separatedBy: " ")
        if (data.count > 2 && data[0] == "show") {
           print("Show: \(data)")
           switch (data[2]) {
              case "csr": try showCSR(name: data[1])
              case "cms": try showCMS(name: data[1])
              default: ()
           }
        } else {
           print(": \(line)")
           print(">", terminator: "")
        }
     }
     print("Bye!")
}

try run()
