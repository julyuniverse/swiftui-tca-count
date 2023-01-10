//
//  SwiftUIView.swift
//  Count
//
//  Created by July universe on 2023/01/10.
//

import SwiftUI
import ComposableArchitecture

struct CountView: View {
    let store: StoreOf<Count>
    
    var body: some View {
        WithViewStore(self.store) { viewStore in
            HStack {
                Button {
                    viewStore.send(.decrement)
                } label: {
                    Text("-")
                }
                Text("count: \(viewStore.count)")
                Button {
                    viewStore.send(.increment)
                } label: {
                    Text("+")
                }
            }
        }
    }
}

struct CountView_Previews: PreviewProvider {
    static var previews: some View {
        CountView(store: Store(initialState: Count.State(), reducer: Count()))
    }
}
