package com.example.hellolibs;

import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        TextView resultAdd = findViewById(R.id.result_add);
        resultAdd.setText("add(3, 2) = " + add(3, 2));

        TextView resultSubtract = findViewById(R.id.result_subtract);
        resultSubtract.setText("subtract(3, 2) = " + subtract(3, 2));
    }

    public native int add(int a, int b);

    public native int subtract(int a, int b);

    static {
        System.loadLibrary("hello-libs");
    }

}
