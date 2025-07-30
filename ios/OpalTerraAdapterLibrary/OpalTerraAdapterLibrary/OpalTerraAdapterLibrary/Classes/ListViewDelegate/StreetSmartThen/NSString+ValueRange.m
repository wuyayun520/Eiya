
#import <Foundation/Foundation.h>

typedef struct {
    Byte express;
    Byte *fileMessage;
    unsigned int attach;
	int prepareMoment;
} StructFocusData;

@interface FocusData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation FocusData

+ (instancetype)sharedInstance {
    static FocusData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)FocusDataToByte:(StructFocusData *)data {
    for (int i = 0; i < data->attach; i++) {
        data->fileMessage[i] ^= data->express;
    }
    data->fileMessage[data->attach] = 0;
	if (data->attach >= 1) {
		data->prepareMoment = data->fileMessage[0];
	}
    return data->fileMessage;
}

- (NSString *)StringFromFocusData:(StructFocusData *)data {
    return [NSString stringWithUTF8String:(char *)[self FocusDataToByte:data]];
}

//: Input size to encryption algorithm was not aligned correctly
- (NSString *)showMagTitle {
    /* static */ NSString *showMagTitle = nil;
    if (!showMagTitle) {
        StructFocusData value = (StructFocusData){39, (Byte []){110, 73, 87, 82, 83, 7, 84, 78, 93, 66, 7, 83, 72, 7, 66, 73, 68, 85, 94, 87, 83, 78, 72, 73, 7, 70, 75, 64, 72, 85, 78, 83, 79, 74, 7, 80, 70, 84, 7, 73, 72, 83, 7, 70, 75, 78, 64, 73, 66, 67, 7, 68, 72, 85, 85, 66, 68, 83, 75, 94, 120}, 60, 22};
        showMagTitle = [self StringFromFocusData:&value];
    }
    return showMagTitle;
}

//: Alignment Error
- (NSString *)show_fileData {
    /* static */ NSString *show_fileData = nil;
    if (!show_fileData) {
        StructFocusData value = (StructFocusData){237, (Byte []){172, 129, 132, 138, 131, 128, 136, 131, 153, 205, 168, 159, 159, 130, 159, 78}, 15, 113};
        show_fileData = [self StringFromFocusData:&value];
    }
    return show_fileData;
}

//: 00000000000000000000000000000000
- (NSString *)show_mediaEndId {
    /* static */ NSString *show_mediaEndId = nil;
    if (!show_mediaEndId) {
        StructFocusData value = (StructFocusData){11, (Byte []){59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 128}, 32, 143};
        show_mediaEndId = [self StringFromFocusData:&value];
    }
    return show_mediaEndId;
}

//: Unimplemented Function
- (NSString *)mainTotalData {
    /* static */ NSString *mainTotalData = nil;
    if (!mainTotalData) {
        StructFocusData value = (StructFocusData){207, (Byte []){154, 161, 166, 162, 191, 163, 170, 162, 170, 161, 187, 170, 171, 239, 137, 186, 161, 172, 187, 166, 160, 161, 43}, 22, 53};
        mainTotalData = [self StringFromFocusData:&value];
    }
    return mainTotalData;
}

//: Success
- (NSString *)mainRawBlockKey {
    /* static */ NSString *mainRawBlockKey = nil;
    if (!mainRawBlockKey) {
        StructFocusData value = (StructFocusData){155, (Byte []){200, 238, 248, 248, 254, 232, 232, 89}, 7, 94};
        mainRawBlockKey = [self StringFromFocusData:&value];
    }
    return mainRawBlockKey;
}

//: Memory Failure
- (NSString *)show_feedbackTitle {
    /* static */ NSString *show_feedbackTitle = nil;
    if (!show_feedbackTitle) {
        StructFocusData value = (StructFocusData){12, (Byte []){65, 105, 97, 99, 126, 117, 44, 74, 109, 101, 96, 121, 126, 105, 192}, 14, 54};
        show_feedbackTitle = [self StringFromFocusData:&value];
    }
    return show_feedbackTitle;
}

//: Decode Error
- (NSString *)mainAfterData {
    /* static */ NSString *mainAfterData = nil;
    if (!mainAfterData) {
        StructFocusData value = (StructFocusData){189, (Byte []){249, 216, 222, 210, 217, 216, 157, 248, 207, 207, 210, 207, 17}, 12, 103};
        mainAfterData = [self StringFromFocusData:&value];
    }
    return mainAfterData;
}

