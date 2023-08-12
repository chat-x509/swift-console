import Darwin.libc

func run() {
     print(": CHAT 💬 X.509 © SYNRC")
     print(">", terminator: "")
     while let line = readLine() {
        print(": \(line)")
        print(">", terminator: "")
     }
     print("\nBye!")
}

run()
