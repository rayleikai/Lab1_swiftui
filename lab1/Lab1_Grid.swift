//
//  Lab1_Grid.swift
//  lab1
//
//  Created by YuTech x CBIC on 2021/3/2.
//

import SwiftUI

struct Lab1_Grid<Item, ItemView>: View where Item: Identifiable, ItemView: View {
    var items: [Item]
    var viewForItem: (Item) -> ItemView
    
    init(_ items: [Item], viewForItem: @escaping (Item) -> ItemView) {
        self.items = items
        self.viewForItem = viewForItem
    }
    
    var body: some View {
        GeometryReader { geometry in
            self.body(for: Lab1_GridLayout(itemCount: self.items.count, in: geometry.size))
        }
    }
    
    func body(for layout: Lab1_GridLayout) -> some View {
        ForEach(items) { item in
            self.body(for: item, in: layout)
        }
    }
    
    func body(for item: Item, in layout: Lab1_GridLayout) -> some View {
        let index = self.index(of: item)
        return viewForItem(item)
            .frame(width: layout.itemSize.width, height: layout.itemSize.height)
            .position(layout.location(ofItemAt: index))
    }
    
}

extension Array where Element: Identifiable {
    func index(of item: Element) -> Int {
        for index in 0..<self.count {
            if self[index].id == item.id {
                return index
            }
        }
        return 0 //TODO: bogus!
    }
}
