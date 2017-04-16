// https://github.com/Quick/Quick

import Quick
import Nimble
import DYCornerBanner

class TableOfContentsSpec: QuickSpec {
    override func spec() {
        
//        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 400, height: 200))
//        
//        self.cornerBannerBottomRight = DYCornerBanner(frame: CGRect(x: 240, y: 110, width: 160, height: 90))
//        
//        self.imageView?.image = UIImage(named:"IMG_0002.jpg")
//        self.imageView?.addSubview(self.cornerBannerBottomRight!)
//        
        context("these will pass") {
            
            it("can do maths") {
                expect(23) == 23
            }
            
            it("can read") {
                expect("🐮") == "🐮"
            }
            
            it("will eventually pass") {
                var time = "passing"
                
                DispatchQueue.main.async {
                    time = "done"
                }
                
                waitUntil { done in
                    Thread.sleep(forTimeInterval: 0.5)
                    expect(time) == "done"
                    
                    done()
                }
            }
        }
        
//        describe("these will fail") {
//
////            it("can do maths") {
////                expect(1) == 2
////            }
//
////            it("can read") {
////                expect("number") == "string"
////            }
//
////            it("will eventually fail") {
////                expect("time").toEventually( equal("done") )
////            }
//            
//
//        }
    }
}
