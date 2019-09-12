#include <jni.h>
#include <cadd.h>
#include <csubtract.h>

extern "C" JNIEXPORT jint JNICALL Java_com_example_hellolibs_MainActivity_add(
        JNIEnv __unused *env,
        jobject __unused obj,
        jint a,
        jint b) {
    return add(a, b);
}

extern "C" JNIEXPORT jint JNICALL Java_com_example_hellolibs_MainActivity_subtract(
        JNIEnv __unused *env,
        jobject __unused obj,
        jint a,
        jint b) {
    return subtract(a, b);
}