package com.nhkhanh.counter;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.Button;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {
    private Button start;
    private Button stop;
    private TextView min;
    private TextView sec;
    private int phut;
    private int giay;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        this.start=findViewById(R.id.start);
        this.stop=findViewById(R.id.stop);
        this.min=findViewById(R.id.min);
        this.sec=findViewById(R.id.sec);
    }
}