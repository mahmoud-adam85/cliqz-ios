/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

import Foundation
import Shared

extension UIColor {
    // These are defaults from http://design.firefox.com/photon/visuals/color.html
    struct Defaults {
        static let MobileGreyF = UIColor(rgb: 0x636369)
        static let iOSTextHighlightBlue = UIColor(rgb: 0xccdded) // This color should exactly match the ios text highlight
        static let Purple60A30 = UIColor(rgba: 0x8000d74c)
        static let MobilePrivatePurple = UIColor.Photon.Purple60
    // Reader Mode Sepia
        static let LightBeige = UIColor(rgb: 0xf0e6dc)
    }
    //TODO: FF14 Merge
    /*
    struct Browser {
        #if !PAID
        static let Background = BrowserColor(normal: Photon.Grey10, pbm: Photon.Grey70)
        /* Cliqz: changed colors to be white in both themes
        static let Text = BrowserColor(normal: .white, pbm: Photon.Grey60)
        */
        static let Text = BrowserColor(normal: .white, pbm: .white)
        static let URLBarDivider = BrowserColor(normal: Photon.Grey90A10, pbm: Photon.Grey60)
        static let LocationBarBackground = Photon.Grey30
        /* Cliqz: changed colors to be white in both theme
        static let Tint = BrowserColor(normal: Photon.Grey80, pbm: Photon.Grey30)
        */
        static let Tint = BrowserColor(normal: Photon.Grey80, pbm: Photon.Grey80)
        #else
        static let Background = BrowserColor(normal: Lumen.URLBar.backgroundColor(lumenTheme, .Normal), pbm: Lumen.URLBar.backgroundColor(lumenTheme, .Private))
        static let Text = BrowserColor(normal: Lumen.URLBar.textFieldTextColor(lumenTheme, .Normal), pbm: Lumen.URLBar.textFieldTextColor(lumenTheme, .Private))
        static let URLBarDivider = BrowserColor(normal: Photon.Grey90A10, pbm: Photon.Grey60)
        static let LocationBarBackground = BrowserColor(normal: Lumen.URLBar.textFieldBackgroundColor(lumenTheme, .Normal), pbm: Lumen.URLBar.textFieldBackgroundColor(lumenTheme, .Private))
        static let Tint = BrowserColor(normal: Lumen.Browser.tintColor(lumenTheme, .Normal), pbm: Lumen.Browser.tintColor(lumenTheme, .Private))
        #endif
    }
    
    struct URLBar {
        /* Cliqz: changed colors to be white in both themes
        static let Border = BrowserColor(normal: Photon.Grey50, pbm: Photon.Grey80)
        static let ActiveBorder = BrowserColor(normal: Photon.Blue50A30, pbm: Photon.Grey60)
        static let Tint = BrowserColor(normal: Photon.Blue50A30, pbm: Photon.Grey10)
        */
        #if !PAID
        static let Border = BrowserColor(normal: Photon.Grey50, pbm: Photon.Grey50)
        static let ActiveBorder = BrowserColor(normal: Photon.Blue50A30, pbm: Photon.Blue50A30)
        static let Tint = BrowserColor(normal: Photon.Blue50A30, pbm: Photon.Blue50A30)
        #else
        static let Border = BrowserColor(normal: Lumen.URLBar.textFieldBorderColor(lumenTheme, .Normal), pbm: Lumen.URLBar.textFieldBorderColor(lumenTheme, .Private))
        static let ActiveBorder = BrowserColor(normal: Lumen.URLBar.textFieldActiveBorderColor(lumenTheme, .Normal), pbm:  Lumen.URLBar.textFieldActiveBorderColor(lumenTheme, .Private))
        static let Tint = BrowserColor(normal: Lumen.URLBar.textFieldTintColor(lumenTheme, .Normal), pbm: Lumen.URLBar.textFieldTintColor(lumenTheme, .Private))
        #endif
    }

    struct TextField {
        /* Cliqz: changed colors to be white in both themes
        static let Background = BrowserColor(normal: .white, pbm: Defaults.MobileGreyF)
        static let TextAndTint = BrowserColor(normal: Photon.Grey80, pbm: .white)
        static let Highlight = BrowserColor(normal: Defaults.iOSHighlightBlue, pbm: Defaults.Purple60A30)
        static let ReaderModeButtonSelected = BrowserColor(normal: Photon.Blue40, pbm: Defaults.MobilePrivatePurple)
        static let ReaderModeButtonUnselected = BrowserColor(normal: Photon.Grey50, pbm: Photon.Grey40)
        static let PageOptionsSelected = ReaderModeButtonSelected
        static let PageOptionsUnselected = UIColor.Browser.Tint
        static let Separator = BrowserColor(normal: Photon.Grey30, pbm: Photon.Grey70)
        */
        
        #if !PAID
        static let Background = BrowserColor(normal: .white, pbm: .white)
        static let TextAndTint = BrowserColor(normal: Photon.Grey80, pbm: Photon.Grey80)
        static let Highlight = BrowserColor(normal: Defaults.iOSHighlightBlue, pbm: Defaults.iOSHighlightBlue)
        static let ReaderModeButtonSelected = BrowserColor(normal: Photon.Blue40, pbm: Photon.Blue40)
        static let ReaderModeButtonUnselected = BrowserColor(normal: Photon.Grey50, pbm: Photon.Grey50)
        static let PageOptionsSelected = ReaderModeButtonSelected
        static let PageOptionsUnselected = UIColor.Browser.Tint
        static let Separator = BrowserColor(normal: Photon.Grey30, pbm: Photon.Grey30)
        #else
        static let Background = BrowserColor(normal: Lumen.URLBar.textFieldBackgroundColor(lumenTheme, .Normal), pbm: Lumen.URLBar.textFieldBackgroundColor(lumenTheme, .Private))
        static let TextAndTint = BrowserColor(normal: Lumen.URLBar.textFieldTextColor(lumenTheme, .Normal), pbm: Lumen.URLBar.textFieldTextColor(lumenTheme, .Private))
        static let Highlight = BrowserColor(normal: UIColor.init(colorString: "B2B8FF"), pbm: UIColor.init(colorString: "B2B8FF"))
        static let ReaderModeButtonSelected = BrowserColor(normal: Lumen.URLBar.readerModeButtonSelectedColor(lumenTheme, .Normal), pbm: Lumen.URLBar.readerModeButtonSelectedColor(lumenTheme, .Private))
        static let ReaderModeButtonUnselected = BrowserColor(normal: Lumen.URLBar.readerModeButtonColor(lumenTheme, .Normal), pbm: Lumen.URLBar.readerModeButtonColor(lumenTheme, .Private))
        static let PageOptionsSelected = BrowserColor(normal: Lumen.URLBar.pageOptionsColorSelected(lumenTheme, .Normal), pbm: Lumen.URLBar.pageOptionsColorSelected(lumenTheme, .Private))
        static let PageOptionsUnselected = BrowserColor(normal: Lumen.URLBar.pageOptionsColorUnselected(lumenTheme, .Normal), pbm: Lumen.URLBar.pageOptionsColorUnselected(lumenTheme, .Private))
        static let Separator = BrowserColor(normal: .white, pbm: .white)
        static let Cursor = BrowserColor(normal: Lumen.URLBar.textFieldCursorColor(lumenTheme, .Normal), pbm: Lumen.URLBar.textFieldCursorColor(lumenTheme, .Private))
        static let Placeholder = BrowserColor(normal: Lumen.URLBar.textFieldTextColorInactive(lumenTheme, .Normal), pbm: Lumen.URLBar.textFieldTextColorInactive(lumenTheme, .Private))
        #endif
    }

    // The back/forward/refresh/menu button (bottom toolbar)
    struct ToolbarButton {
        /* Cliqz: changed colors to be white in both themes
        static let SelectedTint = BrowserColor(normal: Photon.Blue40, pbm: Photon.Purple50)
        static let DisabledTint = BrowserColor(normal: Photon.Grey30, pbm: Photon.Grey50)
        */
        static let SelectedTint = BrowserColor(normal: Photon.Blue40, pbm: Photon.Blue40)
        static let DisabledTint = BrowserColor(normal: Photon.Grey30, pbm: Photon.Grey30)
    }

    struct LoadingBar {
        /* Cliqz: changed colors to be white in both themes
        static let Start = BrowserColor(normal: Photon.Blue50A30, pbm: Photon.Purple50)
        static let End = BrowserColor(normal: Photon.Blue50, pbm: Photon.Magenta50)
        */
        static let Start = BrowserColor(normal: Photon.Purple50, pbm: Photon.Purple50)
        static let End = BrowserColor(normal: Photon.Magenta50, pbm: Photon.Magenta50)
    }

    struct TabTray {
        /* Cliqz: change color
        static let Background = Browser.Background
        */
        #if PAID
        static let Background = BrowserColor(normal: .clear, pbm: .clear)
        #else
        static let Background = Browser.Background
        #endif
    }

    struct TopTabs {
        /* Cliqz: changed colors to be white in both themes
        static let PrivateModeTint = BrowserColor(normal: Photon.Grey10, pbm: Photon.Grey40)
        */
        static let PrivateModeTint = BrowserColor(normal: Photon.Grey10, pbm: Photon.Grey10)
        static let Background = Photon.Grey80
    }

    struct HomePanel {
        // These values are the same for both private/normal.
        // The homepanel toolbar needed to be able to theme, not anymore.
        // Keep this just in case someone decides they want it to theme again
        static let ToolbarBackground = BrowserColor(normal: Photon.Grey10, pbm: Photon.Grey10)
        static let ToolbarHighlight = BrowserColor(normal: Photon.Blue50, pbm: Photon.Blue50)
        static let ToolbarTint = BrowserColor(normal: Photon.Grey50, pbm: Photon.Grey50)
    }
    */
}

