// 
// Decompiled by Procyon v0.5.30
// 

package com.coolweather.android;

import android.widget.Toast;
import android.content.SharedPreferences;
import android.support.v4.app.FragmentActivity;
import com.bumptech.glide.Glide;
import android.view.View$OnClickListener;
import com.coolweather.android.util.Utility;
import android.preference.PreferenceManager;
import android.app.Activity;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import java.util.ArrayList;
import com.baidu.location.BDLocationListener;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.view.View;
import java.util.Iterator;
import android.content.Intent;
import com.coolweather.android.service.AutoUpdateService;
import android.view.ViewGroup;
import android.content.Context;
import android.view.LayoutInflater;
import com.coolweather.android.gson.Forecast;
import okhttp3.Callback;
import com.coolweather.android.util.HttpUtil;
import com.baidu.location.LocationClientOption;
import org.json.JSONArray;
import org.json.JSONObject;
import java.io.Reader;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import com.coolweather.android.gson.Weather;
import com.baidu.location.BDLocation;
import android.widget.ScrollView;
import android.support.v4.widget.SwipeRefreshLayout;
import android.widget.Button;
import com.baidu.location.LocationClient;
import android.widget.LinearLayout;
import android.support.v4.widget.DrawerLayout;
import android.widget.ImageView;
import android.widget.TextView;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.support.v4.widget.SwipeRefreshLayout$OnRefreshListener;

class WeatherActivity$1 implements SwipeRefreshLayout$OnRefreshListener
{
    final /* synthetic */ WeatherActivity this$0;
    
    WeatherActivity$1(final WeatherActivity this$0) {
        this.this$0 = this$0;
    }
    
    public void onRefresh() {
        final WeatherActivity this$0 = this.this$0;
        this$0.requestWeather(this$0.mWeatherId);
    }
}
