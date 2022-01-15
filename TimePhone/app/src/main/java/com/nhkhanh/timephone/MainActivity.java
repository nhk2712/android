package com.nhkhanh.timephone;

import androidx.appcompat.app.AppCompatActivity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.util.Log;

public class MainActivity extends AppCompatActivity {
    private Broadcast broadcast;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        broadcast = new Broadcast();
        IntentFilter filter = new IntentFilter("android.intent.action.PACKAGES_UNSUSPENDED");
        registerReceiver(broadcast, filter);
    }

    public class Broadcast extends BroadcastReceiver {
        public void onReceive(Context context, Intent intent) {
            Log.d(Broadcast.class.getSimpleName(), "Hehe");
        }
    }
}