import Foundation

class Action7: WindowCalculation, RepeatedExecutionsCalculationDouble {
    
    override func calculateRect(_ window: Window, lastAction: RectangleAction?, visibleFrameOfScreen: CGRect, action: WindowAction) -> RectResult {
        return calculateRepeatedRect(window, lastAction: lastAction, visibleFrameOfScreen: visibleFrameOfScreen, action: action)
    }
        
    func calculateFirstRect(_ window: Window, lastAction: RectangleAction?, visibleFrameOfScreen: CGRect, action: WindowAction) -> RectResult {
        var oneQuarterRect = visibleFrameOfScreen
        oneQuarterRect.size.width = floor(0.26 * visibleFrameOfScreen.width)
        oneQuarterRect.size.height = floor(1.0/3.0 * visibleFrameOfScreen.height) + (visibleFrameOfScreen.height.truncatingRemainder(dividingBy: 3.0))
        oneQuarterRect.origin.y = visibleFrameOfScreen.minY + floor(2.0/3.0 * visibleFrameOfScreen.height)
        return RectResult(oneQuarterRect)
    }
    
    func calculateSecondRect(_ window: Window, lastAction: RectangleAction?, visibleFrameOfScreen: CGRect, action: WindowAction) -> RectResult {
        var oneQuarterRect = visibleFrameOfScreen
        oneQuarterRect.size.width = floor(0.26 * visibleFrameOfScreen.width)
        oneQuarterRect.size.height = floor(2.0/3.0 * visibleFrameOfScreen.height) + (visibleFrameOfScreen.height.truncatingRemainder(dividingBy: 3.0))
        oneQuarterRect.origin.y = visibleFrameOfScreen.minY + floor(1.0/3.0 * visibleFrameOfScreen.height)
        return RectResult(oneQuarterRect)
    }
    
}

