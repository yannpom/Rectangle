import Foundation

class Action5: WindowCalculation {
    
    override func calculateRect(_ window: Window, lastAction: RectangleAction?, visibleFrameOfScreen: CGRect, action: WindowAction) -> RectResult {
        print("action5")
        var oneQuarterRect = visibleFrameOfScreen
        oneQuarterRect.size.width = floor((1-2*0.26) * visibleFrameOfScreen.width)
        oneQuarterRect.size.height = visibleFrameOfScreen.height
        oneQuarterRect.origin.x = visibleFrameOfScreen.minX + floor((0.26) * visibleFrameOfScreen.width)
        oneQuarterRect.origin.y = visibleFrameOfScreen.minY
        return RectResult(oneQuarterRect)
    }
}

