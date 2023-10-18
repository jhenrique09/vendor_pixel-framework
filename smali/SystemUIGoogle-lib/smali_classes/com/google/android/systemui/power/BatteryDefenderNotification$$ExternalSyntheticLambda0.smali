.class public final synthetic Lcom/google/android/systemui/power/BatteryDefenderNotification$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# virtual methods
.method public final run()V
    .locals 3

    new-instance p0, Lcom/google/android/systemui/power/BatteryDefenderNotification$$ExternalSyntheticLambda2;

    invoke-direct {p0}, Lcom/google/android/systemui/power/BatteryDefenderNotification$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0}, Lcom/google/android/systemui/googlebattery/GoogleBatteryManager;->initHalInterface(Landroid/os/IBinder$DeathRecipient;)Lvendor/google/google_battery/IGoogleBattery;

    move-result-object v0

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v0, "BatteryDefenderNotification"

    if-nez p0, :cond_0

    const-string p0, "enableDockDefenderFeature: an not init hal interface"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    :try_start_0
    check-cast p0, Lvendor/google/google_battery/IGoogleBattery;

    check-cast p0, Lvendor/google/google_battery/IGoogleBattery$Stub$Proxy;

    invoke-virtual {p0}, Lvendor/google/google_battery/IGoogleBattery$Stub$Proxy;->setEnable()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    const-string v2, "Set dock defend enable error: "

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v1}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->destroyHalInterface(Landroid/util/Pair;)V

    :goto_1
    return-void

    :goto_2
    invoke-static {v1}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->destroyHalInterface(Landroid/util/Pair;)V

    throw p0
.end method
