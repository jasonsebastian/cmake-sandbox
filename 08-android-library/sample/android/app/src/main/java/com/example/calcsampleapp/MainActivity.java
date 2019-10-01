package com.example.calcsampleapp;

import androidx.appcompat.app.AppCompatActivity;

import com.example.androidlibrary.Calc;

import android.os.Bundle;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        TextView resultTextView = findViewById(R.id.result);
        resultTextView.setText("add(1, 2) = " + Calc.add(1, 2));
    }
}
