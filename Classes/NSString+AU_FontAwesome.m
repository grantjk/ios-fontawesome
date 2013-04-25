//
//  NSString+FontAwesome.m
//
//  Copyright (c) 2012 Alex Usbergo. All rights reserved.
//
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//

#import "NSString+AU_FontAwesome.h"

@implementation NSString (AU_FontAwesome)

#pragma mark - public

/* Returns the correct enum for a font-awesome icon.
 * The list of identifiers can be found here:
 * http://fortawesome.github.com/Font-awesome/#all-icons */
+ (AU_FAIcon)fontAwesomeEnumForIconIdentifier:(NSString*)string
{
    NSDictionary *enums = [self enumDictionary];
    return [enums[string] integerValue];
}

/* Returns the font-awesome character associated to the
 * icon enum passed as argument */
+ (NSString*)fontAwesomeIconStringForEnum:(AU_FAIcon)value
{
    return [self fontAwesomeIcons][value];
}

/* Returns the font-awesome character associated to the font-awesome
 * identifier.
 * http://fortawesome.github.com/Font-awesome/#all-icons */
+ (NSString*)fontAwesomeIconStringForIconIdentifier:(NSString*)identifier
{
    return [self fontAwesomeIconStringForEnum:[self fontAwesomeEnumForIconIdentifier:identifier]];
}

#pragma mark - data initialization
+ (NSArray*)fontAwesomeIcons
{
    static NSArray *fontAwesomeIcons = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        fontAwesomeIcons = @[@"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @""];
    });
    return fontAwesomeIcons;
}

