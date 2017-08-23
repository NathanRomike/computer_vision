//
//  MobileNetLogic.swift
//  computer_vision
//
//  Created by Nathan Romike on 8/19/17.
//  Copyright © 2017 Nathan Romike. All rights reserved.
//

import Foundation
import UIKit
import CoreML
import Accelerate

let anchors: [Float] = [1.08, 1.19, 3.42, 4.41, 6.63, 11.38, 9.42, 5.11, 16.62, 10.52]

class MLModel {
    public static let inputWidth = 416
    public static let inputHeight = 416
    
    public struct Prediction {
        let classIndex: Int
        let score: Float
        let rect: CGRect
    }
    
    let model = MLModel()
    
    public init() {}
    
    public func predict(image: CVPixelBuffer) throws -> [Prediction] {
        computeBoundingBoxes(features: output.grid)
    }
    
    public func computeBoundingBoxes(features: MLMultiArray) -> [Prediction] {
        assert(features.count == 125*13*13)
        
        var predictions = [Prediction]()
        
        let blockSize: Float = 32
        let gridHeight = 13
        let gridWidth = 13
        let boxesPerCell = 5
        let numClasses = 20
    }
    
}
