//
//  MTScratchpad.h
//  MTerminal
//

#import <UIKit/UIKit.h>
#import "MTKBAvoiding.h"

@interface MTScratchpad : MTKBAvoiding {
  NSString *text;
  CGFloat fontSize;
  BOOL darkBG;
}
-(id)initWithText:(NSString *)_text fontSize:(CGFloat)_fontSize darkBG:(BOOL)_darkBG;
@end
