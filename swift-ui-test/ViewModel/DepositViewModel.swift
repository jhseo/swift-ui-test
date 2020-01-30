//
//  DepositViewModel.swift
//  swift-ui-test
//
//  Created by jhseo on 2020/01/30.
//  Copyright © 2020 jhseo. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

final class DepositViewModel: ObservableObject {
    let didChange = PassthroughSubject<DepositViewModel, Never>()

    init() {
        fetchWalletInfo()
    }

    var walletInfo: WalletModel! {
        didSet {
            didChange.send(self)
        }
    }

    private func fetchWalletInfo() {
        self.walletInfo = WalletModel(userId: "Tori", publicAddress: "0x1B09f646fAE61556Da2C4590da28079F3Cc4542D", tokenAmount: 1234567)
    }
}