//: Illegal parameter supplied to encryption/decryption algorithm
- (NSString *)mainMinUrl {
    /* static */ NSString *mainMinUrl = nil;
    if (!mainMinUrl) {
        StructFocusData value = (StructFocusData){200, (Byte []){129, 164, 164, 173, 175, 169, 164, 232, 184, 169, 186, 169, 165, 173, 188, 173, 186, 232, 187, 189, 184, 184, 164, 161, 173, 172, 232, 188, 167, 232, 173, 166, 171, 186, 177, 184, 188, 161, 167, 166, 231, 172, 173, 171, 186, 177, 184, 188, 161, 167, 166, 232, 169, 164, 175, 167, 186, 161, 188, 160, 165, 19}, 61, 242};
        mainMinUrl = [self StringFromFocusData:&value];
    }
    return mainMinUrl;
}

//: Failed to allocate memory
- (NSString *)main_subUrl {
    /* static */ NSString *main_subUrl = nil;
    if (!main_subUrl) {
        StructFocusData value = (StructFocusData){53, (Byte []){115, 84, 92, 89, 80, 81, 21, 65, 90, 21, 84, 89, 89, 90, 86, 84, 65, 80, 21, 88, 80, 88, 90, 71, 76, 140}, 25, 226};
        main_subUrl = [self StringFromFocusData:&value];
    }
    return main_subUrl;
}

//: Insufficient buffer provided for specified operation
- (NSString *)showPrepareName {
    /* static */ NSString *showPrepareName = nil;
    if (!showPrepareName) {
        StructFocusData value = (StructFocusData){246, (Byte []){191, 152, 133, 131, 144, 144, 159, 149, 159, 147, 152, 130, 214, 148, 131, 144, 144, 147, 132, 214, 134, 132, 153, 128, 159, 146, 147, 146, 214, 144, 153, 132, 214, 133, 134, 147, 149, 159, 144, 159, 147, 146, 214, 153, 134, 147, 132, 151, 130, 159, 153, 152, 68}, 52, 66};
        showPrepareName = [self StringFromFocusData:&value];
    }
    return showPrepareName;
}

//: Function not implemented for the current algorithm
- (NSString *)showPageUrl {
    /* static */ NSString *showPageUrl = nil;
    if (!showPageUrl) {
        StructFocusData value = (StructFocusData){39, (Byte []){97, 82, 73, 68, 83, 78, 72, 73, 7, 73, 72, 83, 7, 78, 74, 87, 75, 66, 74, 66, 73, 83, 66, 67, 7, 65, 72, 85, 7, 83, 79, 66, 7, 68, 82, 85, 85, 66, 73, 83, 7, 70, 75, 64, 72, 85, 78, 83, 79, 74, 141}, 50, 100};
        showPageUrl = [self StringFromFocusData:&value];
    }
    return showPageUrl;
}

//: Unknown Error
- (NSString *)show_streamName {
    /* static */ NSString *show_streamName = nil;
    if (!show_streamName) {
        StructFocusData value = (StructFocusData){61, (Byte []){104, 83, 86, 83, 82, 74, 83, 29, 120, 79, 79, 82, 79, 203}, 13, 3};
        show_streamName = [self StringFromFocusData:&value];
    }
    return show_streamName;
}

//: Buffer Too Small
- (NSString *)show_pageId {
    /* static */ NSString *show_pageId = nil;
    if (!show_pageId) {
        StructFocusData value = (StructFocusData){136, (Byte []){202, 253, 238, 238, 237, 250, 168, 220, 231, 231, 168, 219, 229, 233, 228, 228, 25}, 16, 197};
        show_pageId = [self StringFromFocusData:&value];
    }
    return show_pageId;
}

//: Parameter Error
- (NSString *)show_playerMayPath {
    /* static */ NSString *show_playerMayPath = nil;
    if (!show_playerMayPath) {
        StructFocusData value = (StructFocusData){164, (Byte []){244, 197, 214, 197, 201, 193, 208, 193, 214, 132, 225, 214, 214, 203, 214, 237}, 15, 161};
        show_playerMayPath = [self StringFromFocusData:&value];
    }
    return show_playerMayPath;
}

