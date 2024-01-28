# Deep Links with GoRouter

This document provides instructions on how to navigate within the app using deep links through ADB (Android Debug Bridge).

## Navigating to the Main Screen

To navigate to the main screen of the app using ADB, open your terminal and execute the following command:

```bash
adb shell "am start -a android.intent.action.VIEW -c android.intent.category.BROWSABLE -d myapp://shahad.com"

```

## Navigating to the Details Screen

To navigate to a details screen within the app, use the following ADB command. Replace :itemId with the specific ID you want to navigate to:

```bash
adb shell "am start -a android.intent.action.VIEW -c android.intent.category.BROWSABLE -d myapp://shahad.com/details/:itemId"

```
