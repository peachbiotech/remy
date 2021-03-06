//
//  SleepStageType.swift
//  Remy
//
//  Created by Jia Chun Xie on 12/30/21.
//

import Foundation

struct SleepStage: Codable{
    var stage: SleepStageType
}

enum SleepStageType: Int, Codable {
    case WAKE = 0
    case NREM1
    case NREM2
    case NREM3
    case REM
    case END // For the last hypnogram segment
}
