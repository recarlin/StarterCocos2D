//
//  SpriteLayer.m
//  StarterCocos2D
//
//  Created by Russell Carlin on 11/2/13.
//
//

#import "SpriteLayer.h"

@implementation SpriteLayer

- (id)init {
    self = [super init];
    if (self != nil) {
        self.isTouchEnabled = TRUE;
        
        red = [CCSprite spriteWithFile:@"element_red_polygon.png"];
        red.scale = 2;
        red.anchorPoint = ccp(0, 0);
        red.position = ccp(115, 50);
        [self addChild: red];
        
        green = [CCSprite spriteWithFile:@"element_green_polygon.png"];
        green.scale = 2;
        green.anchorPoint = ccp(0, 0);
        green.position = ccp(115, 200);
        [self addChild: green];
        
        blue = [CCSprite spriteWithFile:@"element_blue_polygon.png"];
        blue.scale = 2;
        blue.anchorPoint = ccp(0, 0);
        blue.position = ccp(115, 350);
        [self addChild: blue];
    }
    return self;
}

- (void) ccTouchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInView: [touch view]];
    location = [[CCDirector sharedDirector] convertToGL: location];
    if (CGRectContainsPoint([red boundingBox],location))
        {
            [[SimpleAudioEngine sharedEngine] playEffect:@"swoosh2.wav"];
        } else if (CGRectContainsPoint([green boundingBox],location))
            {
                [[SimpleAudioEngine sharedEngine] playEffect:@"swoosh1.wav"];
            } else if (CGRectContainsPoint([blue boundingBox],location))
                {
                    [[SimpleAudioEngine sharedEngine] playEffect:@"swoosh2.wav"];
                }
}

- (void) ccTouchEnded:(UITouch *)touch withEvent:(UIEvent *)event
{
    
}
@end
