import SwiftUI

struct LogPage: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isPasswordVisible: Bool = false

    var body: some View {
        ZStack {
            // Фоновое изображение
            Image("backimg")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)

            VStack {
                Spacer()
                
                // Иконка почты
                Image(systemName: "envelope.fill") // Пример использования SF Symbols. Замените на имя вашей иконки почты, если она есть в Assets
                    .frame(width: 29, height: 28)
                    .foregroundColor(.white)
                    .padding()

                // Поле для ввода email
                TextField("Email", text: $email)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(5)
                    .padding(.horizontal)

                // Поле для ввода пароля
                HStack {
                    if isPasswordVisible {
                        TextField("Password", text: $password)
                    } else {
                        SecureField("Password", text: $password)
                    }
                    Button(action: {
                        isPasswordVisible.toggle()
                    }) {
                        Image(systemName: isPasswordVisible ? "eye.fill" : "eye.slash.fill")
                            .foregroundColor(.gray)
                    }
                }
                .padding()
                .background(Color.white)
                .cornerRadius(5)
                .padding(.horizontal)

                // Кнопка "Continue"
                Button("Continue") {
                    // Действие кнопки
                }
                .font(.custom("Roboto Bold", size: 16))
                .foregroundColor(.white)
                .frame(width: 295, height: 56)
                .background(Color(red: 0.933, green: 0.494, blue: 0.384))
                .cornerRadius(15)
                .padding()

                // Кнопка "Назад"
                Button(action: {
                    // Действие кнопки назад
                }) {
                    Image(systemName: "arrow.backward") // Пример использования SF Symbols
                        .frame(width: 52, height: 52)
                        .background(Color.white)
                        .clipShape(Circle())
                }
                
                Spacer()
            }
        }
    }
}

struct LogPage_Previews: PreviewProvider {
    static var previews: some View {
        LogPage()
    }
}
