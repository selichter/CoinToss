//
//  PreviewData.swift
//  CoinFlip
//
//  Created by Sarah Lichter on 2/17/24.
//

import Foundation

struct PreviewData {
    static var headsViewModel: CoinFlipViewModel {
        let viewModel = CoinFlipViewModel()
        viewModel.outcome = .heads
        return viewModel
    }
    
    static var tailsViewModel: CoinFlipViewModel {
        let viewModel = CoinFlipViewModel()
        viewModel.outcome = .tails
        return viewModel
    }
    
}
