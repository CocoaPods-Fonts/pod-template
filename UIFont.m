//
// UIFont+<%= font.extension_name %>.m
//
//

#import "UIFont+<%= font.extension_name %>.h"

@implementation UIFont (<%= font.extension_name %>)
<% for style in font.styles %>
+ (instancetype)<%= font.method_component %><%= style.method_component %>FontOfSize:(CGFloat)fontSize {
    return nil;
}
<% end %>
@end

