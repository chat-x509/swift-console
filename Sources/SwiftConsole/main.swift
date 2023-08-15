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

  public static func loop() throws {
     print(": CHAT 💬 X.509 © SYNRC") ; Cmd.nop()
     while let line = readLine() {
           let args = args(data: line.components(separatedBy: " "))
           switch (args) {
               case []: Cmd.nop() ; continue
               default: try Cmd.execute(data: args)
           }
     }
     print(": Bye!")
  }

}

try Console.loop()
