.class public final Lcom/google/android/systemui/power/BatteryInfoBroadcast;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public mBatteryLevel:I

.field public mBatteryPlugged:I

.field public mBatteryStatus:I

.field public final mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

.field public final mContext:Landroid/content/Context;

.field final mDeviceNameObserver:Landroid/database/ContentObserver;

.field public final mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public mIsPowerSaveMode:Z

.field final mMetadataListener:Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public mRemainingTimeMillis:J

.field final mRemainingTimeObserver:Landroid/database/ContentObserver;

.field public final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastSender;Lcom/android/systemui/power/EnhancedEstimates;Ljava/util/concurrent/Executor;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->mBatteryLevel:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->mBatteryPlugged:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->mBatteryStatus:I

    iput-boolean v1, p0, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->mIsPowerSaveMode:Z

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->mRemainingTimeMillis:J

    new-instance v3, Lcom/google/android/systemui/power/BatteryInfoBroadcast$1;

    invoke-direct {v3, p0, v1}, Lcom/google/android/systemui/power/BatteryInfoBroadcast$1;-><init>(Lcom/google/android/systemui/power/BatteryInfoBroadcast;I)V

    iput-object v3, p0, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->mDeviceNameObserver:Landroid/database/ContentObserver;

    new-instance v4, Lcom/google/android/systemui/power/BatteryInfoBroadcast$1;

    invoke-direct {v4, p0, v2}, Lcom/google/android/systemui/power/BatteryInfoBroadcast$1;-><init>(Lcom/google/android/systemui/power/BatteryInfoBroadcast;I)V

    iput-object v4, p0, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->mRemainingTimeObserver:Landroid/database/ContentObserver;

    new-instance v2, Lcom/google/android/systemui/power/BatteryInfoBroadcast$3;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/power/BatteryInfoBroadcast$3;-><init>(Lcom/google/android/systemui/power/BatteryInfoBroadcast;)V

    iput-object v2, p0, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->mMetadataListener:Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;

    iput-object p1, p0, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->mIsPowerSaveMode:Z

    iput-object p2, p0, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-object p3, p0, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    iput-object p4, p0, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "battery_info_shared_prefs"

    invoke-virtual {p2, p3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "device_name"

    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p0, p2, v1, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance p1, Landroid/net/Uri$Builder;

    invoke-direct {p1}, Landroid/net/Uri$Builder;-><init>()V

    const-string p2, "content"

    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "com.google.android.apps.turbo.estimated_time_remaining"

    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "time_remaining"

    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, v1, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "BatteryInfoBroadcast"

    const-string p2, "failed to register observver for remaining time"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public static createIntentForSI(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p0, "com.google.android.settings.intelligence"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final recordDateTime(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget-object v0, Lcom/google/android/systemui/power/DumpUtils;->PROVIDER_URI:Landroid/net/Uri;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/systemui/power/DumpUtils;->toReadableDateTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public final sendBatteryChangeIntent(Landroid/content/Intent;Z)V
    .locals 9

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryInfoBroadcast"

    if-nez v0, :cond_0

    const-string p0, "sendBatteryIntent() with invalid intent"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PNW.batteryStatusChanged"

    invoke-static {v2}, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->createIntentForSI(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "battery_save"

    iget-boolean v4, p0, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->mIsPowerSaveMode:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "battery_changed_intent"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    if-eqz p1, :cond_3

    check-cast p1, Lcom/google/android/systemui/power/EnhancedEstimatesGoogleImpl;

    invoke-virtual {p1}, Lcom/google/android/systemui/power/EnhancedEstimatesGoogleImpl;->getEstimate()Lcom/android/settingslib/fuelgauge/Estimate;

    move-result-object p1

    iget-wide v3, p1, Lcom/android/settingslib/fuelgauge/Estimate;->estimateMillis:J

    if-eqz p2, :cond_2

    iget-wide v5, p0, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->mRemainingTimeMillis:J

    cmp-long p2, v5, v3

    if-nez p2, :cond_2

    const-string p0, "sendBatteryIntent() ignore from the same remaining time"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iput-wide v3, p0, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->mRemainingTimeMillis:J

    const-string p2, "remaining_time"

    invoke-virtual {v2, p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object p2, p0, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "remaining_time_millis"

    iget-wide v7, p0, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->mRemainingTimeMillis:J

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    invoke-static {p2, p1}, Lcom/android/settingslib/fuelgauge/Estimate;->storeCachedEstimate(Landroid/content/Context;Lcom/android/settingslib/fuelgauge/Estimate;)V

    :cond_3
    iget-boolean p1, p0, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->mIsPowerSaveMode:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-wide v3, p0, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->mRemainingTimeMillis:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {v0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "onReceive: %s, saverMode: %b, remainingTime: %d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public final sendBroadcast(Landroid/content/Intent;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/broadcast/BroadcastSender;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method public final sendPluggedInStateIntent(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, "com.android.settings.battery.action.ACTION_BATTERY_PLUGGING"

    goto :goto_0

    :cond_0
    const-string v0, "com.android.settings.battery.action.ACTION_BATTERY_UNPLUGGING"

    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.fuelgauge.batteryusage.BatteryUsageBroadcastReceiver"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->sendBroadcast(Landroid/content/Intent;)V

    if-nez p1, :cond_1

    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/fuelgauge/BatteryStatus;->isCharged(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "last_data_reset_time"

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->recordDateTime(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final writeString(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-interface {p0, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p3, "\t\t%s: %s"

    filled-new-array {p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p3, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
