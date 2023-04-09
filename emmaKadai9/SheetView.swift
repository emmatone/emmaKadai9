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
        NavigationStack{
            VStack(alignment: .leading){
                List(prefectures, id:\.self) { prefecture in
                    Button("\(prefecture)"){
                        selectedPrefecture = prefecture
                        isSheetPresented = false
                    }
                    .padding(8)
                }
            }
            .toolbar{
                ToolbarItem(placement: .cancellationAction){
                    Button("Cancel"){
                        isSheetPresented = false
                    }
                    .foregroundColor(.white)
                }
            }
            .toolbarBackground(Color.red, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
        }
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView(isSheetPresented: .constant(true),
                  selectedPrefecture: .constant(""))
    }
}
