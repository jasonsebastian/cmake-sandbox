#include <jni.h>
#include <string>
#include <add.h>
#include <subtract.h>

extern "C" JNIEXPORT jint JNICALL Java_com_example_android_MainActivity_add(
        JNIEnv __unused *env,
        jobject __unused obj,
        jint a,
        jint b) {
    return add(a, b);
}

extern "C" JNIEXPORT jint JNICALL Java_com_example_android_MainActivity_subtract(
        JNIEnv __unused *env,
        jobject __unused obj,
        jint a,
        jint b) {
    return subtract(a, b);
}