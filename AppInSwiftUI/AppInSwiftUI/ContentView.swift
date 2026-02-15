//
//  ContentView.swift
//  SwiftUISample
//
//  Created by Mohit  on 26/01/26.
//

import SwiftUI

struct ContentView: View {
    @State private var password = "1234"
    @State private var someText = "initial text"
    var body: some View {
        SecureField("Enter a password", text : $password)
            .padding()
        Text("Password Entered : \(password)")
            .italic()
        TextField("Enter some text", text : $someText)
            .padding()
        Text(someText)
            .font(.largeTitle)
            .underline()
        Text("Changing text color and make it bold")
            .foregroundStyle(.blue)
            .bold()
        Text("Use kerning to change space between characters in the text")
            .kerning(7)
        Text("Chaning baseline offset")
            .baselineOffset(100)
        Text("Strike through")
            .strikethrough()
        Text("This is a multiline text implemented in SwiftUI. The trailing modifier was added to the text. This text also implements multiple modifiers")
            .background(.yellow)
            .multilineTextAlignment(.trailing)
            .lineSpacing(10)
    }
}

#Preview {
    ContentView()
}
