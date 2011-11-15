//
//  JavascriptCore-dlsym.m
//  iPhoneTest
//
//  Created by Patrick Geiller on 11/10/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import "JavaScriptCore.h"
#import "JavascriptCore-dlsym.h"


//
// JSBase
//
JSValueRef (*_JSEvaluateScript)(JSContextRef ctx, JSStringRef script, JSObjectRef thisObject, JSStringRef sourceURL, int startingLineNumber, JSValueRef* exception);
JSValueRef JSEvaluateScript(JSContextRef ctx, JSStringRef script, JSObjectRef thisObject, JSStringRef sourceURL, int startingLineNumber, JSValueRef* exception)
{
	return	_JSEvaluateScript(ctx, script, thisObject, sourceURL, startingLineNumber, exception);
}

void (*_JSGarbageCollect)(JSContextRef ctx);
void JSGarbageCollect(JSContextRef ctx)
{
	return	_JSGarbageCollect(ctx);
}

bool (*_JSCheckScriptSyntax)(JSContextRef ctx, JSStringRef script, JSStringRef sourceURL, int startingLineNumber, JSValueRef* exception);
bool JSCheckScriptSyntax(JSContextRef ctx, JSStringRef script, JSStringRef sourceURL, int startingLineNumber, JSValueRef* exception)
{
	return _JSCheckScriptSyntax(ctx, script, sourceURL, startingLineNumber, exception);
}


//
// JSContextRef
//
JSGlobalContextRef (*_JSGlobalContextCreate)(JSClassRef globalObjectClass);
JSGlobalContextRef JSGlobalContextCreate(JSClassRef globalObjectClass)
{
	return	_JSGlobalContextCreate(globalObjectClass);
}

JSGlobalContextRef (*_JSGlobalContextRetain)(JSGlobalContextRef ctx);
JSGlobalContextRef JSGlobalContextRetain(JSGlobalContextRef ctx)
{
	return	_JSGlobalContextRetain(ctx);
}

void (*_JSGlobalContextRelease)(JSGlobalContextRef ctx);
void JSGlobalContextRelease(JSGlobalContextRef ctx)
{
	_JSGlobalContextRelease(ctx);
}

JSObjectRef (*_JSContextGetGlobalObject)(JSContextRef ctx);
JSObjectRef JSContextGetGlobalObject(JSContextRef ctx)
{
	return	_JSContextGetGlobalObject(ctx);
}


//
// JSObjectRef
//
JSClassRef (*_JSClassCreate)(const JSClassDefinition* definition);
JSClassRef JSClassCreate(const JSClassDefinition* definition)
{
	return	_JSClassCreate(definition);
}

JSClassRef (*_JSClassRetain)(JSClassRef jsClass);
JSClassRef JSClassRetain(JSClassRef jsClass)
{
	return	_JSClassRetain(jsClass);
}

void (*_JSClassRelease)(JSClassRef jsClass);
void JSClassRelease(JSClassRef jsClass)
{
	_JSClassRelease(jsClass);
}

JSObjectRef (*_JSObjectMake)(JSContextRef ctx, JSClassRef jsClass, void* data);
JSObjectRef JSObjectMake(JSContextRef ctx, JSClassRef jsClass, void* data)
{
	return	_JSObjectMake(ctx, jsClass, data);
}

JSObjectRef (*_JSObjectMakeFunctionWithCallback)(JSContextRef ctx, JSStringRef name, JSObjectCallAsFunctionCallback callAsFunction);
JSObjectRef JSObjectMakeFunctionWithCallback(JSContextRef ctx, JSStringRef name, JSObjectCallAsFunctionCallback callAsFunction)
{
	return	_JSObjectMakeFunctionWithCallback(ctx, name, callAsFunction);
}

