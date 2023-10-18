.class public final synthetic Lcom/google/android/systemui/power/BatteryDefenderNotification$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification$$ExternalSyntheticLambda1;->f$0:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-boolean p0, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification$$ExternalSyntheticLambda1;->f$0:Z

    new-instance v0, Lcom/google/android/systemui/power/BatteryDefenderNotification$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/google/android/systemui/power/BatteryDefenderNotification$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0}, Lcom/google/android/systemui/googlebattery/GoogleBatteryManager;->initHalInterface(Landroid/os/IBinder$DeathRecipient;)Lvendor/google/google_battery/IGoogleBattery;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v1, "BatteryDefenderNotification"

    if-nez v0, :cond_0

    const-string p0, "bypassDefenderModeAsync: can not init hal interface"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    :try_start_0
    check-cast v0, Lvendor/google/google_battery/IGoogleBattery;

    if-eqz p0, :cond_1

    const/4 p0, 0x4

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    check-cast v0, Lvendor/google/google_battery/IGoogleBattery$Stub$Proxy;

    invoke-virtual {v0, p0}, Lvendor/google/google_battery/IGoogleBattery$Stub$Proxy;->clearBatteryDefenders(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    :try_start_1
    const-string v0, "Clear defender error: "

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {v2}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->destroyHalInterface(Landroid/util/Pair;)V

    :goto_2
    return-void

    :goto_3
    invoke-static {v2}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->destroyHalInterface(Landroid/util/Pair;)V

    throw p0
.end method
