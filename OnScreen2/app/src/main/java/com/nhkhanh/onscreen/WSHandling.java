package com.nhkhanh.onscreen;

import android.app.ProgressDialog;
import android.content.Context;
import android.os.AsyncTask;
import android.widget.ArrayAdapter;
import android.widget.ListView;

import java.util.ArrayList;
import java.util.List;

public class WSHandling extends AsyncTask<String,Void, ArrayList> {
    // URL
    //String URL_DISP = "";
    //String URL_CREATE = "";
    String URL_UPDATE = "https://ocrbyhk.000webhostapp.com/onscreen/";
    //String URL_DELETE = "";
    ProgressDialog pDialog;
    ListView lvAccounts;
    //static final String DISPLAY = "display";
    //static final String CREATE = "create";
    static final String UPDATE = "update";
    //static final String DELETE = "delete";

    ServiceHandling sh = new ServiceHandling();
    Context context;
    ArrayList<Accounts> al;

    public WSHandling(Context context) {
        this.context = context;
    }

    @Override
    protected ArrayList doInBackground(String... params) {
        switch (params[0]) {
            //case DISPLAY:
            //    break;
            //case CREATE:
            //    break;
            case UPDATE:
                break;
            //case DELETE:
            //    break;
        }
        return al;
    }
    protected void onPreExecute() {
        super.onPreExecute();
        pDialog = new ProgressDialog(context);
        pDialog.setMessage("Proccesing..");
        pDialog.setCancelable(false);
        pDialog.show();
    }
    @Override
    protected void onPostExecute(ArrayList ret) {
        super.onPostExecute(ret);
        if (pDialog.isShowing())
            pDialog.dismiss();
    }
}