//
//  DefinedView.swift
//  CyberCurrency
//
//  Created by Lingxi Li on 12/21/20.
//

import Foundation
import SwiftUI

/// 界面视图容器接口 @ DefinedElements
protocol DefinedView : View {
    // TODO:
}

/**
 
 */
extension View {
    /**
     
     */
    func definedFullSize(_ area: FullSizeArea = .all, priorAlign: Alignment = .center) -> some View {
        if (area == .horizontal) {
            return self.frame(maxWidth: .infinity, alignment: priorAlign)
        }
        if (area == .vertical) {
            return self.frame(maxHeight: .infinity, alignment: priorAlign)
        }
        return self.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: priorAlign)
    }
}

/**
 
 */
enum FullSizeArea {
    case horizontal
    case vertical
    case all
}

extension View {
    /**
     
     */
    func definedBottomBar(_ status: Bool = true) -> some View {
        return self.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
    }
}
