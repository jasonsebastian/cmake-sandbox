#include <jni.h>
#include <string>
#include <add.h>

extern "C" JNIEXPORT jint JNICALL Java_com_example_android_MainActivity_add(
        JNIEnv __unused *env,
        jobject __unused obj,
        jint a,
        jint b) {
    return add(a, b);
}