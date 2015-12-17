<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
      package="{{ packageId }}"
      android:versionCode="1"
      android:versionName="1.0"
      android:installLocation="auto">
    <application android:name="org.xwalk.core.XWalkApplication"
        android:hardwareAccelerated="true"
        android:label="{{ packageName }}"
        android:icon="@drawable/crosswalk">
        <meta-data android:name="com.samsung.android.vr.application.mode" android:value="vr_only"/>
        <activity android:name="{{ activityName }}"
                  android:theme="@android:style/Theme.Black.NoTitleBar.Fullscreen"
                  android:launchMode="singleTask"
                  android:configChanges="orientation|keyboardHidden|keyboard|screenSize"
                  android:excludeFromRecents="true"
                  android:screenOrientation="unspecified"
                  android:label="{{ packageName }}">
            <intent-filter>
                <action android:name="android.intent.action.MAIN" />
                <category android:name="android.intent.category.INFO" />
            </intent-filter>
        </activity>
    </application>
    <activity android:name="com.oculusvr.vrlib.PlatformActivity"   android:theme="@android:style/Theme.Black.NoTitleBar.Fullscreen" android:launchMode="singleTask" android:screenOrientation="landscape" android:configChanges="screenSize|orientation|keyboardHidden|keyboard">
    </activity>
    <uses-sdk android:minSdkVersion="14" android:targetSdkVersion="21" />
    <uses-feature android:glEsVersion="0x00020000" android:required="true" />
    <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE"/>
    <uses-permission android:name="android.permission.ACCESS_WIFI_STATE" />
    <uses-permission android:name="android.permission.CAMERA"/>
    <uses-permission android:name="android.permission.INTERNET"/>
    <uses-permission android:name="android.permission.MODIFY_AUDIO_SETTINGS"/>
    <uses-permission android:name="android.permission.RECORD_AUDIO"/>
    <uses-permission android:name="android.permission.WAKE_LOCK"/>
    <uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE" />
    <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />
</manifest>
