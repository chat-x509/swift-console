// This file is autogenerated. Do not edit.
public class App {
  public static var screens: [Form.screen] = [
    Form.screen(
      no: 10,
      name: "010-WELCOME",
      sections: [
        Form.section(name: "Запрошення []",
          rows: [ 
            Form.row(no: 1, desc: "Реєстрація", rico: ("more","040-REG")), 
            Form.row(no: 2, desc: "Реєстрація на мобільний", rico: ("more","050-MOBILE")), 
            Form.row(no: 3, desc: "Авторизація", rico: ("more","")), 
            Form.row(no: 4, desc: "Імпорт", rico: ("more","")), 
            Form.row(no: 5, desc: "Ліцензії", rico: ("more","020-LICENSE")), 
            Form.row(no: 6, desc: "Угода користувача", rico: ("more","030-EULA")),  ]) ]),
    Form.screen(
      no: 40,
      name: "040-REG",
      sections: [
        Form.section(name: "Реєстрація",
          rows: [ 
            Form.row(no: 1, desc: "Позивний", rico: ("more","")), 
            Form.row(no: 2, desc: "Пароль", rico: ("more","")), 
            Form.row(no: 3, desc: "Продовжити", rico: ("more","090-PROFILE")),  ]) ]),
    Form.screen(
      no: 50,
      name: "050-MOBILE",
      sections: [
        Form.section(name: "Зареєструйтеся за допомогою мобільного",
          rows: [ 
            Form.row(no: 1, desc: "Повне ім'я", rico: ("more","")), 
            Form.row(no: 2, desc: "Телефон", rico: ("more","")), 
            Form.row(no: 3, desc: "Псевдонім", rico: ("more","")), 
            Form.row(no: 4, desc: "Надіслати", rico: ("more","")),  ]) ]),
    Form.screen(
      no: 51,
      name: "051-MOBILE-VERIFY",
      sections: [
        Form.section(name: "Підтвердити мобільний телефон",
          rows: [ 
            Form.row(no: 1, desc: "Телефон", rico: ("more","")), 
            Form.row(no: 2, desc: "Код", rico: ("more","")), 
            Form.row(no: 3, desc: "Введіть код", rico: ("more","")), 
            Form.row(no: 6, desc: "Телефонний дзвінок", rico: ("more","")), 
            Form.row(no: 7, desc: "Надіслати", rico: ("more","")),  ]) ]),
    Form.screen(
      no: 60,
      name: "060-MAIL",
      sections: [
        Form.section(name: "Реєстрація поштою []",
          rows: [ 
            Form.row(no: 1, desc: "Повне ім'я", rico: ("more","")), 
            Form.row(no: 2, desc: "Електронна пошта", rico: ("more","")), 
            Form.row(no: 3, desc: "Псевдонім", rico: ("more","")),  ]) ]),
    Form.screen(
      no: 61,
      name: "061-MAIL-VERIFY ",
      sections: [
        Form.section(name: "Верифікація []",
          rows: [ 
            Form.row(no: 1, desc: "Код підтверження", rico: ("more","")), 
            Form.row(no: 2, desc: "Надіслати", rico: ("more","")), 
            Form.row(no: 3, desc: "Погодитись і продовжити", rico: ("more","")),  ]) ]),
    Form.screen(
      no: 70,
      name: "070-IDENT",
      sections: [
        Form.section(name: "Реєстрація через псевдонім",
          rows: [ 
            Form.row(no: 1, desc: "Псевдонім", rico: ("more","")), 
            Form.row(no: 2, desc: "Пароль", rico: ("more","")),  ]) ]),
    Form.screen(
      no: 80,
      name: "080-IMPORT",
      sections: [
        Form.section(name: "Імпорт",
          rows: [ 
            Form.row(no: 1, desc: "Import ID", rico: ("more","")), 
            Form.row(no: 2, desc: "Enter You Code", rico: ("more","")), 
            Form.row(no: 3, desc: "Password", rico: ("more","")), 
            Form.row(no: 4, desc: "Submit", rico: ("more","")),  ]) ]),
    Form.screen(
      no: 90,
      name: "090-PROFILE",
      sections: [
        Form.section(name: "Налаштування профілю",
          rows: [ 
            Form.row(no: 1, desc: "Profile ID export", rico: ("more","")), 
            Form.row(no: 2, desc: "Відкритий ключ search", rico: ("more","")), 
            Form.row(no: 3, desc: "Налаштування ключів", rico: ("more","")), 
            Form.row(no: 4, desc: "Налаштування серверів", rico: ("more","")), 
            Form.row(no: 5, desc: "Прив'язаний номер", rico: ("more","")), 
            Form.row(no: 6, desc: "Прив'язаний E-Mail", rico: ("more","")), 
            Form.row(no: 7, desc: "Блокування паролем", rico: ("more","")), 
            Form.row(no: 8, desc: "Приватність", rico: ("more","100-PRIVACY")), 
            Form.row(no: 9, desc: "Export ID export", rico: ("more","")), 
            Form.row(no: 10, desc: "Сховище і дані", rico: ("more","")), 
            Form.row(no: 11, desc: "Видалити дані ID", rico: ("more","")), 
            Form.row(no: 12, desc: "Видалити профіль", rico: ("more","")), 
            Form.row(no: 13, desc: "Версія", rico: ("more","")), 
            Form.row(no: 14, desc: "Параметри", rico: ("more","")), 
            Form.row(no: 15, desc: "Підтримати", rico: ("more","")), 
            Form.row(no: 16, desc: "Політика конфіденційності", rico: ("more","")), 
            Form.row(no: 17, desc: "Умови використання", rico: ("more","")), 
            Form.row(no: 18, desc: "Ліцензії", rico: ("more","")), 
            Form.row(no: 19, desc: "Довідка", rico: ("more","")),  ]) ]),
    Form.screen(
      no: 100,
      name: "100-PRIVACY",
      sections: [
        Form.section(name: "Приватність",
          rows: [ 
            Form.row(no: 1, desc: "Синхронізація контактів з iOS", rico: ("more","")), 
            Form.row(no: 2, desc: "Блокування невідомих", rico: ("more","")), 
            Form.row(no: 3, desc: "Ділитися контактами з iOS", rico: ("more","")), 
            Form.row(no: 4, desc: "Заблоковані корістувачі", rico: ("more","")), 
            Form.row(no: 5, desc: "Номер телефону", rico: ("more","")), 
            Form.row(no: 6, desc: "Email", rico: ("more","")), 
            Form.row(no: 7, desc: "Видимість в загальному каталозі", rico: ("more","")), 
            Form.row(no: 8, desc: "Відвідини та стан мережі", rico: ("more","")), 
            Form.row(no: 9, desc: "Фото профілю", rico: ("more","")), 
            Form.row(no: 10, desc: "Виклики", rico: ("more","")), 
            Form.row(no: 11, desc: "Голосові повідомлення", rico: ("more","")), 
            Form.row(no: 12, desc: "Пересилання повідомлень", rico: ("more","")), 
            Form.row(no: 13, desc: "Додавання мене в групах", rico: ("more","")), 
            Form.row(no: 14, desc: "Чат", rico: ("more","")), 
            Form.row(no: 15, desc: "Звіт про прочитання", rico: ("more","")), 
            Form.row(no: 16, desc: "Індикатор набору тексту", rico: ("more","")), 
            Form.row(no: 17, desc: "Папки для чатів", rico: ("more","110-CONTACT")), 
            Form.row(no: 18, desc: "Таймер автовидалення", rico: ("more","")),  ]) ]),
    Form.screen(
      no: 110,
      name: "110-CONTACT",
      sections: [
        Form.section(name: "Контакт",
          rows: [ 
            Form.row(no: 1, desc: "Показати всі", rico: ("more","")), 
            Form.row(no: 2, desc: "Статус верифікації", rico: ("more","")), 
            Form.row(no: 3, desc: "QR cpde", rico: ("more","")), 
            Form.row(no: 4, desc: "User ID", rico: ("more","")), 
            Form.row(no: 5, desc: "Видалити контакт", rico: ("more","")), 
            Form.row(no: 6, desc: "Очистити бесіди", rico: ("more","")), 
            Form.row(no: 7, desc: "Заблокувати контакт", rico: ("more","")), 
            Form.row(no: 8, desc: "Рівень підтверження", rico: ("more","")), 
            Form.row(no: 9, desc: "Відкритий ключ", rico: ("more","")), 
            Form.row(no: 10, desc: "Контактна інформація", rico: ("more","")), 
            Form.row(no: 11, desc: "Вимкнути сповіщення", rico: ("more","")), 
            Form.row(no: 12, desc: "Зникаючі повідомлення", rico: ("more","")), 
            Form.row(no: 13, desc: "Pin Chat", rico: ("more","")), 
            Form.row(no: 14, desc: "Папки", rico: ("more","")), 
            Form.row(no: 15, desc: "Файли контакту", rico: ("more","")),  ]) ]),
    Form.screen(
      no: 120,
      name: "120-PERSONS",
      sections: [
        Form.section(name: "Контакти",
          rows: [ 
            Form.row(no: 1, desc: "Пошук", rico: ("more","")), 
            Form.row(no: 2, desc: "Новий контакт", rico: ("more","")), 
            Form.row(no: 3, desc: "Новий Топік", rico: ("more","")), 
            Form.row(no: 4, desc: "Список контактів особистих", rico: ("more","")), 
            Form.row(no: 5, desc: "Список контактів загальний", rico: ("more","")), 
            Form.row(no: 6, desc: "Списоок Топіків", rico: ("more","")), 
            Form.row(no: 7, desc: "ID Контакту", rico: ("more","")), 
            Form.row(no: 8, desc: "Статус верифікації", rico: ("more","")),  ]) ]),
    Form.screen(
      no: 130,
      name: "130-FRIEND",
      sections: [
        Form.section(name: "Новий контакт",
          rows: [  ]) ]),
    Form.screen(
      no: 140,
      name: "140-TOPICS",
      sections: [
        Form.section(name: "Топіки",
          rows: [  ]) ]),
    Form.screen(
      no: 150,
      name: "150-ROOM",
      sections: [
        Form.section(name: "Кімната топіку",
          rows: [  ]) ]),
    Form.screen(
      no: 160,
      name: "160-ROOM-SETTINGS",
      sections: [
        Form.section(name: "Налаштування топіку",
          rows: [ 
            Form.row(no: 1, desc: "Name topic", rico: ("more","")), 
            Form.row(no: 2, desc: "Public / Hidden ", rico: ("more","")), 
            Form.row(no: 3, desc: "Done", rico: ("more","")), 
            Form.row(no: 4, desc: "Settings Topic", rico: ("more","")), 
            Form.row(no: 5, desc: "Description topic", rico: ("more","")), 
            Form.row(no: 6, desc: "Members", rico: ("more","")), 
            Form.row(no: 7, desc: "Media", rico: ("more","")), 
            Form.row(no: 8, desc: "Links", rico: ("more","")), 
            Form.row(no: 9, desc: "Files", rico: ("more","")), 
            Form.row(no: 10, desc: "Manage members", rico: ("more","")), 
            Form.row(no: 11, desc: "Topic ID", rico: ("more","")), 
            Form.row(no: 12, desc: "Moderation of new subscribers", rico: ("more","")), 
            Form.row(no: 13, desc: "Зникаючі повідомлення", rico: ("more","")), 
            Form.row(no: 14, desc: "Prevent saving content", rico: ("more","")), 
            Form.row(no: 15, desc: "Clear topic", rico: ("more","")), 
            Form.row(no: 16, desc: "Export topic", rico: ("more","")), 
            Form.row(no: 17, desc: "Leave", rico: ("more","")), 
            Form.row(no: 18, desc: "Delete topic", rico: ("more","")), 
            Form.row(no: 19, desc: "Публікація тільки Publisher", rico: ("more","")), 
            Form.row(no: 20, desc: "Pin Topic", rico: ("more","")), 
            Form.row(no: 21, desc: "Folder Topic", rico: ("more","")),  ]) ]),
    Form.screen(
      no: 170,
      name: "170-CHATS",
      sections: [
        Form.section(name: "Чати",
          rows: [ 
            Form.row(no: 1, desc: "Icon profile", rico: ("more","")), 
            Form.row(no: 2, desc: "New message", rico: ("more","")), 
            Form.row(no: 3, desc: "Пошук", rico: ("more","")), 
            Form.row(no: 4, desc: "Все", rico: ("more","")), 
            Form.row(no: 5, desc: "Вибране", rico: ("more","")), 
            Form.row(no: 6, desc: "Запити", rico: ("more","")), 
            Form.row(no: 7, desc: "Топіки", rico: ("more","")), 
            Form.row(no: 8, desc: "Fixed chats", rico: ("more","")), 
            Form.row(no: 9, desc: "Recent chats", rico: ("more","")),  ]) ]),
    Form.screen(
      no: 180,
      name: "180-MESSAGES",
      sections: [
        Form.section(name: "Чат",
          rows: [ 
            Form.row(no: 1, desc: "Call", rico: ("more","")), 
            Form.row(no: 2, desc: "Video", rico: ("more","")), 
            Form.row(no: 3, desc: "Date", rico: ("more","")), 
            Form.row(no: 4, desc: "Add file", rico: ("more","")), 
            Form.row(no: 5, desc: "New message", rico: ("more","")), 
            Form.row(no: 7, desc: "Send", rico: ("more","")),  ]) ]),
    Form.screen(
      no: 190,
      name: "190-FOLDERS",
      sections: [
        Form.section(name: "Папки",
          rows: [ 
            Form.row(no: 1, desc: "Створити папку", rico: ("more","")), 
            Form.row(no: 2, desc: "Все (системна папка)", rico: ("more","")), 
            Form.row(no: 3, desc: "Топіки (системна папка)", rico: ("more","")), 
            Form.row(no: 4, desc: "Запити (системна папка)", rico: ("more","")),  ]) ]),
    Form.screen(
      no: 200,
      name: "200-SYSTEM",
      sections: [
        Form.section(name: "Системні параметри",
          rows: [ 
            Form.row(no: 1, desc: "Геопозиція", rico: ("more","")), 
            Form.row(no: 2, desc: "Контакти", rico: ("more","")), 
            Form.row(no: 3, desc: "Фото", rico: ("more","")), 
            Form.row(no: 4, desc: "Локальна мережа", rico: ("more","")), 
            Form.row(no: 5, desc: "Мікрофон", rico: ("more","")), 
            Form.row(no: 6, desc: "Розпізнавання мовлення", rico: ("more","")), 
            Form.row(no: 7, desc: "Камера", rico: ("more","")), 
            Form.row(no: 8, desc: "Сповішення", rico: ("more","")), 
            Form.row(no: 9, desc: "Стільникові дані", rico: ("more","")), 
            Form.row(no: 10, desc: "Пріорітетна мова", rico: ("more","")),  ]) ]),
    Form.screen(
      no: 210,
      name: "210-EXPORT",
      sections: [
        Form.section(name: "Експорт профілю",
          rows: [ 
            Form.row(no: 1, desc: "Export ID", rico: ("more","")), 
            Form.row(no: 2, desc: "Done", rico: ("more","")), 
            Form.row(no: 3, desc: "Password", rico: ("more","")), 
            Form.row(no: 4, desc: "Confirm Passworw", rico: ("more","")), 
            Form.row(no: 5, desc: "Submit", rico: ("more","")), 
            Form.row(no: 6, desc: "Save or Forvard", rico: ("more","")), 
            Form.row(no: 7, desc: "QR code", rico: ("more","")), 
            Form.row(no: 8, desc: "Text code", rico: ("more","")),  ]) ]),
    Form.screen(
      no: 220,
      name: "220-STORE",
      sections: [
        Form.section(name: "Сховище і дані",
          rows: [ 
            Form.row(no: 1, desc: "Керування сховищем", rico: ("more","")), 
            Form.row(no: 2, desc: "Налаштування папок", rico: ("more","")), 
            Form.row(no: 3, desc: "Медіа", rico: ("more","")), 
            Form.row(no: 4, desc: "Зберігання до застосунку Фото", rico: ("more","")),  ]) ]),
    Form.screen(
      no: 230,
      name: "230-NOTIFICATIONS",
      sections: [
        Form.section(name: "Сповіщення та звуки",
          rows: [ 
            Form.row(no: 1, desc: "Звук", rico: ("more","")), 
            Form.row(no: 2, desc: "Вібрація", rico: ("more","")), 
            Form.row(no: 3, desc: "Попередній перегляд", rico: ("more","")), 
            Form.row(no: 4, desc: "Вибір сигналу", rico: ("more","")),  ]) ]),
    Form.screen(
      no: 240,
      name: "240-KEYS",
      sections: [
        Form.section(name: "Сертифікати",
          rows: [ 
            Form.row(no: 1, desc: "Перелік сертифікатів", rico: ("more","")), 
            Form.row(no: 2, desc: "Перегляд сертифікату", rico: ("more","")), 
            Form.row(no: 3, desc: "Активація сертифікату", rico: ("more","")), 
            Form.row(no: 4, desc: "Імпортувати", rico: ("more","")), 
            Form.row(no: 5, desc: "Зненерувати", rico: ("more","")), 
            Form.row(no: 6, desc: "Доступні шифри", rico: ("more","")), 
            Form.row(no: 7, desc: "Перелік шифрів", rico: ("more","")), 
            Form.row(no: 8, desc: "Активація шифру", rico: ("more","")),  ]) ]),
    Form.screen(
      no: 250,
      name: "250-CERT-ENROLL",
      sections: [
        Form.section(name: "Згенерувати сертифікат",
          rows: [ 
            Form.row(no: 1, desc: "Призначення", rico: ("more","")), 
            Form.row(no: 2, desc: "Протокол обміну", rico: ("more","")), 
            Form.row(no: 3, desc: "Ім’я", rico: ("more","")), 
            Form.row(no: 4, desc: "По-батькові", rico: ("more","")), 
            Form.row(no: 5, desc: "Прізвище", rico: ("more","")), 
            Form.row(no: 6, desc: "Псевдонім", rico: ("more","")), 
            Form.row(no: 7, desc: "Компанія", rico: ("more","")), 
            Form.row(no: 8, desc: "Відділ", rico: ("more","")), 
            Form.row(no: 9, desc: "Пошта", rico: ("more","")), 
            Form.row(no: 10, desc: "Телефон", rico: ("more","")), 
            Form.row(no: 11, desc: "Створити PKCS-10 запит", rico: ("more","")),  ]) ]),
    Form.screen(
      no: 260,
      name: "260-CERT",
      sections: [
        Form.section(name: "Сертифікатне представлення",
          rows: [ 
            Form.row(no: 1, desc: "Перегляд сертифікату", rico: ("more","")), 
            Form.row(no: 2, desc: "Версія сертифікату", rico: ("more","")), 
            Form.row(no: 3, desc: "Серійний номер", rico: ("more","")), 
            Form.row(no: 4, desc: "Публічний ключ", rico: ("more","")), 
            Form.row(no: 5, desc: "Дійсний до", rico: ("more","")), 
            Form.row(no: 6, desc: "Протокол обміну", rico: ("more","")), 
            Form.row(no: 7, desc: "Експортувати", rico: ("more","")), 
            Form.row(no: 8, desc: "Відкликати", rico: ("more","")),  ]) ]),
    Form.screen(
      no: 270,
      name: "270-SERVERS",
      sections: [
        Form.section(name: "Сервери",
          rows: [ 
            Form.row(no: 1, desc: "Активація серверів", rico: ("more","")), 
            Form.row(no: 2, desc: "Додати сервер", rico: ("more","")),  ]) ]),
    Form.screen(
      no: 280,
      name: "280-NODE",
      sections: [
        Form.section(name: "Новий сервер",
          rows: [  ]) ]),
   ]
}
