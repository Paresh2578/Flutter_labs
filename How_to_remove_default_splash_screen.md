## 1. app/src/main/res/values/styles.xml
```xml
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <!-- Theme applied to the Android Window while the process is starting -->
    <style name="LaunchTheme" parent="Theme.AppCompat.Light.NoActionBar">
        <item name="android:windowBackground">@drawable/launch_background</item>
    </style>

    <!-- Theme applied to the Android Window as soon as the process has started -->
    <style name="Theme.App.Transparent" parent="Theme.AppCompat.Light.NoActionBar">
        <item name="android:windowIsTranslucent">true</item>
        <item name="android:windowNoTitle">true</item>
        <item name="android:windowFullscreen">true</item>
    </style>
</resources>
```

## 2. app/src/main/AndroidManifest.xml
 ```
    android:theme="@style/Theme.App.Transparent"
```
## 3. app/build.gradle
```
    dependencies {
    implementation 'androidx.appcompat:appcompat:1.4.0'
}
```

