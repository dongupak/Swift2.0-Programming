// Playground - Swift 튜토리얼 21 클로저강한참조

import Cocoa

class HTMLElement {
    let name : String
    let text : String?
    
    lazy var asHTML : () -> String = {
//        [unowned self] in
        if let text = self.text {
            return "<\(self.name)>\(text) </\(self.name)>"
        }
        else {
            return "<\(self.name) />"
        }
    }
    
    init(name:String, text: String? = nil) {
        self.name = name
        self.text = text
    }
    
    deinit {
        print("\(name) is being deinitialized")
    }
}

var paragraph: HTMLElement? = HTMLElement(name: "p", text: "hello world")
paragraph!.asHTML()

paragraph = nil
