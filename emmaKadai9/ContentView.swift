//
//  ContentView.swift
//  emmaKadai9
//
//  Created by Emma
//

import SwiftUI

struct ContentView: View {
    @State private var isSheetPresented: Bool = false
    @State private var selectedPrefecture: String = "未選択"

    var body: some View {
        NavigationStack{
            ZStack{
                Color.red
                    .ignoresSafeArea([.all])
                Color("KadaiBodyColor")
                    .ignoresSafeArea(edges: [.horizontal, .bottom])
                VStack{
                    HStack(spacing: 10) {
                        Text("都道府県")
                            .font(.headline)
                        Text("\(selectedPrefecture)")
                            .frame(width: 100)
                            .padding(10)
                            .border(Color("AccentColor"))
                        Button("選択"){
                            isSheetPresented = true
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(.red)
                    }
                    .padding(40)
                Spacer()
                }
                .sheet(isPresented: $isSheetPresented){
                    SheetView(isSheetPresented: $isSheetPresented,
                              selectedPrefecture: $selectedPrefecture)
                }
                .navigationBarTitleDisplayMode(.inline)
                .toolbar{
                    ToolbarItem(placement: .principal){
                        VStack(alignment: .leading){
                            Text("課題9")
                                .font(.headline)
                            Text("Modal画面で都道府県を選択するアプリ")
                                .font(.subheadline)
                        }
                        .foregroundColor(.white)
                        .padding(.bottom)
                    }
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
