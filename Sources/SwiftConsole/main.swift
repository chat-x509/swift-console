import SwiftASN1
import Crypto
import Foundation

public class Console {

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
         case "show": try Cmd.showDER(data: data)
         case "kdf": try Cmd.showKDF(data: data)
         default: Cmd.nop()
     }
  }

  public static func loop() throws {
     print(": CHAT 💬 X.509 © SYNRC") ; Cmd.nop()
     while let line = readLine() {
           let args = args(data: line.components(separatedBy: " "))
           switch (args) {
               case []: Cmd.nop() ; continue
               default: try execute(data: args)
           }
     }
     print(": Bye!")
  }

}

try Console.loop()