JSObjectRef (*_JSObjectMakeConstructor)(JSContextRef ctx, JSClassRef jsClass, JSObjectCallAsConstructorCallback callAsConstructor);
JSObjectRef JSObjectMakeConstructor(JSContextRef ctx, JSClassRef jsClass, JSObjectCallAsConstructorCallback callAsConstructor)
{
	return	_JSObjectMakeConstructor(ctx, jsClass, callAsConstructor);
}

JSObjectRef (*_JSObjectMakeFunction)(JSContextRef ctx, JSStringRef name, unsigned parameterCount, const JSStringRef parameterNames[], JSStringRef body, JSStringRef sourceURL, int startingLineNumber, JSValueRef* exception);
JSObjectRef JSObjectMakeFunction(JSContextRef ctx, JSStringRef name, unsigned parameterCount, const JSStringRef parameterNames[], JSStringRef body, JSStringRef sourceURL, int startingLineNumber, JSValueRef* exception)
{
	return	_JSObjectMakeFunction(ctx, name, parameterCount, parameterNames, body, sourceURL, startingLineNumber, exception);
}

JSValueRef (*_JSObjectGetPrototype)(JSContextRef ctx, JSObjectRef object);
JSValueRef JSObjectGetPrototype(JSContextRef ctx, JSObjectRef object)
{
	return	_JSObjectGetPrototype(ctx, object);
}

void (*_JSObjectSetPrototype)(JSContextRef ctx, JSObjectRef object, JSValueRef value);
void JSObjectSetPrototype(JSContextRef ctx, JSObjectRef object, JSValueRef value)
{
	_JSObjectSetPrototype(ctx, object, value);
}

bool (*_JSObjectHasProperty)(JSContextRef ctx, JSObjectRef object, JSStringRef propertyName);
bool JSObjectHasProperty(JSContextRef ctx, JSObjectRef object, JSStringRef propertyName)
{
	return	_JSObjectHasProperty(ctx, object, propertyName);
}

JSValueRef (*_JSObjectGetProperty)(JSContextRef ctx, JSObjectRef object, JSStringRef propertyName, JSValueRef* exception);
JSValueRef JSObjectGetProperty(JSContextRef ctx, JSObjectRef object, JSStringRef propertyName, JSValueRef* exception)
{
	return	_JSObjectGetProperty(ctx, object, propertyName, exception);
}

void (*_JSObjectSetProperty)(JSContextRef ctx, JSObjectRef object, JSStringRef propertyName, JSValueRef value, JSPropertyAttributes attributes, JSValueRef* exception);
void JSObjectSetProperty(JSContextRef ctx, JSObjectRef object, JSStringRef propertyName, JSValueRef value, JSPropertyAttributes attributes, JSValueRef* exception)
{
	_JSObjectSetProperty(ctx, object, propertyName, value, attributes, exception);
}

bool (*_JSObjectDeleteProperty)(JSContextRef ctx, JSObjectRef object, JSStringRef propertyName, JSValueRef* exception);
bool JSObjectDeleteProperty(JSContextRef ctx, JSObjectRef object, JSStringRef propertyName, JSValueRef* exception)
{
	return	_JSObjectDeleteProperty(ctx, object, propertyName, exception);
}

JSValueRef (*_JSObjectGetPropertyAtIndex)(JSContextRef ctx, JSObjectRef object, unsigned propertyIndex, JSValueRef* exception);
JSValueRef JSObjectGetPropertyAtIndex(JSContextRef ctx, JSObjectRef object, unsigned propertyIndex, JSValueRef* exception)
{
	return	_JSObjectGetPropertyAtIndex(ctx, object, propertyIndex, exception);
}

void (*_JSObjectSetPropertyAtIndex)(JSContextRef ctx, JSObjectRef object, unsigned propertyIndex, JSValueRef value, JSValueRef* exception);
void JSObjectSetPropertyAtIndex(JSContextRef ctx, JSObjectRef object, unsigned propertyIndex, JSValueRef value, JSValueRef* exception)
{
	_JSObjectSetPropertyAtIndex(ctx, object, propertyIndex, value, exception);
}

