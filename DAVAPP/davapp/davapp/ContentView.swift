import SwiftUI

struct ContentView: View {
    @State private var isLogPageShown = false

    var body: some View {
        NavigationStack {
            ZStack {
                Image("BacKIMGleft") // Убедитесь, что у вас есть этот ресурс в Assets
                    .resizable()
                    .scaledToFill()
                VStack(spacing: 5.0) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 13)
                            .fill(Color.clear)
                        
                        RoundedRectangle(cornerRadius: 13)
                            .strokeBorder(Color.white, lineWidth: 6)
                        
                        Text("Sign Up")
                            .font(.custom("Rubik Bold Italic", size: 36))
                            .foregroundColor(Color.orange)
                            .tracking(-0.3)
                    }
                    .frame(width: 233, height: 57)
                    
                    Button("Already have an account? Login") {
                        isLogPageShown = true
                    }
                    .font(.custom("Roboto Light", size: 14))
                    .foregroundColor(Color.orange)
                }
                .padding(.top, 180.0)
                .sheet(isPresented: $isLogPageShown) {
                    LogPage()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
