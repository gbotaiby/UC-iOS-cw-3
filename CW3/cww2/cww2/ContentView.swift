

var body: some View {
        Text("Hello, world!")
        ZStack{
            Circle()
                .foregroundColor(.green)
            Text("hello")
                .font(.largeTitle)
                .foregroundColor(.red)
        }
            .padding()
    }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
