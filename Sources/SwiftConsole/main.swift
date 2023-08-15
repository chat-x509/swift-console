import Crypto
import Foundation

try Console.loop()
public class Console {
  public static func loop() throws {
     print(": CHAT 💬 X.509 © SYNRC") ; Cmd.nop()
     var quit = false;
     while (!quit) {
         let data = filter(readLine()!)
         switch (data) {
             case []: Cmd.nop() ; continue
             default: if (try Cmd.execute(data)) { quit = true }
         }
     }
     print(": Bye!")
  }

  public static func filter(_ line: String) -> Array<String> {
     let data = line.components(separatedBy: " ")
     if (data.joined() == "") {
         return []
     } else {
         let args  = data.filter { $0 != "" }
         print(": \(args)")
         return args
     }
  }

}