void* (*_JSObjectGetPrivate)(JSObjectRef object);
void* JSObjectGetPrivate(JSObjectRef object)
{
	return	_JSObjectGetPrivate(object);
}

bool (*_JSObjectSetPrivate)(JSObjectRef object, void* data);
bool JSObjectSetPrivate(JSObjectRef object, void* data)
{
	return	_JSObjectSetPrivate(object, data);
}

bool (*_JSObjectIsFunction)(JSContextRef ctx, JSObjectRef object);
bool JSObjectIsFunction(JSContextRef ctx, JSObjectRef object)
{
	return	_JSObjectIsFunction(ctx, object);
}

JSValueRef (*_JSObjectCallAsFunction)(JSContextRef ctx, JSObjectRef object, JSObjectRef thisObject, size_t argumentCount, const JSValueRef arguments[], JSValueRef* exception);
JSValueRef JSObjectCallAsFunction(JSContextRef ctx, JSObjectRef object, JSObjectRef thisObject, size_t argumentCount, const JSValueRef arguments[], JSValueRef* exception)
{
	return	_JSObjectCallAsFunction(ctx, object, thisObject, argumentCount, arguments, exception);
}

bool (*_JSObjectIsConstructor)(JSContextRef ctx, JSObjectRef object);
bool JSObjectIsConstructor(JSContextRef ctx, JSObjectRef object)
{
	return	_JSObjectIsConstructor(ctx, object);
}

JSObjectRef (*_JSObjectCallAsConstructor)(JSContextRef ctx, JSObjectRef object, size_t argumentCount, const JSValueRef arguments[], JSValueRef* exception);
JSObjectRef JSObjectCallAsConstructor(JSContextRef ctx, JSObjectRef object, size_t argumentCount, const JSValueRef arguments[], JSValueRef* exception)
{
	return	_JSObjectCallAsConstructor(ctx, object, argumentCount, arguments, exception);
}

JSPropertyNameArrayRef (*_JSObjectCopyPropertyNames)(JSContextRef ctx, JSObjectRef object);
JSPropertyNameArrayRef JSObjectCopyPropertyNames(JSContextRef ctx, JSObjectRef object)
{
	return	_JSObjectCopyPropertyNames(ctx, object);
}

JSPropertyNameArrayRef (*_JSPropertyNameArrayRetain)(JSPropertyNameArrayRef array);
JSPropertyNameArrayRef JSPropertyNameArrayRetain(JSPropertyNameArrayRef array)
{
	return	_JSPropertyNameArrayRetain(array);
}

void (*_JSPropertyNameArrayRelease)(JSPropertyNameArrayRef array);
void JSPropertyNameArrayRelease(JSPropertyNameArrayRef array)
{
	_JSPropertyNameArrayRelease(array);
}

size_t (*_JSPropertyNameArrayGetCount)(JSPropertyNameArrayRef array);
size_t JSPropertyNameArrayGetCount(JSPropertyNameArrayRef array)
{
	return	_JSPropertyNameArrayGetCount(array);
}

JSStringRef (*_JSPropertyNameArrayGetNameAtIndex)(JSPropertyNameArrayRef array, size_t index);
JSStringRef JSPropertyNameArrayGetNameAtIndex(JSPropertyNameArrayRef array, size_t index)
{
	return	_JSPropertyNameArrayGetNameAtIndex(array, index);
}

void (*_JSPropertyNameAccumulatorAddName)(JSPropertyNameAccumulatorRef accumulator, JSStringRef propertyName);
void JSPropertyNameAccumulatorAddName(JSPropertyNameAccumulatorRef accumulator, JSStringRef propertyName)
{
	_JSPropertyNameAccumulatorAddName(accumulator, propertyName);
}


//
// JSStringRef
//
JSStringRef (*_JSStringCreateWithCharacters)(const JSChar* chars, size_t numChars);
JSStringRef JSStringCreateWithCharacters(const JSChar* chars, size_t numChars)
{
	return	_JSStringCreateWithCharacters(chars, numChars);
}

