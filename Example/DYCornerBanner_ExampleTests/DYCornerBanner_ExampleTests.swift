//
//  DYCornerBanner_ExampleTests.swift
//  DYCornerBanner_ExampleTests
//
//  Created by Dominik Butz on 16.04.17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import XCTest
@testable import DYCornerBanner
import UIKit

class DYCornerBannerTests: XCTestCase {

    var imageView:UIImageView?
    var cornerBannerBottomRight : DYCornerBanner?

    override func setUp() {
        super.setUp()

        self.imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 400, height: 200))

        self.cornerBannerBottomRight = DYCornerBanner(frame: CGRect(x: 240, y: 110, width: 160, height: 90))

        self.imageView?.image = UIImage(named:"IMG_0002.jpg")
        self.imageView?.addSubview(self.cornerBannerBottomRight!)


        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()

        self.imageView = nil
        self.cornerBannerBottomRight = nil

    }

    func testCornerBannerBottomRight() {



        self.cornerBannerBottomRight?.textFont = UIFont(name: "AmericanTypewriter-Bold", size: 11.0)!
        self.cornerBannerBottomRight?.bannerWidth = 17.0
        self.cornerBannerBottomRight?.setup(text: "Top Cruise Tour!", textColor: UIColor.white, bannerColor: UIColor.red, position: .bottomRight)

        XCTAssert(self.cornerBannerBottomRight?.bannerPosition == .bottomRight, "corner banner is wrong")
        XCTAssertEqual(self.cornerBannerBottomRight?.bannerLabel.font.familyName, "American Typewriter", "wrong font name!")
        XCTAssertEqual(self.cornerBannerBottomRight?.bannerWidth, 17.0, "Banner width value not correct")
        XCTAssertEqual(self.cornerBannerBottomRight?.bannerLabel.text, "Top Cruise Tour!", "Banner label text incorrect!")
        XCTAssertEqual(self.cornerBannerBottomRight?.bannerLabel.textColor, UIColor.white, "Banner label text color value not correct")
        XCTAssertEqual(self.cornerBannerBottomRight?.bannerLabel.backgroundColor, UIColor.red, "Banner label background color value not correct")


        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
//
//class DYCornerBannerSpec: QuickSpec {
//    
//    
//    var imageView:UIImageView?
//    var cornerBannerBottomRight : DYCornerBanner?
//    
//    override func spec() {
//        
//        // self.setup()
//        
//        
//        self.imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 400, height: 200))
//        
//        self.cornerBannerBottomRight = DYCornerBanner(frame: CGRect(x: 240, y: 110, width: 160, height: 90))
//        
//        self.imageView?.image = UIImage(named:"IMG_0002")
//        self.imageView?.addSubview(self.cornerBannerBottomRight!)
//        
//        
//        self.cornerBannerBottomRight?.textFont = UIFont(name: "AmericanTypewriter-Bold", size: 11.0)!
//        self.cornerBannerBottomRight?.bannerWidth = 17.0
//        self.cornerBannerBottomRight?.setup(text: "Top Cruise Tour!", textColor: UIColor.white, bannerColor: UIColor.red, position: .bottomRight)
//        
//        
//        
//        describe("testing if properties satisfiy expected values") {
//            
//            it("position should be bottom right", closure: {
//                expect(self.cornerBannerBottomRight?.bannerPosition ) == .bottomRight
//                
//            })
//            
//            
//            it("font familiy should be American Tyewriter", closure: {
//                expect(self.cornerBannerBottomRight?.bannerLabel.font.familyName ) == "American Typewriter"
//                
//            })
//            
//            it("banner width should be 17.0", closure: {
//                expect(self.cornerBannerBottomRight?.bannerWidth ) == 17.0
//                
//            })
//            
//            
//            
//            //        XCTAssert(self.cornerBannerBottomRight?.bannerPosition == .bottomRight, "corner banner is wrong")
//            //        XCTAssertEqual(self.cornerBannerBottomRight?.bannerLabel.font.familyName, "American Typewriter", "wrong font name!")
//            //        XCTAssertEqual(self.cornerBannerBottomRight?.bannerWidth, 17.0, "Banner width value not correct")
//            //        XCTAssertEqual(self.cornerBannerBottomRight?.bannerLabel.text, "Top Cruise Tour!", "Banner label text incorrect!")
//            //        XCTAssertEqual(self.cornerBannerBottomRight?.bannerLabel.textColor, UIColor.white, "Banner label text color value not correct")
//            //        XCTAssertEqual(self.cornerBannerBottomRight?.bannerLabel.backgroundColor, UIColor.red, "Banner label background color value not correct")
//            
//        }
//        
//    }
//    
//}
//
//
////
//class TableOfContentsSpec: QuickSpec {
//    
//    
//    override func spec() {
//        describe("these will fail") {
//            
//            it("can do maths") {
//                expect(1) == 2
//            }
//            
//            it("can read") {
//                expect("number") == "string"
//            }
//            
//            it("will eventually fail") {
//                expect("time").toEventually( equal("done") )
//            }
//            
//            context("these will pass") {
//                
//                it("can do maths") {
//                    expect(23) == 23
//                }
//                
//                it("can read") {
//                    expect("🐮") == "🐮"
//                }
//                
//                it("will eventually pass") {
//                    var time = "passing"
//                    
//                    DispatchQueue.main.async {
//                        time = "done"
//                    }
//                    
//                    waitUntil { done in
//                        Thread.sleep(forTimeInterval: 0.5)
//                        expect(time) == "done"
//                        
//                        done()
//                    }
//                }
//            }
//        }
//    }
//}
