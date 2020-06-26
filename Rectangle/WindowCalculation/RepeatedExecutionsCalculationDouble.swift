import Foundation

protocol RepeatedExecutionsCalculationDouble {
    
    func calculateFirstRect(_ window: Window, lastAction: RectangleAction?, visibleFrameOfScreen: CGRect, action: WindowAction) -> RectResult
    
    func calculateSecondRect(_ window: Window, lastAction: RectangleAction?, visibleFrameOfScreen: CGRect, action: WindowAction) -> RectResult

}

extension RepeatedExecutionsCalculationDouble {
    
    func calculateRepeatedRect(_ window: Window, lastAction: RectangleAction?, visibleFrameOfScreen: CGRect, action: WindowAction) -> RectResult {
        
        guard let count = lastAction?.count,
            lastAction?.action == action
        else {
            print("GUARD")
            return calculateFirstRect(window, lastAction: lastAction, visibleFrameOfScreen: visibleFrameOfScreen, action: action)
        }
                
        let position = count % 2
        print("position %d count %d", position, count)
        switch (position) {
        case 1:
            return calculateSecondRect(window, lastAction: lastAction, visibleFrameOfScreen: visibleFrameOfScreen, action: action)
        default:
            return calculateFirstRect(window, lastAction: lastAction, visibleFrameOfScreen: visibleFrameOfScreen, action: action)
        }
        
    }
    
}
