import Foundation
import Crypto

public class Form {

  public struct screen {
    let no: Int
    let name: String
    let sections: [section]
  }

  public struct section {
    let name: String
    let rows: [row]
  }

  public struct row {
    let no: Int
    let desc: String
    let rico: (String,String)
  }

  public static func show(data: Array<String>) {
    var settings:termios = termios()
    tcgetattr(STDIN_FILENO, &settings)
    var saved = settings
    settings.c_lflag &= ~(UInt32(ICANON) | UInt32(ECHO))
    tcsetattr(STDIN_FILENO, TCSANOW, &settings)
    for i in 0...app.count-1 {
      print("\u{1b}[0m\u{1b}[1;97m\u{1b}[45m    \u{1b}[0;97m\u{1b}[1;104m \(app[i].name)\u{1b}[0m\u{1b}[0K")
    }
    for i in 0...app.count-1 {
      if (app[i].name == Console.no) {
         for j in 0...app[i].sections[0].rows.count-1 {
            print("\u{1b}[0m\u{1b}[1;97m\u{1b}[45m \(app[i].sections[0].rows[j].no) ", terminator: "")
            print("\u{1b}[0;93m\u{1b}[0;104m \(app[i].sections[0].rows[j].desc)", terminator: "")
            print("\u{1b}[0m\u{1b}[0K")
         }
      }
    }
    tcsetattr(STDIN_FILENO, TCSANOW, &saved)
  }

  public static var app: [screen] = [
    screen(
       no: 1,
       name: "010-WELCOME",
       sections: [
          section(name: "Вітаємо в CHAT!",
          rows: [ row(no: 1, desc: "Реєстрація", rico: ("more","040-REG")),
                  row(no: 2, desc: "Авторизація", rico: ("more","")),
                  row(no: 3, desc: "Імпорт", rico: ("more","")), ]) ]),
    screen(
       no: 2,
       name: "040-REG",
       sections: [
          section(name: "Реєстрація",
          rows: [ row(no: 1, desc: "Позивний", rico: ("text","")),
                  row(no: 2, desc: "Пароль", rico: ("pin","")),
                  row(no: 3, desc: "Продовжити", rico: ("more","090-PROFILE")), ]) ]),
  ]
}