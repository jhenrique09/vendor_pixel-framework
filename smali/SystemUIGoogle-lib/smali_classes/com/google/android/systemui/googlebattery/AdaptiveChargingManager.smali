.class public final Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DEBUG:Z


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "AdaptiveChargingManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static queryStatus(Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;)V
    .locals 5

    new-instance v0, Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager$1;-><init>(Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;)V

    invoke-static {v0}, Lcom/google/android/systemui/googlebattery/GoogleBatteryManager;->initHalInterface(Landroid/os/IBinder$DeathRecipient;)Lvendor/google/google_battery/IGoogleBattery;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;->onDestroyInterface()V

    return-void

    :cond_0
    :try_start_0
    move-object v2, v1

    check-cast v2, Lvendor/google/google_battery/IGoogleBattery$Stub$Proxy;

    invoke-virtual {v2}, Lvendor/google/google_battery/IGoogleBattery$Stub$Proxy;->getChargingStageAndDeadline()Lvendor/google/google_battery/ChargingStage;

    move-result-object v2

    iget-object v3, v2, Lvendor/google/google_battery/ChargingStage;->stage:Ljava/lang/String;

    iget v2, v2, Lvendor/google/google_battery/ChargingStage;->deadlineSecs:I

    invoke-static {p0, v3, v2}, Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;->queryStatusReceived(Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "AdaptiveChargingManager"

    const-string v4, "Failed to get Adaptive Chaging status: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-static {v1, v0}, Lcom/google/android/systemui/googlebattery/GoogleBatteryManager;->destroyHalInterface(Lvendor/google/google_battery/IGoogleBattery;Landroid/os/IBinder$DeathRecipient;)V

    invoke-interface {p0}, Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;->onDestroyInterface()V

    return-void
.end method

.method public static queryStatusReceived(Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;Ljava/lang/String;I)V
    .locals 2

    sget-boolean v0, Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getChargingStageDeadlineCallback stage: \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", seconds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdaptiveChargingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {p0, p2, p1}, Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;->onReceiveStatus(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final formatTimeToFull(J)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Hm"

    goto :goto_0

    :cond_0
    const-string v0, "hma"

    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    :goto_1
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasAdaptiveChargingFeature()Z
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.google.android.feature.ADAPTIVE_CHARGING"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isEnabled()Z
    .locals 2

    iget-object p0, p0, Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "adaptive_charging_enabled"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