//: Input data did not decode or decrypt correctly
- (NSString *)show_customPath {
    /* static */ NSString *show_customPath = nil;
    if (!show_customPath) {
        StructFocusData value = (StructFocusData){251, (Byte []){178, 149, 139, 142, 143, 219, 159, 154, 143, 154, 219, 159, 146, 159, 219, 149, 148, 143, 219, 159, 158, 152, 148, 159, 158, 219, 148, 137, 219, 159, 158, 152, 137, 130, 139, 143, 219, 152, 148, 137, 137, 158, 152, 143, 151, 130, 250}, 46, 121};
        show_customPath = [self StringFromFocusData:&value];
    }
    return show_customPath;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NSString+ValueRange.m
//  GJStat-SDK
//
//  Created by bellchen on 2017/2/12.
//  Copyright © 2017年 guojiang.tv. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NSString+AES128.h"
#import "NSString+ValueRange.h"
//: #import <CommonCrypto/CommonCryptor.h>
#import <CommonCrypto/CommonCryptor.h>
//: #import <CommonCrypto/CommonHMAC.h>
#import <CommonCrypto/CommonHMAC.h>

//: NSString * const kCommonCryptoErrorDomain = @"CommonCryptoErrorDomain";
NSString * const dataSizeLineTitle = @"CommonCryptoErrorDomain";
//: static void FixKeyLengths( CCAlgorithm algorithm, NSMutableData * keyData, NSMutableData * ivData )
static void styleA( CCAlgorithm algorithm, NSMutableData * keyData, NSMutableData * ivData )
{
    //: NSUInteger keyLength = [keyData length];
    NSUInteger keyLength = [keyData length];
    //: switch ( algorithm )
    switch ( algorithm )
    {
        //: case kCCAlgorithmAES128:
        case kCCAlgorithmAES128:
        {
            //: if ( keyLength < 16 )
            if ( keyLength < 16 )
            {
                //: [keyData setLength: 16];
                [keyData setLength: 16];
            }
            //: else if ( keyLength < 24 )
            else if ( keyLength < 24 )
            {
                //: [keyData setLength: 24];
                [keyData setLength: 24];
            }
            //: else
            else
            {
                //: [keyData setLength: 32];
                [keyData setLength: 32];
            }

            //: break;
            break;
        }

        //: case kCCAlgorithmDES:
        case kCCAlgorithmDES:
        {
            //: [keyData setLength: 8];
            [keyData setLength: 8];
            //: break;
            break;
        }

        //: case kCCAlgorithm3DES:
        case kCCAlgorithm3DES:
        {
            //: [keyData setLength: 24];
            [keyData setLength: 24];
            //: break;
            break;
        }

        //: case kCCAlgorithmCAST:
        case kCCAlgorithmCAST:
        {
            //: if ( keyLength < 5 )
            if ( keyLength < 5 )
            {
                //: [keyData setLength: 5];
                [keyData setLength: 5];
            }
            //: else if ( keyLength > 16 )
            else if ( keyLength > 16 )
            {
                //: [keyData setLength: 16];
                [keyData setLength: 16];
            }

            //: break;
            break;
        }

        //: case kCCAlgorithmRC4:
        case kCCAlgorithmRC4:
        {
            //: if ( keyLength > 512 )
            if ( keyLength > 512 )
                //: [keyData setLength: 512];
                [keyData setLength: 512];
            //: break;
            break;
        }

        //: default:
        default:
            //: break;
            break;
    }

    //: [ivData setLength: [keyData length]];
    [ivData setLength: [keyData length]];
}

//: @implementation NSError (GJStatNSStringAES128)
@implementation NSError (Task)
//: + (NSError *) errorWithCCCryptorStatus: (CCCryptorStatus) status{
+ (NSError *) errorWithCCCryptorStatus: (CCCryptorStatus) status{
    //: NSString * description = nil, * reason = nil;
    NSString * description = nil, * reason = nil;

    //: switch ( status ){
    switch ( status ){
        //: case kCCSuccess:
        case kCCSuccess:
            //: description = NSLocalizedString(@"Success", @"Error description");
            description = NSLocalizedString([[FocusData sharedInstance] mainRawBlockKey], @"Error description");
            //: break;
            break;

        //: case kCCParamError:
        case kCCParamError:
            //: description = NSLocalizedString(@"Parameter Error", @"Error description");
            description = NSLocalizedString([[FocusData sharedInstance] show_playerMayPath], @"Error description");
            //: reason = NSLocalizedString(@"Illegal parameter supplied to encryption/decryption algorithm", @"Error reason");
            reason = NSLocalizedString([[FocusData sharedInstance] mainMinUrl], @"Error reason");
            //: break;
            break;

        //: case kCCBufferTooSmall:
        case kCCBufferTooSmall:
            //: description = NSLocalizedString(@"Buffer Too Small", @"Error description");
            description = NSLocalizedString([[FocusData sharedInstance] show_pageId], @"Error description");
            //: reason = NSLocalizedString(@"Insufficient buffer provided for specified operation", @"Error reason");
            reason = NSLocalizedString([[FocusData sharedInstance] showPrepareName], @"Error reason");
            //: break;
            break;

        //: case kCCMemoryFailure:
        case kCCMemoryFailure:
            //: description = NSLocalizedString(@"Memory Failure", @"Error description");
            description = NSLocalizedString([[FocusData sharedInstance] show_feedbackTitle], @"Error description");
            //: reason = NSLocalizedString(@"Failed to allocate memory", @"Error reason");
            reason = NSLocalizedString([[FocusData sharedInstance] main_subUrl], @"Error reason");
            //: break;
            break;

        //: case kCCAlignmentError:
        case kCCAlignmentError:
            //: description = NSLocalizedString(@"Alignment Error", @"Error description");
            description = NSLocalizedString([[FocusData sharedInstance] show_fileData], @"Error description");
            //: reason = NSLocalizedString(@"Input size to encryption algorithm was not aligned correctly", @"Error reason");
            reason = NSLocalizedString([[FocusData sharedInstance] showMagTitle], @"Error reason");
            //: break;
            break;

        //: case kCCDecodeError:
        case kCCDecodeError:
            //: description = NSLocalizedString(@"Decode Error", @"Error description");
            description = NSLocalizedString([[FocusData sharedInstance] mainAfterData], @"Error description");
            //: reason = NSLocalizedString(@"Input data did not decode or decrypt correctly", @"Error reason");
            reason = NSLocalizedString([[FocusData sharedInstance] show_customPath], @"Error reason");
            //: break;
            break;

        //: case kCCUnimplemented:
        case kCCUnimplemented:
            //: description = NSLocalizedString(@"Unimplemented Function", @"Error description");
            description = NSLocalizedString([[FocusData sharedInstance] mainTotalData], @"Error description");
            //: reason = NSLocalizedString(@"Function not implemented for the current algorithm", @"Error reason");
            reason = NSLocalizedString([[FocusData sharedInstance] showPageUrl], @"Error reason");
            //: break;
            break;

        //: default:
        default:
            //: description = NSLocalizedString(@"Unknown Error", @"Error description");
            description = NSLocalizedString([[FocusData sharedInstance] show_streamName], @"Error description");
            //: break;
            break;
    }

    //: NSMutableDictionary * userInfo = [[NSMutableDictionary alloc] init];
    NSMutableDictionary * userInfo = [[NSMutableDictionary alloc] init];
    //: [userInfo setObject: description forKey: NSLocalizedDescriptionKey];
    [userInfo setObject: description forKey: NSLocalizedDescriptionKey];

    //: if ( reason != nil )
    if ( reason != nil )
        //: [userInfo setObject: reason forKey: NSLocalizedFailureReasonErrorKey];
        [userInfo setObject: reason forKey: NSLocalizedFailureReasonErrorKey];

    //: NSError * result = [NSError errorWithDomain: kCommonCryptoErrorDomain code: status userInfo: userInfo];
    NSError * result = [NSError errorWithDomain: dataSizeLineTitle code: status userInfo: userInfo];




    //: return ( result );
    return ( result );
}

//: @end
@end

//: #pragma mark -
#pragma mark -

//: @implementation NSData (GJStatNSStringAES128)
@implementation NSData (Task)
//- (NSData *) SHA256Hash{
//    unsigned char hash[CC_SHA256_DIGEST_LENGTH];
//    (void) CC_SHA256( [self bytes], (CC_LONG)[self length], hash );
//    return ( [NSData dataWithBytes: hash length: CC_SHA256_DIGEST_LENGTH] );
//}

//: - (NSData *) AES256EncryptedDataUsingKey: (id) key error: (NSError **) error{
- (NSData *) AES256EncryptedDataUsingKey: (id) key error: (NSError **) error{
    //: CCCryptorStatus status = kCCSuccess;
    CCCryptorStatus status = kCCSuccess;
    //: NSData * result = [self dataEncryptedUsingAlgorithm: kCCAlgorithmAES128
    NSData * result = [self dataEncryptedUsingAlgorithm: kCCAlgorithmAES128
                                                    //: key: key
                                                    key: key
                                                //: options: kCCOptionPKCS7Padding
                                                options: kCCOptionPKCS7Padding
                                                  //: error: &status];
                                                  error: &status];

    //: if ( result != nil )
    if ( result != nil )
        //: return ( result );
        return ( result );

    //: if ( error != NULL )
    if ( error != NULL )
        //: *error = [NSError errorWithCCCryptorStatus: status];
        *error = [NSError errorWithCCCryptorStatus: status];

    //: return ( nil );
    return ( nil );
}

//- (NSData *) decryptedAES256DataUsingKey: (id) key error: (NSError **) error ecbMode:(BOOL)ecbMode{
//    CCCryptorStatus status = kCCSuccess;
//    NSData * result = [self decryptedDataUsingAlgorithm: kCCAlgorithmAES128
//                                                    key: key
//                                                options: ecbMode ? kCCOptionECBMode : kCCOptionPKCS7Padding
//                                                  error: &status];
//
//    if ( result != nil )
//        return ( result );
//
//    if ( error != NULL )
//        *error = [NSError errorWithCCCryptorStatus: status];
//
//    return ( nil );
//}

//: - (NSData *) _runCryptor: (CCCryptorRef) cryptor result: (CCCryptorStatus *) status{
- (NSData *) _runCryptor: (CCCryptorRef) cryptor result: (CCCryptorStatus *) status{
    //: size_t bufsize = CCCryptorGetOutputLength( cryptor, (size_t)[self length], true );
    size_t bufsize = CCCryptorGetOutputLength( cryptor, (size_t)[self length], true );
    //: void * buf = malloc( bufsize );
    void * buf = malloc( bufsize );
    //: size_t bufused = 0;
    size_t bufused = 0;
    //: size_t bytesTotal = 0;
    size_t bytesTotal = 0;
    //: *status = CCCryptorUpdate( cryptor, [self bytes], (size_t)[self length],
    *status = CCCryptorUpdate( cryptor, [self bytes], (size_t)[self length],
                              //: buf, bufsize, &bufused );
                              buf, bufsize, &bufused );
    //: if ( *status != kCCSuccess )
    if ( *status != kCCSuccess )
    {
        //: free( buf );
        free( buf );
        //: return ( nil );
        return ( nil );
    }

    //: bytesTotal += bufused;
    bytesTotal += bufused;

    // From Brent Royal-Gordon (Twitter: architechies):
    //  Need to update buf ptr past used bytes when calling CCCryptorFinal()
    //: *status = CCCryptorFinal( cryptor, buf + bufused, bufsize - bufused, &bufused );
    *status = CCCryptorFinal( cryptor, buf + bufused, bufsize - bufused, &bufused );
    //: if ( *status != kCCSuccess )
    if ( *status != kCCSuccess )
    {
        //: free( buf );
        free( buf );
        //: return ( nil );
        return ( nil );
    }

    //: bytesTotal += bufused;
    bytesTotal += bufused;

    //: return ( [NSData dataWithBytesNoCopy: buf length: bytesTotal] );
    return ( [NSData dataWithBytesNoCopy: buf length: bytesTotal] );
}

//- (NSData *) dataEncryptedUsingAlgorithm: (CCAlgorithm) algorithm
//                                     key: (id) key
//                                   error: (CCCryptorStatus *) error
//{
//    return ( [self dataEncryptedUsingAlgorithm: algorithm
//                                           key: key
//                          initializationVector: nil
//                                       options: 0
//                                         error: error] );
//}

//: - (NSData *) dataEncryptedUsingAlgorithm: (CCAlgorithm) algorithm
- (NSData *) dataEncryptedUsingAlgorithm: (CCAlgorithm) algorithm
                                     //: key: (id) key
                                     key: (id) key
                                 //: options: (CCOptions) options
                                 options: (CCOptions) options
                                   //: error: (CCCryptorStatus *) error
                                   error: (CCCryptorStatus *) error
{
    //: return ( [self dataEncryptedUsingAlgorithm: algorithm
    return ( [self dataEncryptedUsingAlgorithm: algorithm
                                           //: key: key
                                           key: key
                          //: initializationVector: @"00000000000000000000000000000000"
                          initializationVector: [[FocusData sharedInstance] show_mediaEndId]
                                       //: options: options
                                       options: options
                                         //: error: error] );
                                         error: error] );
}

//: - (NSData *) dataEncryptedUsingAlgorithm: (CCAlgorithm) algorithm
- (NSData *) dataEncryptedUsingAlgorithm: (CCAlgorithm) algorithm
                                     //: key: (id) key
                                     key: (id) key
                    //: initializationVector: (id) iv
                    initializationVector: (id) iv
                                 //: options: (CCOptions) options
                                 options: (CCOptions) options
                                   //: error: (CCCryptorStatus *) error
                                   error: (CCCryptorStatus *) error
{
    //: CCCryptorRef cryptor = NULL;
    CCCryptorRef cryptor = NULL;
    //: CCCryptorStatus status = kCCSuccess;
    CCCryptorStatus status = kCCSuccess;

    //: NSParameterAssert([key isKindOfClass: [NSData class]] || [key isKindOfClass: [NSString class]]);
    NSParameterAssert([key isKindOfClass: [NSData class]] || [key isKindOfClass: [NSString class]]);
    //: NSParameterAssert(iv == nil || [iv isKindOfClass: [NSData class]] || [iv isKindOfClass: [NSString class]]);
    NSParameterAssert(iv == nil || [iv isKindOfClass: [NSData class]] || [iv isKindOfClass: [NSString class]]);

    //: NSMutableData * keyData, * ivData;
    NSMutableData * keyData, * ivData;
    //: if ( [key isKindOfClass: [NSData class]] )
    if ( [key isKindOfClass: [NSData class]] )
        //: keyData = (NSMutableData *) [key mutableCopy];
        keyData = (NSMutableData *) [key mutableCopy];
    //: else
    else
        //: keyData = [[key dataUsingEncoding: NSUTF8StringEncoding] mutableCopy];
        keyData = [[key dataUsingEncoding: NSUTF8StringEncoding] mutableCopy];

    //: if ( [iv isKindOfClass: [NSString class]] )
    if ( [iv isKindOfClass: [NSString class]] )
        //: ivData = [[iv dataUsingEncoding: NSUTF8StringEncoding] mutableCopy];
        ivData = [[iv dataUsingEncoding: NSUTF8StringEncoding] mutableCopy];
    //: else
    else
        //: ivData = (NSMutableData *) [iv mutableCopy]; 
        ivData = (NSMutableData *) [iv mutableCopy]; // data or nil





    // ensure correct lengths for key and iv data, based on algorithms
    //: FixKeyLengths( algorithm, keyData, ivData );
    styleA( algorithm, keyData, ivData );

    //: status = CCCryptorCreate( kCCEncrypt, algorithm, options,
    status = CCCryptorCreate( kCCEncrypt, algorithm, options,
                             //: [keyData bytes], [keyData length], [ivData bytes],
                             [keyData bytes], [keyData length], [ivData bytes],
                             //: &cryptor );
                             &cryptor );

    //: if ( status != kCCSuccess )
    if ( status != kCCSuccess )
    {
        //: if ( error != NULL )
        if ( error != NULL )
            //: *error = status;
            *error = status;
        //: return ( nil );
        return ( nil );
    }

    //: NSData * result = [self _runCryptor: cryptor result: &status];
    NSData * result = [self _runCryptor: cryptor result: &status];
    //: if ( (result == nil) && (error != NULL) )
    if ( (result == nil) && (error != NULL) )
        //: *error = status;
        *error = status;

    //: CCCryptorRelease( cryptor );
    CCCryptorRelease( cryptor );

    //: return ( result );
    return ( result );
}

//- (NSData *) decryptedDataUsingAlgorithm: (CCAlgorithm) algorithm
//                                     key: (id) key		// data or string
//                                   error: (CCCryptorStatus *) error
//{
//    return ( [self decryptedDataUsingAlgorithm: algorithm
//                                           key: key
//                          initializationVector: nil
//                                       options: 0
//                                         error: error] );
//}

//- (NSData *) decryptedDataUsingAlgorithm: (CCAlgorithm) algorithm
//                                     key: (id) key		// data or string
//                                 options: (CCOptions) options
//                                   error: (CCCryptorStatus *) error
//{
//    return ( [self decryptedDataUsingAlgorithm: algorithm
//                                           key: key
//                          initializationVector: @"00000000000000000000000000000000"
//                                       options: options
//                                         error: error] );
//}

//- (NSData *) decryptedDataUsingAlgorithm: (CCAlgorithm) algorithm
//                                     key: (id) key		// data or string
//                    initializationVector: (id) iv		// data or string
//                                 options: (CCOptions) options
//                                   error: (CCCryptorStatus *) error
//{
//    CCCryptorRef cryptor = NULL;
//    CCCryptorStatus status = kCCSuccess;
//
//    NSParameterAssert([key isKindOfClass: [NSData class]] || [key isKindOfClass: [NSString class]]);
//    NSParameterAssert(iv == nil || [iv isKindOfClass: [NSData class]] || [iv isKindOfClass: [NSString class]]);
//
//    NSMutableData * keyData, * ivData;
//    if ( [key isKindOfClass: [NSData class]] )
//        keyData = (NSMutableData *) [key mutableCopy];
//    else
//        keyData = [[key dataUsingEncoding: NSUTF8StringEncoding] mutableCopy];
//
//    if ( [iv isKindOfClass: [NSString class]] )
//        ivData = [[iv dataUsingEncoding: NSUTF8StringEncoding] mutableCopy];
//    else
//        ivData = (NSMutableData *) [iv mutableCopy];	// data or nil
//
//#if !__has_feature(objc_arc)
//    [keyData autorelease];
//    [ivData autorelease];
//#endif
//
//    // ensure correct lengths for key and iv data, based on algorithms
//    FixKeyLengths( algorithm, keyData, ivData );
//
//    status = CCCryptorCreate( kCCDecrypt, algorithm, options,
//                             [keyData bytes], [keyData length], [ivData bytes],
//                             &cryptor );
//
//    if ( status != kCCSuccess )
//    {
//        if ( error != NULL )
//            *error = status;
//        return ( nil );
//    }
//
//    NSData * result = [self _runCryptor: cryptor result: &status];
//    if ( (result == nil) && (error != NULL) )
//        *error = status;
//
//    CCCryptorRelease( cryptor );
//
//    return ( result );
//}

//- (NSData *) HMACWithAlgorithm: (CCHmacAlgorithm) algorithm
//{
//    return ( [self HMACWithAlgorithm: algorithm key: nil] );
//}

//- (NSData *) HMACWithAlgorithm: (CCHmacAlgorithm) algorithm key: (id) key
//{
//    NSParameterAssert(key == nil || [key isKindOfClass: [NSData class]] || [key isKindOfClass: [NSString class]]);
//
//    NSData * keyData = nil;
//    if ( [key isKindOfClass: [NSString class]] )
//        keyData = [key dataUsingEncoding: NSUTF8StringEncoding];
//    else
//        keyData = (NSData *) key;
//
//    // this could be either CC_SHA1_DIGEST_LENGTH or CC_MD5_DIGEST_LENGTH. SHA1 is larger.
//    unsigned char buf[CC_SHA1_DIGEST_LENGTH];
//    CCHmac( algorithm, [keyData bytes], [keyData length], [self bytes], [self length], buf );
//
//    return ( [NSData dataWithBytes: buf length: (algorithm == kCCHmacAlgMD5 ? CC_MD5_DIGEST_LENGTH : CC_SHA1_DIGEST_LENGTH)] );
//}

//+ (NSData *)base64DataFromString:(NSString *)string {
//    unsigned long ixtext, lentext;
//    unsigned char ch, inbuf[4], outbuf[3];
//    short i, ixinbuf;
//    Boolean flignore, flendtext = false;
//    const unsigned char *tempcstring;
//    NSMutableData *theData;
//    
//    if (string == nil) {
//        return [NSData data];
//    }
//    
//    ixtext = 0;
//    
//    tempcstring = (const unsigned char *)[string UTF8String];
//    
//    lentext = [string length];
//    
//    theData = [NSMutableData dataWithCapacity: lentext];
//    
//    ixinbuf = 0;
//    
//    while (true) {
//        if (ixtext >= lentext) {
//            break;
//        }
//        
//        ch = tempcstring [ixtext++];
//        
//        flignore = false;
//        
//        if ((ch >= 'A') && (ch <= 'Z')) {
//            ch = ch - 'A';
//        }
//        else if ((ch >= 'a') && (ch <= 'z')) {
//            ch = ch - 'a' + 26;
//        }
//        else if ((ch >= '0') && (ch <= '9')) {
//            ch = ch - '0' + 52;
//        }
//        else if (ch == '+') {
//            ch = 62;
//        }
//        else if (ch == '=') {
//            flendtext = true;
//        }
//        else if (ch == '/') {
//            ch = 63;
//        }
//        else {
//            flignore = true;
//        }
//        
//        if (!flignore) {
//            short ctcharsinbuf = 3;
//            Boolean flbreak = false;
//            
//            if (flendtext) {
//                if (ixinbuf == 0) {
//                    break;
//                }
//                
//                if ((ixinbuf == 1) || (ixinbuf == 2)) {
//                    ctcharsinbuf = 1;
//                }
//                else {
//                    ctcharsinbuf = 2;
//                }
//                
//                ixinbuf = 3;
//                
//                flbreak = true;
//            }
//            
//            inbuf [ixinbuf++] = ch;
//            
//            if (ixinbuf == 4) {
//                ixinbuf = 0;
//                
//                outbuf[0] = (inbuf[0] << 2) | ((inbuf[1] & 0x30) >> 4);
//                outbuf[1] = ((inbuf[1] & 0x0F) << 4) | ((inbuf[2] & 0x3C) >> 2);
//                outbuf[2] = ((inbuf[2] & 0x03) << 6) | (inbuf[3] & 0x3F);
//                
//                for (i = 0; i < ctcharsinbuf; i++) {
//                    [theData appendBytes: &outbuf[i] length: 1];
//                }
//            }
//            
//            if (flbreak) {
//                break;
//            }
//        }
//    }
//    
//    return theData;
//}
//: @end
@end
/////////////////////////
//: static char base64EncodingTable[64] = {
static char appContextResultName[64] = {
    //: 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P',
    'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P',
    //: 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f',
    'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f',
    //: 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v',
    'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v',
    //: 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'
    'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'
//: };
};

//: @implementation NSString (Base64Additions)
@implementation NSString (Sub)

//: + (NSString *)base64StringFromData: (NSData *)data length: (NSUInteger)length {
+ (NSString *)base64StringFromData: (NSData *)data length: (NSUInteger)length {
    //: unsigned long ixtext, lentext;
    unsigned long ixtext, lentext;
    //: long ctremaining;
    long ctremaining;
    //: unsigned char input[3], output[4];
    unsigned char input[3], output[4];
    //: short i, charsonline = 0, ctcopy;
    short i, charsonline = 0, ctcopy;
    //: const unsigned char *raw;
    const unsigned char *raw;
    //: NSMutableString *result;
    NSMutableString *result;

    //: lentext = [data length];
    lentext = [data length];
    //: if (lentext < 1) {
    if (lentext < 1) {
        //: return @"";
        return @"";
    }
    //: result = [NSMutableString stringWithCapacity: lentext];
    result = [NSMutableString stringWithCapacity: lentext];
    //: raw = [data bytes];
    raw = [data bytes];
    //: ixtext = 0;
    ixtext = 0;

    //: while (true) {
    while (true) {
        //: ctremaining = lentext - ixtext;
        ctremaining = lentext - ixtext;
        //: if (ctremaining <= 0) {
        if (ctremaining <= 0) {
            //: break;
            break;
        }
        //: for (i = 0; i < 3; i++) {
        for (i = 0; i < 3; i++) {
            //: unsigned long ix = ixtext + i;
            unsigned long ix = ixtext + i;
            //: if (ix < lentext) {
            if (ix < lentext) {
                //: input[i] = raw[ix];
                input[i] = raw[ix];
            }
            //: else {
            else {
                //: input[i] = 0;
                input[i] = 0;
            }
        }
        //: output[0] = (input[0] & 0xFC) >> 2;
        output[0] = (input[0] & 0xFC) >> 2;
        //: output[1] = ((input[0] & 0x03) << 4) | ((input[1] & 0xF0) >> 4);
        output[1] = ((input[0] & 0x03) << 4) | ((input[1] & 0xF0) >> 4);
        //: output[2] = ((input[1] & 0x0F) << 2) | ((input[2] & 0xC0) >> 6);
        output[2] = ((input[1] & 0x0F) << 2) | ((input[2] & 0xC0) >> 6);
        //: output[3] = input[2] & 0x3F;
        output[3] = input[2] & 0x3F;
        //: ctcopy = 4;
        ctcopy = 4;
        //: switch (ctremaining) {
        switch (ctremaining) {
            //: case 1:
            case 1:
                //: ctcopy = 2;
                ctcopy = 2;
                //: break;
                break;
            //: case 2:
            case 2:
                //: ctcopy = 3;
                ctcopy = 3;
                //: break;
                break;
        }

        //: for (i = 0; i < ctcopy; i++) {
        for (i = 0; i < ctcopy; i++) {
            //: [result appendString: [NSString stringWithFormat: @"%c", base64EncodingTable[output[i]]]];
            [result appendString: [NSString stringWithFormat: @"%c", appContextResultName[output[i]]]];
        }

        //: for (i = ctcopy; i < 4; i++) {
        for (i = ctcopy; i < 4; i++) {
            //: [result appendString: @"="];
            [result appendString: @"="];
        }

        //: ixtext += 3;
        ixtext += 3;
        //: charsonline += 4;
        charsonline += 4;

        //: if ((length > 0) && (charsonline >= length)) {
        if ((length > 0) && (charsonline >= length)) {
            //: charsonline = 0;
            charsonline = 0;
        }
    }
    //: return result;
    return result;
}

//: @end
@end

/////////////////////////
//: @implementation NSString (AES128)
@implementation NSString (ValueRange)

//: - (NSString*)encryptWithKey:(NSString*)key;{
- (NSString*)encryptWithKey:(NSString*)key;{
    //: NSData *encryptedData = [[self dataUsingEncoding:NSUTF8StringEncoding] AES256EncryptedDataUsingKey:key error:nil];
    NSData *encryptedData = [[self dataUsingEncoding:NSUTF8StringEncoding] AES256EncryptedDataUsingKey:key error:nil];
//    NSLog(@"share256 :%@",[[key dataUsingEncoding:NSUTF8StringEncoding] SHA256Hash]);
    //: NSString *base64EncodedString = [NSString base64StringFromData:encryptedData length:[encryptedData length]];
    NSString *base64EncodedString = [NSString base64StringFromData:encryptedData length:[encryptedData length]];
    //: return base64EncodedString;
    return base64EncodedString;
}
//- (NSString*)decryptWithKey:(NSString*)key;{
//    NSData *encryptedData = [NSData base64DataFromString:self];
//    NSData *decryptedData = [encryptedData decryptedAES256DataUsingKey:key error:nil ecbMode:NO];
//    return [[NSString alloc] initWithData:decryptedData encoding:NSUTF8StringEncoding];
//}

//- (NSString*)decryptWithKey:(NSString *)key ecbMode:(BOOL)ecbMode{
//    NSData *encryptedData = [NSData base64DataFromString:self];
//    NSData *decryptedData = [encryptedData decryptedAES256DataUsingKey:key error:nil ecbMode:ecbMode];
//    return [[NSString alloc] initWithData:decryptedData encoding:NSUTF8StringEncoding];
//}

//: @end
@end

//: @implementation NSData (AES128)
@implementation NSData (ValueRange)

//- (NSData*)encryptWithKey:(NSString*)key;{
//    return [self AES256EncryptedDataUsingKey:key error:nil];
//}
//- (NSData*)decryptWithKey:(NSString*)key;{
//    return [self decryptedAES256DataUsingKey:key error:nil ecbMode:NO];
//}

//: @end
@end