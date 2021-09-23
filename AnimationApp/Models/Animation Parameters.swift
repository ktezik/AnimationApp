//
//  Animation Parameters.swift
//  AnimationApp
//
//  Created by Иван Гришин on 23.09.2021.
//

import Foundation

struct AnimationView {
    var presetLabel: String
    var animation: String
    var curveLabel: String
    var forceLabel: Float
    var durationLabel: Float
    var delayLabel: Float
    static func getAnimation() -> [AnimationView] {
        [
            AnimationView(
                presetLabel: "Flash",
                animation: "flash",
                curveLabel: "spring",
                forceLabel: 0.5,
                durationLabel: 1,
                delayLabel: 0.70
            ),
            AnimationView(
                presetLabel: "FlipX",
                animation: "flipX",
                curveLabel: "linear",
                forceLabel: 1,
                durationLabel: 1.43,
                delayLabel: 0.99
            ),
            AnimationView(
                presetLabel: "ZoomIn",
                animation: "zoomIn",
                curveLabel: "easeIn",
                forceLabel: 0.2,
                durationLabel: 0.87,
                delayLabel: 0.15
            ),
            AnimationView(
                presetLabel: "SqueezeDown",
                animation: "squeezeDown",
                curveLabel: "easeOut",
                forceLabel: 2,
                durationLabel: 1.2,
                delayLabel: 0.22
            ),
            AnimationView(
                presetLabel: "SlideLeft",
                animation: "slideLeft",
                curveLabel: "easeInOut",
                forceLabel: 1.3,
                durationLabel: 1,
                delayLabel: 0.46
            ),
        ]
    }
}
