//
// UIFont+<%= font.extension_name %>.h
//
//

#import <UIKit/UIKit.h>

/// An extension to UIFont providing the <%= font.name %> font
@interface UIFont (<%= font.extension_name %>)
<% for style in font.styles %>
/** Returns a font object using the <%= font.name %> <% style.name %> font in the specified size.
 @param fontSize The size (in points) to which the font is scaled. This value must be greater than 0.0.
 @return A font object of the specified size.
*/
+ (instancetype)<%= font.method_component %><%= style.method_component %>FontOfSize:(CGFloat)fontSize;
<% end %>
@end

