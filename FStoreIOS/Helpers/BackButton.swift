//
//  BackButton.swift
//  FStoreIOS
//
//  Created by Priya Ranganathan on 06/10/22.
//

import SwiftUI

struct BackButton: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        Button(action: {
            self.mode.wrappedValue.dismiss()
        }, label: {
            Image(systemName: "arrow.backward")
        }).foregroundColor(.black)
    }
}

struct BackButton_Previews: PreviewProvider {
    static var previews: some View {
        BackButton()
    }
}
