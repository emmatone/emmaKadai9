//
//  SheetView.swift
//  emmaKadai9
//
//  Created by Emma
//

import SwiftUI

struct SheetView: View {
    @Binding var isSheetPresented: Bool
    @Binding var selectedPrefecture: String

    var prefectures: [String] = [
        "東京都",
        "神奈川県",
        "千葉県",
        "埼玉県"
    ]

    var body: some View {
        ZStack{
            Color.red
                .ignoresSafeArea([.all])
            VStack(alignment: .leading){
                Button("Cancel"){
                    isSheetPresented = false
                }
                .tint(.white)
                .padding(20)
                List(prefectures, id:\.self) { prefecture in
                    Button("\(prefecture)"){
                        selectedPrefecture = prefecture
                        isSheetPresented = false
                    }
                    .padding(8)
                }
            }
        }
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView(isSheetPresented: .constant(true),
                  selectedPrefecture: .constant(""))
    }
}