public struct UIConstants {
    static let AboutHomePage = URL(string: "\(WebServer.sharedInstance.base)/about/home/")!

    static let DefaultPadding: CGFloat = 10
    static let SnackbarButtonHeight: CGFloat = 57
    static let TopToolbarHeight: CGFloat = 56
    static var ToolbarHeight: CGFloat = 46
    static var BottomToolbarHeight: CGFloat {
        get {
            var bottomInset: CGFloat = 0.0
            if #available(iOS 11, *) {
                if let window = UIApplication.shared.keyWindow {
                    bottomInset = window.safeAreaInsets.bottom
                }
            }
            return ToolbarHeight + bottomInset
        }
    }

    static let AppBackgroundColor = UIColor.Photon.Grey10
    /* Cliqz: Changed the tint color for UIControl to Cliqz Blue color
    static let SystemBlueColor = UIColor.Photon.Blue40
    static let ControlTintColor = UIColor.Photon.Blue50
    */
    static let SystemBlueColor = UIColor.cliqzBluePrimary
    //TODO: FF14 Merge
    /*
    #if PAID
    static let ControlTintColor: UIColor? = nil
    #else
    static let ControlTintColor = UIColor.cliqzBluePrimary
    #endif
    */
    static let PasscodeDotColor = UIColor.Photon.Grey60
    static let PrivateModeAssistantToolbarBackgroundColor = UIColor.Photon.Grey50
    static let PrivateModeTextHighlightColor = UIColor.Photon.Purple60
    static let PrivateModePurple = UIColor.Defaults.MobilePrivatePurple

    // Static fonts
    static let DefaultChromeSize: CGFloat = 16
    static let DefaultChromeSmallSize: CGFloat = 11
    static let PasscodeEntryFontSize: CGFloat = 36
    static let DefaultChromeFont: UIFont = UIFont.systemFont(ofSize: DefaultChromeSize, weight: UIFont.Weight.regular)
    static let DefaultChromeSmallFontBold = UIFont.boldSystemFont(ofSize: DefaultChromeSmallSize)
    static let PasscodeEntryFont = UIFont.systemFont(ofSize: PasscodeEntryFontSize, weight: UIFont.Weight.bold)

    // Used as backgrounds for favicons
    static let DefaultColorStrings = ["2e761a", "399320", "40a624", "57bd35", "70cf5b", "90e07f", "b1eea5", "881606", "aa1b08", "c21f09", "d92215", "ee4b36", "f67964", "ffa792", "025295", "0568ba", "0675d3", "0996f8", "2ea3ff", "61b4ff", "95cdff", "00736f", "01908b", "01a39d", "01bdad", "27d9d2", "58e7e6", "89f4f5", "c84510", "e35b0f", "f77100", "ff9216", "ffad2e", "ffc446", "ffdf81", "911a2e", "b7223b", "cf2743", "ea385e", "fa526e", "ff7a8d", "ffa7b3" ]

    /// JPEG compression quality for persisted screenshots. Must be between 0-1.
    static let ScreenshotQuality: Float = 0.3
    static let ActiveScreenshotQuality: CGFloat = 0.5
}
