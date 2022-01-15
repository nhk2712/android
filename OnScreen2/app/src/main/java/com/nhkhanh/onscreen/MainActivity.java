package com.nhkhanh.onscreen;

import androidx.appcompat.app.AppCompatActivity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.http.HttpsConnection;
import android.os.Bundle;
import android.os.StrictMode;
import android.util.Log;

import org.apache.http.HttpClientConnection;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.protocol.HttpService;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLDecoder;
import java.security.cert.Certificate;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLPeerUnverifiedException;

public class MainActivity extends AppCompatActivity {
    private Broadcast broadcast;
    private Broadcast2 broadcast2;

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        checkInternetConnection();

        broadcast = new Broadcast();
        IntentFilter filter = new IntentFilter("android.intent.action.SCREEN_ON");
        registerReceiver(broadcast, filter);

        broadcast2 = new Broadcast2();
        IntentFilter filter2 = new IntentFilter("android.intent.action.SCREEN_OFF");
        registerReceiver(broadcast2, filter2);

        StrictMode.ThreadPolicy policy = new StrictMode.ThreadPolicy.Builder().permitAll().build();
        StrictMode.setThreadPolicy(policy);

    }

    public class Broadcast extends BroadcastReceiver {
        public void onReceive(Context context, Intent intent) {
            Log.d(Broadcast.class.getSimpleName(), "On Screen");

            try {
                Log.i("0","no error");

                String query = "UPDATE webservice SET number=1 WHERE name='number'";

                URL url = new URL("https://ocrbyhk.000webhostapp.com");
                Connection conn = (Connection) url.openConnection();
                Statement statement = conn.createStatement();
                statement.execute(query);
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            } catch (MalformedURLException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }

        }
    }

    public class Broadcast2 extends BroadcastReceiver {
        public void onReceive(Context context, Intent intent) {
            Log.d(Broadcast.class.getSimpleName(), "Off Screen");
        }
    }

    private boolean checkInternetConnection() {
        ConnectivityManager connManager = (ConnectivityManager) this.getSystemService(Context.CONNECTIVITY_SERVICE);
        NetworkInfo networkInfo = connManager.getActiveNetworkInfo();

        if (networkInfo == null) {
            Log.i("Network: ","No default network is currently active");
            return false;
        }

        if (!networkInfo.isConnected()) {
            Log.i("Network: ","Network is not connected");
            return false;
        }

        if (!networkInfo.isAvailable()) {
            Log.i("Network: ","Network not available");
            return false;
        }
        Log.i("Network: ","Network OK");
        return true;
    }

}



