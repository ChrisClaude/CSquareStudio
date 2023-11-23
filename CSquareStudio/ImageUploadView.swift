//
//  ImageUploadView.swift
//  CSquareStudio
//
//  Created by Claude De-Tchambila on 11/23/23.
//

import SwiftUI

struct ImageUploadView: View {
    @State private var isImagePickerPresented: Bool = false
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                
                Image(systemName: "photo.on.rectangle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    .foregroundColor(Color.red)
                    .padding()
                
                Text("Tap the button below to upload a picture")
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Spacer()
                
                Button(action: {
                    // Trigger image upload logic
                    self.isImagePickerPresented.toggle()
                }) {
                    Text("Upload Picture")
                        .foregroundColor(Color.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 10).foregroundColor(Color.red))
                        .padding(.horizontal, 20)
                }
                .padding(.bottom, 50)
                .sheet(isPresented: $isImagePickerPresented) {
                    // Present image picker here
                    // You can use UIImagePickerController or your custom image picker logic
                    Text("Image Picker Goes Here")
                }
            }
        }
    }
}

#Preview {
    ImageUploadView()
}
