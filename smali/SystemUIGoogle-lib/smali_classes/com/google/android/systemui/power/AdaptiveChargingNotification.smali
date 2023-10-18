.class public final Lcom/google/android/systemui/power/AdaptiveChargingNotification;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final mAdaptiveChargingManager:Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;

.field mAdaptiveChargingQueryInBackground:Z

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field mWasActive:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->mWasActive:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->mAdaptiveChargingQueryInBackground:Z

    iput-object p1, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->mNotificationManager:Landroid/app/NotificationManager;

    iput-object p3, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iput-object p2, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->mAdaptiveChargingManager:Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;

    return-void
.end method


# virtual methods
.method public final cancelNotification()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->mWasActive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f1300f1

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v3, "adaptive_charging"

    invoke-virtual {v2, v3, v0, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->mWasActive:Z

    return-void
.end method

.method public final checkAdaptiveChargingStatus(Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->mAdaptiveChargingManager:Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "adaptive_charging"

    const-string v1, "adaptive_charging_notification"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/systemui/power/AdaptiveChargingNotification$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/power/AdaptiveChargingNotification$1;-><init>(Lcom/google/android/systemui/power/AdaptiveChargingNotification;Z)V

    iget-boolean p1, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->mAdaptiveChargingQueryInBackground:Z

    if-nez p1, :cond_1

    invoke-static {v0}, Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;->queryStatus(Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;)V

    return-void

    :cond_1
    new-instance p1, Lcom/google/android/systemui/power/AdaptiveChargingNotification$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v0}, Lcom/google/android/systemui/power/AdaptiveChargingNotification$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/power/AdaptiveChargingNotification;Lcom/google/android/systemui/power/AdaptiveChargingNotification$1;)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resolveBatteryChangedIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "plugged"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {p1}, Lcom/android/settingslib/fuelgauge/BatteryStatus;->isCharged(Landroid/content/Intent;)Z

    move-result p1

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->checkAdaptiveChargingStatus(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->cancelNotification()V

    :goto_1
    return-void
.end method
