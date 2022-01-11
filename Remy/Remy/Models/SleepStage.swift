//
//  SleepStage.swift
//  Remy
//
//  Created by Jia Chun Xie on 12/30/21.
//

import Foundation

enum SleepStage: Codable {
    case WAKE
    case NREM1
    case NREM2
    case NREM3
    case REM
    case END // For the last hypnogram segment
}
