.class public final synthetic Lcom/google/android/systemui/power/IncompatibleChargerNotification$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/power/IncompatibleChargerNotification;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/power/IncompatibleChargerNotification;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/power/IncompatibleChargerNotification$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/power/IncompatibleChargerNotification;

    iput-boolean p2, p0, Lcom/google/android/systemui/power/IncompatibleChargerNotification$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/systemui/power/IncompatibleChargerNotification$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/power/IncompatibleChargerNotification;

    iget-boolean p0, p0, Lcom/google/android/systemui/power/IncompatibleChargerNotification$$ExternalSyntheticLambda1;->f$1:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateNotification: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IncompatibleChargerNotification"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const-string v3, "incompatible_charging"

    iget-object v4, v0, Lcom/google/android/systemui/power/IncompatibleChargerNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const v5, 0x7f1303f7

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v6, "sendNotification: "

    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, v0, Lcom/google/android/systemui/power/IncompatibleChargerNotification;->mNotificationActive:Z

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v2, v0, Lcom/google/android/systemui/power/IncompatibleChargerNotification;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    const v7, 0x7f0806d3

    iput v7, v6, Landroid/app/Notification;->icon:I

    iput-boolean v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mShowWhen:Z

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)V

    const v1, 0x7f1303f6

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)V

    new-instance v7, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v7}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v7, Landroidx/core/app/NotificationCompat$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/core/app/NotificationCompat$BigTextStyle;

    if-eq v1, v7, :cond_0

    iput-object v7, p0, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-virtual {v7, p0}, Landroidx/core/app/NotificationCompat$BigTextStyle;->setBuilder(Landroidx/core/app/NotificationCompat$Builder;)V

    :cond_0
    const-string v1, "systemui.power.action.dismissIncompatibleChargerWarning"

    invoke-static {v2, v1}, Lcom/google/android/systemui/power/PowerUtils;->createPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v6, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-static {v2}, Lcom/google/android/systemui/power/PowerUtils;->createBatterySettingsPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    const v1, 0x7f1303f5

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v6, 0x7f1303f4

    invoke-static {v6, v2}, Lcom/google/android/systemui/power/PowerUtils;->createHelpArticlePendingIntent(ILandroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {p0, v1, v6}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const v1, 0x1040135

    invoke-static {v2, p0, v1}, Lcom/google/android/systemui/power/PowerUtils;->overrideNotificationAppName(Landroid/content/Context;Landroidx/core/app/NotificationCompat$Builder;I)V

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5, p0, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/google/android/systemui/power/IncompatibleChargerNotification;->mNotificationActive:Z

    sget-object p0, Lcom/google/android/systemui/power/BatteryMetricEvent;->SEND_INCOMPATIBLE_CHARGING_NOTIFICATION:Lcom/google/android/systemui/power/BatteryMetricEvent;

    iget-object v0, v0, Lcom/google/android/systemui/power/IncompatibleChargerNotification;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v6, "cancelNotification: "

    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, v0, Lcom/google/android/systemui/power/IncompatibleChargerNotification;->mNotificationActive:Z

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p0, v0, Lcom/google/android/systemui/power/IncompatibleChargerNotification;->mNotificationActive:Z

    if-eqz p0, :cond_2

    sget-object p0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5, p0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    iput-boolean v1, v0, Lcom/google/android/systemui/power/IncompatibleChargerNotification;->mNotificationActive:Z

    :cond_2
    :goto_0
    return-void
.end method
