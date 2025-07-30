// __DEBUG__
// __CLOSE_PRINT__
//
//  StarCamera.h
//
//  Created by sluin on 16/5/4.
//  Copyright © 2016年 SenseTime. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVFoundation.h>

//: @protocol STFilterCameraDelegate <NSObject>
@protocol ShowOf <NSObject>

// call back in bufferQueue
//: - (void)captureOutput:(AVCaptureOutput *)captureOutput didOutputSampleBuffer:(CMSampleBufferRef)sampleBuffer fromConnection:(AVCaptureConnection *)connection;
- (void)captureOutput:(AVCaptureOutput *)captureOutput didOutputSampleBuffer:(CMSampleBufferRef)sampleBuffer fromConnection:(AVCaptureConnection *)connection;

//: @end
@end

/*!
 * 封装相机采集
 */
//: @interface STFilterCamera : NSObject
@interface StarCamera : NSObject

//: @property (nonatomic , assign) id <STFilterCameraDelegate> delegate;
@property (nonatomic , assign) id <ShowOf> delegate;

//: @property (nonatomic , readonly) dispatch_queue_t bufferQueue;
@property (nonatomic , readonly) dispatch_queue_t bufferQueue;

//: @property (nonatomic , assign) AVCaptureDevicePosition devicePosition; 
@property (nonatomic , assign) AVCaptureDevicePosition devicePosition; // default AVCaptureDevicePositionFront

//: @property (nonatomic , assign) AVCaptureVideoOrientation videoOrientation;
@property (nonatomic , assign) AVCaptureVideoOrientation videoOrientation;

//: @property (nonatomic , assign) BOOL needVideoMirrored;
@property (nonatomic , assign) BOOL needVideoMirrored;

//: @property (nonatomic , strong , readonly) AVCaptureConnection *videoConnection;
@property (nonatomic , strong , readonly) AVCaptureConnection *videoConnection;

//: @property (nonatomic , copy) AVCaptureSessionPreset sessionPreset; 
@property (nonatomic , copy) AVCaptureSessionPreset sessionPreset; // default  

//: @property (nonatomic , strong) AVCaptureVideoPreviewLayer *previewLayer;
@property (nonatomic , strong) AVCaptureVideoPreviewLayer *previewLayer;

//: @property (atomic , assign) BOOL bSessionPause;
@property (atomic , assign) BOOL bSessionPause;

//: @property (nonatomic , assign) int iExpectedFPS;
@property (nonatomic , assign) int iExpectedFPS;

//: @property (nonatomic, readwrite, strong) NSDictionary *videoCompressingSettings;
@property (nonatomic, readwrite, strong) NSDictionary *videoCompressingSettings;

// old
//: @property (nonatomic , assign) int iFPS;
@property (nonatomic , assign) int iFPS;

//: - (instancetype)initWithDevicePosition:(AVCaptureDevicePosition)iDevicePosition
- (instancetype)initWithDevicePosition:(AVCaptureDevicePosition)iDevicePosition
                        //: sessionPresset:(AVCaptureSessionPreset)sessionPreset
                        sessionPresset:(AVCaptureSessionPreset)sessionPreset
                                   //: fps:(int)iFPS
                                   fps:(int)iFPS
                         //: needYuvOutput:(BOOL)needYuvOutput;
                         needYuvOutput:(BOOL)needYuvOutput;

//: - (void)setThrowPlace:(CGPoint)point inPreviewFrame:(CGRect)frame;
- (void)setThrowPlace:(CGPoint)point inPreviewFrame:(CGRect)frame;

//: - (void)setISOValue:(float)value;
- (void)setISOValue:(float)value;

//: - (void)startRunning;
- (void)startRunning;

//: - (void)stopRunning;
- (void)stopRunning;

//: - (CGRect)getScaleRect:(CGRect)rect scaleToFit:(BOOL)bScaleToFit;
- (CGRect)getScaleRect:(CGRect)rect scaleToFit:(BOOL)bScaleToFit;


//: @end
@end