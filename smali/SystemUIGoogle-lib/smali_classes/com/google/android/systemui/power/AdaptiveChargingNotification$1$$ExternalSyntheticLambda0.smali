.class public final synthetic Lcom/google/android/systemui/power/AdaptiveChargingNotification$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/power/AdaptiveChargingNotification$1;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/power/AdaptiveChargingNotification$1;Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification$1$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/power/AdaptiveChargingNotification$1;

    iput-object p2, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification$1$$ExternalSyntheticLambda0;->f$2:I

    iput-boolean p4, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification$1$$ExternalSyntheticLambda0;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification$1$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/power/AdaptiveChargingNotification$1;

    iget-object v1, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification$1$$ExternalSyntheticLambda0;->f$2:I

    iget-boolean p0, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification$1$$ExternalSyntheticLambda0;->f$3:Z

    iget-object v0, v0, Lcom/google/android/systemui/power/AdaptiveChargingNotification$1;->this$0:Lcom/google/android/systemui/power/AdaptiveChargingNotification;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v3, Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;->DEBUG:Z

    const-string v3, "Active"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_1

    const-string v3, "Enabled"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v4

    :goto_1
    if-eqz v1, :cond_2

    if-lez v2, :cond_2

    move v1, v4

    goto :goto_2

    :cond_2
    move v1, v5

    :goto_2
    if-eqz v1, :cond_4

    iget-boolean v1, v0, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->mWasActive:Z

    if-eqz v1, :cond_3

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, v2

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    add-long/2addr v1, v6

    iget-object p0, v0, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->mAdaptiveChargingManager:Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;->formatTimeToFull(J)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v2, v0, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-boolean v5, v1, Landroidx/core/app/NotificationCompat$Builder;->mShowWhen:Z

    iput-boolean v4, v1, Landroidx/core/app/NotificationCompat$Builder;->mSilent:Z

    iget-object v3, v1, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    const v5, 0x7f0806d3

    iput v5, v3, Landroid/app/Notification;->icon:I

    const v5, 0x7f1300f1

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)V

    const v6, 0x7f1300ef

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, v6, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)V

    const p0, 0x7f1300f2

    invoke-virtual {v2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v6, "PNW.acChargeNormally"

    invoke-static {v2, v6}, Lcom/google/android/systemui/power/PowerUtils;->createPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v1, p0, v6}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const-string p0, "systemui.power.action.dismissAdaptiveChargingWarning"

    invoke-static {v2, p0}, Lcom/google/android/systemui/power/PowerUtils;->createPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p0

    iput-object p0, v3, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    const p0, 0x1040135

    invoke-static {v2, v1, p0}, Lcom/google/android/systemui/power/PowerUtils;->overrideNotificationAppName(Landroid/content/Context;Landroidx/core/app/NotificationCompat$Builder;I)V

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v2, v0, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v3, "adaptive_charging"

    invoke-virtual {v2, v3, v5, p0, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    sget-object p0, Lcom/google/android/systemui/power/BatteryMetricEvent;->ADAPTIVE_CHARGING_NOTIFICATION:Lcom/google/android/systemui/power/BatteryMetricEvent;

    iget-object v1, v0, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-interface {v1, p0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iput-boolean v4, v0, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->mWasActive:Z

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->cancelNotification()V

    :goto_3
    return-void
.end method
