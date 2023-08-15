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
    for i in 0...app.count-1 {
      print("\u{27}[0m\u{27}[1;97m\u{27}[45m    \u{27}[0;97m\u{27}[1;104m \(app[i].name)\n\u{27}[0m\u{27}[0K")
    }
  }


//    :lists.map(fn CHAT.row(no: no, desc: desc, rico: _rico) ->
//        :io.format '\e[0m\e[1;97m\e[45m ~2.. B \e[0;93m\e[0;104m ~40.. ts ~n\e[0m\e[0K', [no,desc]
//  end, rows)

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