import Foundation

class Action0: WindowCalculation {
    
    override func calculateRect(_ window: Window, lastAction: RectangleAction?, visibleFrameOfScreen: CGRect, action: WindowAction) -> RectResult {
        print("action0")
        var oneQuarterRect = visibleFrameOfScreen
        oneQuarterRect.size.width = visibleFrameOfScreen.width
        oneQuarterRect.size.height = visibleFrameOfScreen.height
        oneQuarterRect.origin.x = visibleFrameOfScreen.minX
        oneQuarterRect.origin.y = visibleFrameOfScreen.minY
        return RectResult(oneQuarterRect)
    }
}