JSStringRef (*_JSStringCreateWithUTF8CString)(const char* string);
JSStringRef JSStringCreateWithUTF8CString(const char* string)
{
	return	_JSStringCreateWithUTF8CString(string);
}

JSStringRef (*_JSStringRetain)(JSStringRef string);
JSStringRef JSStringRetain(JSStringRef string)
{
	return	_JSStringRetain(string);
}

void (*_JSStringRelease)(JSStringRef string);
void JSStringRelease(JSStringRef string)
{
	_JSStringRelease(string);
}

size_t (*_JSStringGetLength)(JSStringRef string);
size_t JSStringGetLength(JSStringRef string)
{
	return	_JSStringGetLength(string);
}

const JSChar* (*_JSStringGetCharactersPtr)(JSStringRef string);
const JSChar* JSStringGetCharactersPtr(JSStringRef string)
{
	return	_JSStringGetCharactersPtr(string);
}

size_t (*_JSStringGetMaximumUTF8CStringSize)(JSStringRef string);
size_t JSStringGetMaximumUTF8CStringSize(JSStringRef string)
{
	return	_JSStringGetMaximumUTF8CStringSize(string);
}

size_t (*_JSStringGetUTF8CString)(JSStringRef string, char* buffer, size_t bufferSize);
size_t JSStringGetUTF8CString(JSStringRef string, char* buffer, size_t bufferSize)
{
	return	_JSStringGetUTF8CString(string, buffer, bufferSize);
}


bool (*_JSStringIsEqual)(JSStringRef a, JSStringRef b);
bool JSStringIsEqual(JSStringRef a, JSStringRef b)
{
	return	_JSStringIsEqual(a, b);
}

bool (*_JSStringIsEqualToUTF8CString)(JSStringRef a, const char* b);
bool JSStringIsEqualToUTF8CString(JSStringRef a, const char* b)
{
	return	_JSStringIsEqualToUTF8CString(a, b);
}


//
// JSStringRefCF
//
JSStringRef (*_JSStringCreateWithCFString)(CFStringRef string);
JSStringRef JSStringCreateWithCFString(CFStringRef string)
{
	return	_JSStringCreateWithCFString(string);
}

CFStringRef (*_JSStringCopyCFString)(CFAllocatorRef alloc, JSStringRef string);
CFStringRef JSStringCopyCFString(CFAllocatorRef alloc, JSStringRef string)
{
	return	_JSStringCopyCFString(alloc, string);
}


//
// JSValueRef
//
JSType (*_JSValueGetType)(JSContextRef ctx, JSValueRef value);
JSType JSValueGetType(JSContextRef ctx, JSValueRef value)
{
	return	_JSValueGetType(ctx, value);
}

bool (*_JSValueIsUndefined)(JSContextRef ctx, JSValueRef value);
bool JSValueIsUndefined(JSContextRef ctx, JSValueRef value)
{
	return	_JSValueIsUndefined(ctx, value);
}

bool (*_JSValueIsNull)(JSContextRef ctx, JSValueRef value);
bool JSValueIsNull(JSContextRef ctx, JSValueRef value)
{
	return	_JSValueIsNull(ctx, value);
}

bool (*_JSValueIsBoolean)(JSContextRef ctx, JSValueRef value);
bool JSValueIsBoolean(JSContextRef ctx, JSValueRef value)
{
	return	_JSValueIsBoolean(ctx, value);
}

bool (*_JSValueIsNumber)(JSContextRef ctx, JSValueRef value);
bool JSValueIsNumber(JSContextRef ctx, JSValueRef value)
{
	return	_JSValueIsNumber(ctx, value);
}

bool (*_JSValueIsString)(JSContextRef ctx, JSValueRef value);
bool JSValueIsString(JSContextRef ctx, JSValueRef value)
{
	return	_JSValueIsString(ctx, value);
}

