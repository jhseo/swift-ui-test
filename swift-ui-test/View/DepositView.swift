//
//  DepositView.swift
//  swift-ui-test
//
//  Created by jhseo on 2020/01/30.
//  Copyright © 2020 jhseo. All rights reserved.
//

import SwiftUI
import Combine

struct DepositView: View {
    @ObservedObject var viewModel = DepositViewModel()

    var body: some View {
        VStack(spacing: 20.0) {
            walletInfo
            copyButton
            currentPxlText
            separator
            VStack(spacing: 40.0) {
                depositInfoText
                cautionText
            }
        }
    }

    var walletInfo: some View {
        VStack(spacing: 8.0) {
            HStack(spacing: 0) {
                Text("@\(viewModel.walletInfo.userId)")
                    .font(.system(size: 24))
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 51/255, green: 51/255, blue: 51/255, opacity: 1.0))
                Text("의 지갑주소")
                    .font(.system(size: 24))
                    .foregroundColor(Color(red: 51/255, green: 51/255, blue: 51/255, opacity: 1.0))
            }
            Text(viewModel.walletInfo.publicAddress)
                .font(.system(size: 14))
                .foregroundColor(Color(red: 191/255, green: 191/255, blue: 199/255, opacity: 1.0))
        }
        .padding(.horizontal, 20.0)
    }

    var copyButton: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
            Text("주소 복사")
                .font(.system(size: 18))
                .fontWeight(.bold)
                .foregroundColor(Color.white)
        }
        .frame(minWidth: 0, maxWidth: .infinity)
        .frame(height: 53.0)
        .background(Color(red: 51/255, green: 51/255, blue: 51/255, opacity: 1.0))
        .cornerRadius(8)
        .padding(.horizontal, 20.0)
    }

    var currentPxlText: some View {
        HStack {
            Text("\(viewModel.walletInfo.tokenAmount) Klay")
                .font(.system(size: 14))
                .fontWeight(.bold)
                .foregroundColor(Color(red: 26/255, green: 146/255, blue: 255/255, opacity: 1.0))
            Text("보유 중")
                .font(.system(size: 14))
                .foregroundColor(Color(red: 26/255, green: 146/255, blue: 255/255, opacity: 1.0))
        }
        .padding(.horizontal, 20.0)
    }

    var separator: some View {
        ZStack {
            Color(red: 191/255, green: 191/255, blue: 199/255, opacity: 1.0)
        }
        .frame(height: 0.33)
    }

    var depositInfoText: some View {
        VStack(alignment: .leading, spacing: 8.0) {
            Text("Klaytn 계정으로 Token을 입금하는 방법")
                .font(.system(size: 14))
                .fontWeight(.bold)
                .foregroundColor(Color(red: 51/255, green: 51/255, blue: 51/255, opacity: 1.0))
            Text("- Klaytn 네트워크 기반 Token 출금이 가능한 거래소에서 이 지갑 주소로 송금")
                .font(.system(size: 12))
                .foregroundColor(Color(red: 51/255, green: 51/255, blue: 51/255, opacity: 1.0))
            Text("- 외부 Klaytn 지갑에 보유한 Token을 이 지갑 주소로 송금")
                .font(.system(size: 12))
                .foregroundColor(Color(red: 51/255, green: 51/255, blue: 51/255, opacity: 1.0))
        }
        .padding(.horizontal, 20.0)
        .fixedSize(horizontal: false, vertical: true)
    }

    var cautionText: some View {
        VStack(alignment: .leading, spacing: 8.0) {
            Text("주의사항")
                .font(.system(size: 14))
                .fontWeight(.bold)
                .foregroundColor(Color(red: 51/255, green: 51/255, blue: 51/255, opacity: 1.0))
            Text("- 해당 주소는 Klaytn 네트워크 상에서 동작하는 지갑 주소입니다. 이더리움 네트워크 상의 토큰은 주소로 다른 암호화폐 입금 시 발생하는 오류 손실은 복구해드리지 않습니다.")
                .font(.system(size: 12))
                .foregroundColor(Color(red: 51/255, green: 51/255, blue: 51/255, opacity: 1.0))
            Text("- 해당 지갑 주소로 다른 암호 화폐 입금 시 발생하는 오류 및 손실은 복구해 드리지 않습니다.")
                .font(.system(size: 12))
                .foregroundColor(Color(red: 51/255, green: 51/255, blue: 51/255, opacity: 1.0))
        }
        .padding(.horizontal, 20.0)
        .fixedSize(horizontal: false, vertical: true)
    }
}

struct DepositView_Previews: PreviewProvider {
    static var previews: some View {
        DepositView()
    }
}
