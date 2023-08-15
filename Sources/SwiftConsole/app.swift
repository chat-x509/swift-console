
public class App {
  public static var screens: [Form.screen] = [
    Form.screen(
       no: 1,
       name: "010-WELCOME",
       sections: [
          Form.section(name: "Вітаємо в CHAT!",
          rows: [ Form.row(no: 1, desc: "Реєстрація", rico: ("more","040-REG")),
                  Form.row(no: 2, desc: "Авторизація", rico: ("more","")),
                  Form.row(no: 3, desc: "Імпорт", rico: ("more","")), ]) ]),
    Form.screen(
       no: 2,
       name: "040-REG",
       sections: [
          Form.section(name: "Реєстрація",
          rows: [ Form.row(no: 1, desc: "Позивний", rico: ("text","")),
                  Form.row(no: 2, desc: "Пароль", rico: ("pin","")),
                  Form.row(no: 3, desc: "Продовжити", rico: ("more","090-PROFILE")), ]) ]),
  ]

}