bool (*_JSValueIsObject)(JSContextRef ctx, JSValueRef value);
bool JSValueIsObject(JSContextRef ctx, JSValueRef value)
{
	return	_JSValueIsObject(ctx, value);
}

bool (*_JSValueIsObjectOfClass)(JSContextRef ctx, JSValueRef value, JSClassRef jsClass);
bool JSValueIsObjectOfClass(JSContextRef ctx, JSValueRef value, JSClassRef jsClass)
{
	return	_JSValueIsObjectOfClass(ctx, value, jsClass);
}

bool (*_JSValueIsEqual)(JSContextRef ctx, JSValueRef a, JSValueRef b, JSValueRef* exception);
bool JSValueIsEqual(JSContextRef ctx, JSValueRef a, JSValueRef b, JSValueRef* exception)
{
	return	_JSValueIsEqual(ctx, a, b, exception);
}

bool (*_JSValueIsStrictEqual)(JSContextRef ctx, JSValueRef a, JSValueRef b);
bool JSValueIsStrictEqual(JSContextRef ctx, JSValueRef a, JSValueRef b)
{
	return	_JSValueIsStrictEqual(ctx, a, b);
}

bool (*_JSValueIsInstanceOfConstructor)(JSContextRef ctx, JSValueRef value, JSObjectRef constructor, JSValueRef* exception);
bool JSValueIsInstanceOfConstructor(JSContextRef ctx, JSValueRef value, JSObjectRef constructor, JSValueRef* exception)
{
	return	_JSValueIsInstanceOfConstructor(ctx, value, constructor, exception);
}

JSValueRef (*_JSValueMakeUndefined)(JSContextRef ctx);
JSValueRef JSValueMakeUndefined(JSContextRef ctx)
{
	return	_JSValueMakeUndefined(ctx);
}

JSValueRef (*_JSValueMakeNull)(JSContextRef ctx);
JSValueRef JSValueMakeNull(JSContextRef ctx)
{
	return	_JSValueMakeNull(ctx);
}

JSValueRef (*_JSValueMakeBoolean)(JSContextRef ctx, bool boolean);
JSValueRef JSValueMakeBoolean(JSContextRef ctx, bool boolean)
{
	return	_JSValueMakeBoolean(ctx, boolean);
}

JSValueRef (*_JSValueMakeNumber)(JSContextRef ctx, double number);
JSValueRef JSValueMakeNumber(JSContextRef ctx, double number)
{
	return	_JSValueMakeNumber(ctx, number);
}

JSValueRef (*_JSValueMakeString)(JSContextRef ctx, JSStringRef string);
JSValueRef JSValueMakeString(JSContextRef ctx, JSStringRef string)
{
	return	_JSValueMakeString(ctx, string);
}

bool (*_JSValueToBoolean)(JSContextRef ctx, JSValueRef value);
bool JSValueToBoolean(JSContextRef ctx, JSValueRef value)
{
	return	_JSValueToBoolean(ctx, value);
}

double (*_JSValueToNumber)(JSContextRef ctx, JSValueRef value, JSValueRef* exception);
double JSValueToNumber(JSContextRef ctx, JSValueRef value, JSValueRef* exception)
{
	return	_JSValueToNumber(ctx, value, exception);
}

JSStringRef (*_JSValueToStringCopy)(JSContextRef ctx, JSValueRef value, JSValueRef* exception);
JSStringRef JSValueToStringCopy(JSContextRef ctx, JSValueRef value, JSValueRef* exception)
{
	return	_JSValueToStringCopy(ctx, value, exception);
}

JSObjectRef (*_JSValueToObject)(JSContextRef ctx, JSValueRef value, JSValueRef* exception);
JSObjectRef JSValueToObject(JSContextRef ctx, JSValueRef value, JSValueRef* exception)
{
	return	_JSValueToObject(ctx, value, exception);
}

