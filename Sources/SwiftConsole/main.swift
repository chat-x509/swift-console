import SwiftASN1
import Crypto
import Foundation

class Client {

  public static func nop() {
     print(">", terminator: " ")
  }

  public static func show(data: Array<String>) throws {
     if (data.count > 2) {
         switch (data[2]) {
            case "crt": try Chat.showCRT(name: data[1])
            case "csr": try Chat.showCSR(name: data[1])
            case "cms": try Chat.showCMS(name: data[1])
            default: ()
         }
     } else {
         print(": Not enough arguments.")
     }
  }

  public static func kdf(data: Array<String>) -> Data {
     let x = KDF.derive(hash: "sha512", key: Data(bytes: [0,1,2,3,4]),
                        len: 20, data: Data(bytes: [100,101,102,103,104]))
     print(": \(Array(x))")
     return x
  }

  public static func args(data: Array<String>) -> Array<String> {
     if (data.joined() == "") {
         return []
     } else {
         let args  = data.filter { $0 != "" }
         print(": \(args)")
         return args
     }
  }

  public static func execute(data: Array<String>) throws {
     switch (data[0]) {
         case "bye": break
         case "show": try show(data: data)
         case "kdf": try kdf(data: data)
         default: nop()
     }
  }

  public static func loop() throws {
     print(": CHAT 💬 X.509 © SYNRC") ; nop()
     while let line = readLine() {
           let args = args(data: line.components(separatedBy: " "))
           switch (args) {
               case []: nop() ; continue
               default: try execute(data: args)
           }
     }
     print(": Bye!")
  }

}

try Client.loop()
