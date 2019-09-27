package com.example.android;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    static {
        System.loadLibrary("native-lib");
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        TextView addTextView = findViewById(R.id.add);
        addTextView.setText("add(1, 2) = " + add(1, 2));

        TextView subtractTextView = findViewById(R.id.subtract);
        subtractTextView.setText("subtract(3, 2) = " + subtract(3, 2));
    }

    public static native int add(int a, int b);

    public static native int subtract(int a, int b);
}
