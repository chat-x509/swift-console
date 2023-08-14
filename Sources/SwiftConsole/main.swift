import SwiftASN1
import Crypto
import Foundation

class Client {

  public static func run() throws {
     print(": CHAT 💬 X.509 © SYNRC")
     print("> ", terminator: "")
     while let line = readLine() {
        let data = line.components(separatedBy: " ")
        if (data.joined() == "") {
            print("> ", terminator: "")
            continue
        } else {
            let args  = data.filter({ $0 != "" })
            print(": \(args)")
        }
        if (data.count > 2 && data[0] == "show") {
            switch (data[2]) {
                case "crt": try Chat.showCRT(name: data[1])
                case "csr": try Chat.showCSR(name: data[1])
                case "cms": try Chat.showCMS(name: data[1])
                default: ()
            }
        }
        print("> ", terminator: "")
     }
     print("Bye!")
  }

}

try Client.run()