+ (NSDictionary*)enumDictionary
{
	static NSDictionary *enumDictionary;
	if (nil == enumDictionary) {
		NSMutableDictionary *tmp = [[NSMutableDictionary alloc] init];
		tmp[@"icon-glass"] = @(AU_FAIconGlass);
		tmp[@"icon-music"] = @(AU_FAIconMusic);
		tmp[@"icon-search"] = @(AU_FAIconSearch);
		tmp[@"icon-envelope"] = @(AU_FAIconEnvelope);
		tmp[@"icon-heart"] = @(AU_FAIconHeart);
		tmp[@"icon-star"] = @(AU_FAIconStar);
		tmp[@"icon-star-empty"] = @(AU_FAIconStarEmpty);
		tmp[@"icon-user"] = @(AU_FAIconUser);
		tmp[@"icon-film"] = @(AU_FAIconFilm);
		tmp[@"icon-th-large"] = @(AU_FAIconThLarge);
		tmp[@"icon-th"] = @(AU_FAIconTh);
		tmp[@"icon-th-list"] = @(AU_FAIconThList);
		tmp[@"icon-ok"] = @(AU_FAIconOk);
		tmp[@"icon-remove"] = @(AU_FAIconRemove);
		tmp[@"icon-zoom-in"] = @(AU_FAIconZoomIn);
		tmp[@"icon-zoom-out"] = @(AU_FAIconZoomOut);
		tmp[@"icon-off"] = @(AU_FAIconOff);
		tmp[@"icon-signal"] = @(AU_FAIconSignal);
		tmp[@"icon-cog"] = @(AU_FAIconCog);
		tmp[@"icon-trash"] = @(AU_FAIconTrash);
		tmp[@"icon-home"] = @(AU_FAIconHome);
		tmp[@"icon-file"] = @(AU_FAIconFile);
		tmp[@"icon-time"] = @(AU_FAIconTime);
		tmp[@"icon-road"] = @(AU_FAIconRoad);
		tmp[@"icon-download-alt"] = @(AU_FAIconDownloadAlt);
		tmp[@"icon-download"] = @(AU_FAIconDownload);
		tmp[@"icon-upload"] = @(AU_FAIconUpload);
		tmp[@"icon-inbox"] = @(AU_FAIconInbox);
		tmp[@"icon-play-circle"] = @(AU_FAIconPlayCircle);
		tmp[@"icon-repeat"] = @(AU_FAIconRepeat);
		tmp[@"icon-refresh"] = @(AU_FAIconRefresh);
		tmp[@"icon-list-alt"] = @(AU_FAIconListAlt);
		tmp[@"icon-lock"] = @(AU_FAIconLock);
		tmp[@"icon-flag"] = @(AU_FAIconFlag);
		tmp[@"icon-headphones"] = @(AU_FAIconHeadphones);
		tmp[@"icon-volume-off"] = @(AU_FAIconVolumeOff);
		tmp[@"icon-volume-down"] = @(AU_FAIconVolumeDown);
		tmp[@"icon-volume-up"] = @(AU_FAIconVolumeUp);
		tmp[@"icon-qrcode"] = @(AU_FAIconQrcode);
		tmp[@"icon-barcode"] = @(AU_FAIconBarcode);
		tmp[@"icon-tag"] = @(AU_FAIconTag);
		tmp[@"icon-tags"] = @(AU_FAIconTags);
		tmp[@"icon-book"] = @(AU_FAIconBook);
		tmp[@"icon-bookmark"] = @(AU_FAIconBookmark);
		tmp[@"icon-print"] = @(AU_FAIconPrint);
		tmp[@"icon-camera"] = @(AU_FAIconCamera);
		tmp[@"icon-font"] = @(AU_FAIconFont);
		tmp[@"icon-bold"] = @(AU_FAIconBold);
		tmp[@"icon-italic"] = @(AU_FAIconItalic);
		tmp[@"icon-text-height"] = @(AU_FAIconTextHeight);
		tmp[@"icon-text-width"] = @(AU_FAIconTextWidth);
		tmp[@"icon-align-left"] = @(AU_FAIconAlignLeft);
		tmp[@"icon-align-center"] = @(AU_FAIconAlignCenter);
		tmp[@"icon-align-right"] = @(AU_FAIconAlignRight);
		tmp[@"icon-align-justify"] = @(AU_FAIconAlignJustify);
		tmp[@"icon-list"] = @(AU_FAIconList);
		tmp[@"icon-indent-left"] = @(AU_FAIconIndentLeft);
		tmp[@"icon-indent-right"] = @(AU_FAIconIndentRight);
		tmp[@"icon-facetime-video"] = @(AU_FAIconFacetimeVideo);
		tmp[@"icon-picture"] = @(AU_FAIconPicture);
		tmp[@"icon-pencil"] = @(AU_FAIconPencil);
		tmp[@"icon-map-marker"] = @(AU_FAIconMapMarker);
		tmp[@"icon-adjust"] = @(AU_FAIconAdjust);
		tmp[@"icon-tint"] = @(AU_FAIconTint);
		tmp[@"icon-edit"] = @(AU_FAIconEdit);
		tmp[@"icon-share"] = @(AU_FAIconShare);
		tmp[@"icon-check"] = @(AU_FAIconCheck);
		tmp[@"icon-move"] = @(AU_FAIconMove);
		tmp[@"icon-step-backward"] = @(AU_FAIconStepBackward);
		tmp[@"icon-fast-backward"] = @(AU_FAIconFastBackward);
		tmp[@"icon-backward"] = @(AU_FAIconBackward);
		tmp[@"icon-play"] = @(AU_FAIconPlay);
		tmp[@"icon-pause"] = @(AU_FAIconPause);
		tmp[@"icon-stop"] = @(AU_FAIconStop);
		tmp[@"icon-forward"] = @(AU_FAIconForward);
		tmp[@"icon-fast-forward"] = @(AU_FAIconFastForward);
		tmp[@"icon-step-forward"] = @(AU_FAIconStepForward);
		tmp[@"icon-eject"] = @(AU_FAIconEject);
		tmp[@"icon-chevron-left"] = @(AU_FAIconChevronLeft);
		tmp[@"icon-chevron-right"] = @(AU_FAIconChevronRight);
		tmp[@"icon-plus-sign"] = @(AU_FAIconPlusSign);
		tmp[@"icon-minus-sign"] = @(AU_FAIconMinusSign);
		tmp[@"icon-remove-sign"] = @(AU_FAIconRemoveSign);
		tmp[@"icon-ok-sign"] = @(AU_FAIconOkSign);
		tmp[@"icon-question-sign"] = @(AU_FAIconQuestionSign);
		tmp[@"icon-info-sign"] = @(AU_FAIconInfoSign);
		tmp[@"icon-screenshot"] = @(AU_FAIconScreenshot);
		tmp[@"icon-remove-circle"] = @(AU_FAIconRemoveCircle);
		tmp[@"icon-ok-circle"] = @(AU_FAIconOkCircle);
		tmp[@"icon-ban-circle"] = @(AU_FAIconBanCircle);
		tmp[@"icon-arrow-left"] = @(AU_FAIconArrowLeft);
		tmp[@"icon-arrow-right"] = @(AU_FAIconArrowRight);
		tmp[@"icon-arrow-up"] = @(AU_FAIconArrowUp);
		tmp[@"icon-arrow-down"] = @(AU_FAIconArrowDown);
		tmp[@"icon-share-alt"] = @(AU_FAIconShareAlt);
		tmp[@"icon-resize-full"] = @(AU_FAIconResizeFull);
		tmp[@"icon-resize-small"] = @(AU_FAIconResizeSmall);
		tmp[@"icon-plus"] = @(AU_FAIconPlus);
		tmp[@"icon-minus"] = @(AU_FAIconMinus);
		tmp[@"icon-asterisk"] = @(AU_FAIconAsterisk);
		tmp[@"icon-exclamation-sign"] = @(AU_FAIconExclamationSign);
		tmp[@"icon-gift"] = @(AU_FAIconGift);
		tmp[@"icon-leaf"] = @(AU_FAIconLeaf);
		tmp[@"icon-fire"] = @(AU_FAIconFire);
		tmp[@"icon-eye-open"] = @(AU_FAIconEyeOpen);
		tmp[@"icon-eye-close"] = @(AU_FAIconEyeClose);
		tmp[@"icon-warning-sign"] = @(AU_FAIconWarningSign);
		tmp[@"icon-plane"] = @(AU_FAIconPlane);
		tmp[@"icon-calendar"] = @(AU_FAIconCalendar);
		tmp[@"icon-random"] = @(AU_FAIconRandom);
		tmp[@"icon-comment"] = @(AU_FAIconComment);
		tmp[@"icon-magnet"] = @(AU_FAIconMagnet);
		tmp[@"icon-chevron-up"] = @(AU_FAIconChevronUp);
		tmp[@"icon-chevron-down"] = @(AU_FAIconChevronDown);
		tmp[@"icon-retweet"] = @(AU_FAIconRetweet);
		tmp[@"icon-shopping-cart"] = @(AU_FAIconShoppingCart);
		tmp[@"icon-folder-close"] = @(AU_FAIconFolderClose);
		tmp[@"icon-folder-open"] = @(AU_FAIconFolderOpen);
		tmp[@"icon-resize-vertical"] = @(AU_FAIconResizeVertical);
		tmp[@"icon-resize-horizontal"] = @(AU_FAIconResizeHorizontal);
		tmp[@"icon-bar-chart"] = @(AU_FAIconBarChart);
		tmp[@"icon-twitter-sign"] = @(AU_FAIconTwitterSign);
		tmp[@"icon-facebook-sign"] = @(AU_FAIconFacebookSign);
		tmp[@"icon-camera-retro"] = @(AU_FAIconCameraRetro);
		tmp[@"icon-key"] = @(AU_FAIconKey);
		tmp[@"icon-cogs"] = @(AU_FAIconCogs);
		tmp[@"icon-comments"] = @(AU_FAIconComments);
		tmp[@"icon-thumbs-up"] = @(AU_FAIconThumbsUp);
		tmp[@"icon-thumbs-down"] = @(AU_FAIconThumbsDown);
		tmp[@"icon-star-half"] = @(AU_FAIconStarHalf);
		tmp[@"icon-heart-empty"] = @(AU_FAIconHeartEmpty);
		tmp[@"icon-signout"] = @(AU_FAIconSignout);
		tmp[@"icon-linkedin-sign"] = @(AU_FAIconLinkedinSign);
		tmp[@"icon-pushpin"] = @(AU_FAIconPushpin);
		tmp[@"icon-external-link"] = @(AU_FAIconExternalLink);
		tmp[@"icon-signin"] = @(AU_FAIconSignin);
		tmp[@"icon-trophy"] = @(AU_FAIconTrophy);
		tmp[@"icon-github-sign"] = @(AU_FAIconGithubSign);
		tmp[@"icon-upload-alt"] = @(AU_FAIconUploadAlt);
		tmp[@"icon-lemon"] = @(AU_FAIconLemon);
		tmp[@"icon-phone"] = @(AU_FAIconPhone);
		tmp[@"icon-check-empty"] = @(AU_FAIconCheckEmpty);
		tmp[@"icon-bookmark-empty"] = @(AU_FAIconBookmarkEmpty);
		tmp[@"icon-phone-sign"] = @(AU_FAIconPhoneSign);
		tmp[@"icon-twitter"] = @(AU_FAIconTwitter);
		tmp[@"icon-facebook"] = @(AU_FAIconFacebook);
		tmp[@"icon-github"] = @(AU_FAIconGithub);
		tmp[@"icon-unlock"] = @(AU_FAIconUnlock);
		tmp[@"icon-credit-card"] = @(AU_FAIconCreditCard);
		tmp[@"icon-rss"] = @(AU_FAIconRss);
		tmp[@"icon-hdd"] = @(AU_FAIconHdd);
		tmp[@"icon-bullhorn"] = @(AU_FAIconBullhorn);
		tmp[@"icon-bell"] = @(AU_FAIconBell);
		tmp[@"icon-certificate"] = @(AU_FAIconCertificate);
		tmp[@"icon-hand-right"] = @(AU_FAIconHandRight);
		tmp[@"icon-hand-left"] = @(AU_FAIconHandLeft);
		tmp[@"icon-hand-up"] = @(AU_FAIconHandUp);
		tmp[@"icon-hand-down"] = @(AU_FAIconHandDown);
		tmp[@"icon-circle-arrow-left"] = @(AU_FAIconCircleArrowLeft);
		tmp[@"icon-circle-arrow-right"] = @(AU_FAIconCircleArrowRight);
		tmp[@"icon-circle-arrow-up"] = @(AU_FAIconCircleArrowUp);
		tmp[@"icon-circle-arrow-down"] = @(AU_FAIconCircleArrowDown);
		tmp[@"icon-globe"] = @(AU_FAIconGlobe);
		tmp[@"icon-wrench"] = @(AU_FAIconWrench);
		tmp[@"icon-tasks"] = @(AU_FAIconTasks);
		tmp[@"icon-filter"] = @(AU_FAIconFilter);
		tmp[@"icon-briefcase"] = @(AU_FAIconBriefcase);
		tmp[@"icon-fullscreen"] = @(AU_FAIconFullscreen);
		tmp[@"icon-group"] = @(AU_FAIconGroup);
		tmp[@"icon-link"] = @(AU_FAIconLink);
		tmp[@"icon-cloud"] = @(AU_FAIconCloud);
		tmp[@"icon-beaker"] = @(AU_FAIconBeaker);
		tmp[@"icon-cut"] = @(AU_FAIconCut);
		tmp[@"icon-copy"] = @(AU_FAIconCopy);
		tmp[@"icon-paper-clip"] = @(AU_FAIconPaperClip);
		tmp[@"icon-save"] = @(AU_FAIconSave);
		tmp[@"icon-sign-blank"] = @(AU_FAIconSignBlank);
		tmp[@"icon-reorder"] = @(AU_FAIconReorder);
		tmp[@"icon-list-ul"] = @(AU_FAIconListUl);
		tmp[@"icon-list-ol"] = @(AU_FAIconListOl);
		tmp[@"icon-strikethrough"] = @(AU_FAIconStrikethrough);
		tmp[@"icon-underline"] = @(AU_FAIconUnderline);
		tmp[@"icon-table"] = @(AU_FAIconTable);
		tmp[@"icon-magic"] = @(AU_FAIconMagic);
		tmp[@"icon-truck"] = @(AU_FAIconTruck);
		tmp[@"icon-pinterest"] = @(AU_FAIconPinterest);
		tmp[@"icon-pinterest-sign"] = @(AU_FAIconPinterestSign);
		tmp[@"icon-google-plus-sign"] = @(AU_FAIconGooglePlusSign);
		tmp[@"icon-google-plus"] = @(AU_FAIconGooglePlus);
		tmp[@"icon-money"] = @(AU_FAIconMoney);
		tmp[@"icon-caret-down"] = @(AU_FAIconCaretDown);
		tmp[@"icon-caret-up"] = @(AU_FAIconCaretUp);
		tmp[@"icon-caret-left"] = @(AU_FAIconCaretLeft);
		tmp[@"icon-caret-right"] = @(AU_FAIconCaretRight);
		tmp[@"icon-columns"] = @(AU_FAIconColumns);
		tmp[@"icon-sort"] = @(AU_FAIconSort);
		tmp[@"icon-sort-down"] = @(AU_FAIconSortDown);
		tmp[@"icon-sort-up"] = @(AU_FAIconSortUp);
		tmp[@"icon-envelope-alt"] = @(AU_FAIconEnvelopeAlt);
		tmp[@"icon-linkedin"] = @(AU_FAIconLinkedin);
		tmp[@"icon-undo"] = @(AU_FAIconUndo);
		tmp[@"icon-legal"] = @(AU_FAIconLegal);
		tmp[@"icon-dashboard"] = @(AU_FAIconDashboard);
		tmp[@"icon-comment-alt"] = @(AU_FAIconCommentAlt);
		tmp[@"icon-comments-alt"] = @(AU_FAIconCommentsAlt);
		tmp[@"icon-bolt"] = @(AU_FAIconBolt);
		tmp[@"icon-sitemap"] = @(AU_FAIconSitemap);
		tmp[@"icon-umbrella"] = @(AU_FAIconUmbrella);
		tmp[@"icon-paste"] = @(AU_FAIconPaste);
		tmp[@"icon-user-md"] = @(AU_FAIconUserMd);
		tmp[@"icon-stethoscope"] = @(AU_FAIconStethoscope);
		tmp[@"icon-building"] = @(AU_FAIconBuilding);
		tmp[@"icon-hospital"] = @(AU_FAIconHospital);
		tmp[@"icon-ambulance"] = @(AU_FAIconAmbulance);
		tmp[@"icon-medkit"] = @(AU_FAIconMedkit);
		tmp[@"icon-h-sign"] = @(AU_FAIconHSign);
		tmp[@"icon-plus-sign-alt"] = @(AU_FAIconPlusSignAlt);
		tmp[@"icon-spinner"] = @(AU_FAIconSpinner);
		tmp[@"icon-cloud-download"] = @(AU_FAIconCloudDownload);
		tmp[@"icon-cloud-upload"] = @(AU_FAIconCloudUpload);
		tmp[@"icon-lightbulb"] = @(AU_FAIconLightbulb);
		tmp[@"icon-exchange"] = @(AU_FAIconExchange);
		tmp[@"icon-bell-alt"] = @(AU_FAIconBellAlt);
		tmp[@"icon-file-alt"] = @(AU_FAIconFileAlt);
		tmp[@"icon-beer"] = @(AU_FAIconBeer);
		tmp[@"icon-coffee"] = @(AU_FAIconCoffee);
		tmp[@"icon-food"] = @(AU_FAIconFood);
		tmp[@"icon-fighter-jet"] = @(AU_FAIconFighterJet);
		tmp[@"icon-angle-left"] = @(AU_FAIconAngleLeft);
		tmp[@"icon-angle-right"] = @(AU_FAIconAngleRight);
		tmp[@"icon-angle-up"] = @(AU_FAIconAngleUp);
		tmp[@"icon-angle-down"] = @(AU_FAIconAngleDown);
		tmp[@"icon-double-angle-left"] = @(AU_FAIconDoubleAngleLeft);
		tmp[@"icon-double-angle-right"] = @(AU_FAIconDoubleAngleRight);
		tmp[@"icon-double-angle-up"] = @(AU_FAIconDoubleAngleUp);
		tmp[@"icon-double-angle-down"] = @(AU_FAIconDoubleAngleDown);
		tmp[@"icon-circle-blank"] = @(AU_FAIconCircleBlank);
		tmp[@"icon-circle"] = @(AU_FAIconCircle);
		tmp[@"icon-desktop"] = @(AU_FAIconDesktop);
		tmp[@"icon-laptop"] = @(AU_FAIconLaptop);
		tmp[@"icon-tablet"] = @(AU_FAIconTablet);
		tmp[@"icon-mobile-phone"] = @(AU_FAIconMobilePhone);
		tmp[@"icon-quote-left"] = @(AU_FAIconQuoteLeft);
		tmp[@"icon-quote-right"] = @(AU_FAIconQuoteRight);
		tmp[@"icon-reply"] = @(AU_FAIconReply);
		tmp[@"icon-github-alt"] = @(AU_FAIconGithubAlt);
		tmp[@"icon-close-alt"] = @(AU_FAIconFolderCloseAlt);
		tmp[@"icon-folder-open-alt"] = @(AU_FAIconFolderOpenAlt);
		tmp[@"icon-suitcase"] = @(AU_FAIconSuitcase);
		enumDictionary = tmp;
	}
    
    return enumDictionary;
}

@end