void (*_JSValueProtect)(JSContextRef ctx, JSValueRef value);
void JSValueProtect(JSContextRef ctx, JSValueRef value)
{
	_JSValueProtect(ctx, value);
}

void (*_JSValueUnprotect)(JSContextRef ctx, JSValueRef value);
void JSValueUnprotect(JSContextRef ctx, JSValueRef value)
{
	_JSValueUnprotect(ctx, value);
}








#include <dlfcn.h>
@implementation JSCocoaSymbolFetcher
+ (void)populateJavascriptCoreSymbols
{
	_JSEvaluateScript = dlsym(RTLD_NEXT, "JSEvaluateScript");
	_JSCheckScriptSyntax = dlsym(RTLD_NEXT, "JSCheckScriptSyntax");
	_JSGarbageCollect = dlsym(RTLD_NEXT, "JSGarbageCollect");
	_JSGlobalContextCreate = dlsym(RTLD_NEXT, "JSGlobalContextCreate");
	_JSGlobalContextRetain = dlsym(RTLD_NEXT, "JSGlobalContextRetain");
	_JSGlobalContextRelease = dlsym(RTLD_NEXT, "JSGlobalContextRelease");
	_JSContextGetGlobalObject = dlsym(RTLD_NEXT, "JSContextGetGlobalObject");
	_JSClassCreate = dlsym(RTLD_NEXT, "JSClassCreate");
	_JSClassRetain = dlsym(RTLD_NEXT, "JSClassRetain");
	_JSClassRelease = dlsym(RTLD_NEXT, "JSClassRelease");
	_JSObjectMake = dlsym(RTLD_NEXT, "JSObjectMake");
	_JSObjectMakeFunctionWithCallback = dlsym(RTLD_NEXT, "JSObjectMakeFunctionWithCallback");
	_JSObjectMakeConstructor = dlsym(RTLD_NEXT, "JSObjectMakeConstructor");
	_JSObjectMakeFunction = dlsym(RTLD_NEXT, "JSObjectMakeFunction");
	_JSObjectGetPrototype = dlsym(RTLD_NEXT, "JSObjectGetPrototype");
	_JSObjectSetPrototype = dlsym(RTLD_NEXT, "JSObjectSetPrototype");
	_JSObjectHasProperty = dlsym(RTLD_NEXT, "JSObjectHasProperty");
	_JSObjectGetProperty = dlsym(RTLD_NEXT, "JSObjectGetProperty");
	_JSObjectSetProperty = dlsym(RTLD_NEXT, "JSObjectSetProperty");
	_JSObjectDeleteProperty = dlsym(RTLD_NEXT, "JSObjectDeleteProperty");
	_JSObjectGetPropertyAtIndex = dlsym(RTLD_NEXT, "JSObjectGetPropertyAtIndex");
	_JSObjectSetPropertyAtIndex = dlsym(RTLD_NEXT, "JSObjectSetPropertyAtIndex");
	_JSObjectGetPrivate = dlsym(RTLD_NEXT, "JSObjectGetPrivate");
	_JSObjectSetPrivate = dlsym(RTLD_NEXT, "JSObjectSetPrivate");
	_JSObjectIsFunction = dlsym(RTLD_NEXT, "JSObjectIsFunction");
	_JSObjectCallAsFunction = dlsym(RTLD_NEXT, "JSObjectCallAsFunction");
	_JSObjectIsConstructor = dlsym(RTLD_NEXT, "JSObjectIsConstructor");
	_JSObjectCallAsConstructor = dlsym(RTLD_NEXT, "JSObjectCallAsConstructor");
	_JSObjectCopyPropertyNames = dlsym(RTLD_NEXT, "JSObjectCopyPropertyNames");
	_JSPropertyNameArrayRetain = dlsym(RTLD_NEXT, "JSPropertyNameArrayRetain");
	_JSPropertyNameArrayRelease = dlsym(RTLD_NEXT, "JSPropertyNameArrayRelease");
	_JSPropertyNameArrayGetCount = dlsym(RTLD_NEXT, "JSPropertyNameArrayGetCount");
	_JSPropertyNameArrayGetNameAtIndex = dlsym(RTLD_NEXT, "JSPropertyNameArrayGetNameAtIndex");
	_JSPropertyNameAccumulatorAddName = dlsym(RTLD_NEXT, "JSPropertyNameAccumulatorAddName");
	_JSStringCreateWithCharacters = dlsym(RTLD_NEXT, "JSStringCreateWithCharacters");
	_JSStringCreateWithUTF8CString = dlsym(RTLD_NEXT, "JSStringCreateWithUTF8CString");
	_JSStringRetain = dlsym(RTLD_NEXT, "JSStringRetain");
	_JSStringRelease = dlsym(RTLD_NEXT, "JSStringRelease");
	_JSStringGetLength = dlsym(RTLD_NEXT, "JSStringGetLength");
	_JSStringGetCharactersPtr = dlsym(RTLD_NEXT, "JSStringGetCharactersPtr");
	_JSStringGetMaximumUTF8CStringSize = dlsym(RTLD_NEXT, "JSStringGetMaximumUTF8CStringSize");
	_JSStringGetUTF8CString = dlsym(RTLD_NEXT, "JSStringGetUTF8CString");
	_JSStringIsEqual = dlsym(RTLD_NEXT, "JSStringIsEqual");
	_JSStringIsEqualToUTF8CString = dlsym(RTLD_NEXT, "JSStringIsEqualToUTF8CString");
	_JSStringCreateWithCFString = dlsym(RTLD_NEXT, "JSStringCreateWithCFString");
	_JSStringCopyCFString = dlsym(RTLD_NEXT, "JSStringCopyCFString");
	_JSValueGetType = dlsym(RTLD_NEXT, "JSValueGetType");
	_JSValueIsUndefined = dlsym(RTLD_NEXT, "JSValueIsUndefined");
	_JSValueIsNull = dlsym(RTLD_NEXT, "JSValueIsNull");
	_JSValueIsBoolean = dlsym(RTLD_NEXT, "JSValueIsBoolean");
	_JSValueIsNumber = dlsym(RTLD_NEXT, "JSValueIsNumber");
	_JSValueIsString = dlsym(RTLD_NEXT, "JSValueIsString");
	_JSValueIsObject = dlsym(RTLD_NEXT, "JSValueIsObject");
	_JSValueIsObjectOfClass = dlsym(RTLD_NEXT, "JSValueIsObjectOfClass");
	_JSValueIsEqual = dlsym(RTLD_NEXT, "JSValueIsEqual");
	_JSValueIsStrictEqual = dlsym(RTLD_NEXT, "JSValueIsStrictEqual");
	_JSValueIsInstanceOfConstructor = dlsym(RTLD_NEXT, "JSValueIsInstanceOfConstructor");
	_JSValueMakeUndefined = dlsym(RTLD_NEXT, "JSValueMakeUndefined");
	_JSValueMakeNull = dlsym(RTLD_NEXT, "JSValueMakeNull");
	_JSValueMakeBoolean = dlsym(RTLD_NEXT, "JSValueMakeBoolean");
	_JSValueMakeNumber = dlsym(RTLD_NEXT, "JSValueMakeNumber");
	_JSValueMakeString = dlsym(RTLD_NEXT, "JSValueMakeString");
	_JSValueToBoolean = dlsym(RTLD_NEXT, "JSValueToBoolean");
	_JSValueToNumber = dlsym(RTLD_NEXT, "JSValueToNumber");
	_JSValueToStringCopy = dlsym(RTLD_NEXT, "JSValueToStringCopy");
	_JSValueToObject = dlsym(RTLD_NEXT, "JSValueToObject");
	_JSValueProtect = dlsym(RTLD_NEXT, "JSValueProtect");
	_JSValueUnprotect = dlsym(RTLD_NEXT, "JSValueUnprotect");
}
@end
