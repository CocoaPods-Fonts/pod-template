//
// UIFont<%= font.extension_name %>.m
//
//

#import <XCTest/XCTest.h>
#import "UIFont+<%= font.extension_name %>.h"

@interface <% font.extension_name %>Tests : XCTestCase
@end

@implementation <% font.extension_name %>Tests
<% for style in font.styles %>
- (void)test<%= font.method_component.capitalized %><%= style.method_component %>Font {
    ;
}
<% end %>
@end

