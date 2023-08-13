import Foundation
@testable @_spi(CMS) import X509

func showCMS(name: String) throws {
  print("CMS: \(name)")
  let url = URL(fileURLWithPath: name)
  do {
     let data = try Data(contentsOf: url)
     let cms = try CMSContentInfo(derEncoded: Array(data))
     print("\(cms.contentType)")
  }
}

func showCRT(name: String) throws {
  print("Cert: \(name)")
  let url = URL(fileURLWithPath: name)
  do {
     let data = try Data(contentsOf: url)
     let crt = try Certificate(derEncoded: Array(data))
     print("\(crt)")
  }
}

func showCSR(name: String) throws {
  print("CSR: \(name)")
  let url = URL(fileURLWithPath: name)
  do {
     let data = try Data(contentsOf: url)
     let csr = try CertificateSigningRequest(derEncoded: Array(data))
     print("\(csr)")
  }
}

func run() throws {
     print(": CHAT 💬 X.509 © SYNRC")
     print("> ", terminator: "")
     while let line = readLine() {
        let data = line.components(separatedBy: " ")
        if (data.count > 2 && data[0] == "show") {
           switch (data[2]) {
              case "crt": try showCRT(name: data[1])
              case "csr": try showCSR(name: data[1])
              case "cms": try showCMS(name: data[1])
              default: ()
           }
        }
        print(": \(data)")
        print("> ", terminator: "")
     }
     print("Bye!")
}

try run()
