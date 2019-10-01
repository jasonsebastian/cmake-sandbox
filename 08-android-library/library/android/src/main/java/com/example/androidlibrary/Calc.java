package com.example.androidlibrary;

public class Calc {
    static {
        System.loadLibrary("native-lib");
    }

    public static native int add(int a, int b);
    public static native int subtract(int a, int b);
}
