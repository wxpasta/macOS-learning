//
//  MainWindowController.m
//  SpeakLine
//
//  Created by magic-devel on 2021/1/8.
//

#import "MainWindowController.h"

@interface MainWindowController ()<NSSpeechSynthesizerDelegate, NSWindowDelegate>

@property (weak) IBOutlet NSTextField *textField;
@property (weak) IBOutlet NSButton *speakButton;
@property (weak) IBOutlet NSButton *stopButton;


@property (nonatomic, strong) NSSpeechSynthesizer  *speechSynth;
@property (nonatomic) BOOL isStarted;
@end

@implementation MainWindowController

- (NSNibName)windowNibName {
    return @"MainWindowController";
}

- (void)windowDidLoad {
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    [self updateButtons];
    
    NSArray<NSSpeechSynthesizerVoiceName> *availableVoices = [NSSpeechSynthesizer availableVoices];
    
    
    [availableVoices indexOfObject:availableVoices];
}
#pragma mark -
- (IBAction)speakIt:(id)sender {
    NSString *string = self.textField.stringValue;
    if (string.length > 0) {
        [self.speechSynth startSpeakingString:string];
        self.isStarted = YES;
    }
}

- (IBAction)stopIt:(id)sender {
    [self.speechSynth stopSpeaking];
}

- (void)updateButtons {
    if (self.isStarted) {
        self.speakButton.enabled = NO;
        self.stopButton.enabled = YES;
    }else{
        self.stopButton.enabled = NO;
        self.speakButton.enabled = YES;
    }
}
-(NSSpeechSynthesizer *)speechSynth {
    if (!_speechSynth) {
        _speechSynth = [[NSSpeechSynthesizer alloc] init];
        _speechSynth.delegate = self;
    }
    return _speechSynth;
}
#pragma mark - NSSpeechSynthesizerDelegate
- (void)speechSynthesizer:(NSSpeechSynthesizer *)sender
        didFinishSpeaking:(BOOL)finishedSpeaking {
    self.isStarted = NO;
}

#pragma mark - NSWindowDelegate
- (BOOL)windowShouldClose:(NSWindow *)sender{
    if (_isStarted) {
        return !_isStarted;
    } else {
        return _isStarted;
    }
}

- (void)setIsStarted:(BOOL)isStarted {
    if (_isStarted != isStarted) {
        _isStarted = isStarted;
        [self updateButtons];
    }
}
@end
