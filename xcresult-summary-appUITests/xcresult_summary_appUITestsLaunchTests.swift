//
//  xcresult_summary_appUITestsLaunchTests.swift
//  xcresult-summary-appUITests
//
//  Created by 副島 拓哉 on 2024/10/25.
//

import XCTest

final class xcresult_summary_appUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    @MainActor
    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Scree"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
