import Foundation

class Action8: WindowCalculation, RepeatedExecutionsCalculationDouble {
    
    override func calculateRect(_ window: Window, lastAction: RectangleAction?, visibleFrameOfScreen: CGRect, action: WindowAction) -> RectResult {
        return calculateRepeatedRect(window, lastAction: lastAction, visibleFrameOfScreen: visibleFrameOfScreen, action: action)
    }
        
    func calculateFirstRect(_ window: Window, lastAction: RectangleAction?, visibleFrameOfScreen: CGRect, action: WindowAction) -> RectResult {
        var oneQuarterRect = visibleFrameOfScreen
        oneQuarterRect.size.width = ceil((1-2*0.26) * visibleFrameOfScreen.width)
        oneQuarterRect.size.height = ceil(2.0/3.0 * visibleFrameOfScreen.height)
        oneQuarterRect.origin.x = visibleFrameOfScreen.minX + floor((0.26) * visibleFrameOfScreen.width)
        oneQuarterRect.origin.y = visibleFrameOfScreen.minY + floor(1.0/3.0 * visibleFrameOfScreen.height)
        return RectResult(oneQuarterRect)
    }
    
    func calculateSecondRect(_ window: Window, lastAction: RectangleAction?, visibleFrameOfScreen: CGRect, action: WindowAction) -> RectResult {
        var oneQuarterRect = visibleFrameOfScreen
        oneQuarterRect.size.width = ceil((1-2*0.26) * visibleFrameOfScreen.width)
        oneQuarterRect.size.height = ceil(1.0/3.0 * visibleFrameOfScreen.height)
        oneQuarterRect.origin.x = visibleFrameOfScreen.minX + floor((0.26) * visibleFrameOfScreen.width)
        oneQuarterRect.origin.y = visibleFrameOfScreen.minY + floor(2.0/3.0 * visibleFrameOfScreen.height)
        return RectResult(oneQuarterRect)
    }
    
}

