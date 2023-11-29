import SwiftUI

struct TestScreen: View {
    @State private var showAlert = false
    
    var body: some View {
        NavigationView {
            Text("Your content goes here")
                .navigationBarTitle("Title", displayMode: .inline)
                .toolbar {
                    ToolbarItemGroup(placement: .bottomBar) {
                        Spacer()
                        
                        Button(action: {
                            // Action for the button
                            self.showAlert.toggle()
                        }) {
                            Image(systemName: "gear")
                        }
                        .alert(isPresented: $showAlert) {
                            Alert(title: Text("Alert"), message: Text("Button tapped!"), dismissButton: .default(Text("OK")))
                        }
                        
                        Spacer()
                    }
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TestScreen()
    }
}

