//
//  HelloWorldLayer.m
//  StarterCocos2D
//
//  Created by Russell Carlin on 10/31/13.
//  Copyright __MyCompanyName__ 2013. All rights reserved.
//


// Import the interfaces
#import "HelloWorldLayer.h"

// HelloWorldLayer implementation
@implementation HelloWorldLayer

+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
    
    BackgroundLayer *bg = [BackgroundLayer node];
    CCSprite *background = [CCSprite spriteWithFile:@"honeycomb-pattern-background.jpg"];
    background.scale = .3;
    background.anchorPoint = ccp(0, 0);
    background.position = ccp(0, 0);
    [bg addChild: background];
    
    SpriteLayer *sprites = [SpriteLayer node];
    
    [scene addChild: bg z: -1];
    [scene addChild: sprites z: 10];
    
	return scene;
}

// on "init" you need to initialize your instance
-(id) init
{
	// always call "super" init
	// Apple recommends to re-assign "self" with the "super" return value
	if( (self=[super init])) {
    }
	return self;
}

// on "dealloc" you need to release all your retained objects
- (void) dealloc
{
	// in case you have something to dealloc, do it in this method
	// in this particular example nothing needs to be released.
	// cocos2d will automatically release all the children (Label)
	
	// don't forget to call "super dealloc"
	[super dealloc];
}

@end
