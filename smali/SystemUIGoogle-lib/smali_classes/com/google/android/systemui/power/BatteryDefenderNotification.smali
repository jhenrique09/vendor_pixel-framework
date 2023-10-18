.class public final Lcom/google/android/systemui/power/BatteryDefenderNotification;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final EXTRA_IS_DOCK_DEFENDER:Ljava/lang/String; = "is_dock_defender"

.field static final SETTINGS_GLOBAL_DOCK_DEFENDER_BYPASS:Ljava/lang/String; = "dock_defender_bypass"

.field static final SETTINGS_GLOBAL_DOCK_DEFENDER_FIRST_RUN:Ljava/lang/String; = "dock_defender_first_run"


# instance fields
.field public mBatteryLevel:I

.field public final mContext:Landroid/content/Context;

.field mDefenderEnabled:Z

.field mDockDefendEnabled:Z

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field mPostNotificationVisible:Z

.field mPrvPluggedState:Z

.field mRunBypassActionTask:Z

.field public mSharedPreferences:Landroid/content/SharedPreferences;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public static -$$Nest$smgetDockDefendStatus()I
    .locals 5

    new-instance v0, Lcom/google/android/systemui/power/BatteryDefenderNotification$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/google/android/systemui/power/BatteryDefenderNotification$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0}, Lcom/google/android/systemui/googlebattery/GoogleBatteryManager;->initHalInterface(Landroid/os/IBinder$DeathRecipient;)Lvendor/google/google_battery/IGoogleBattery;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    const/4 v1, -0x1

    const-string v3, "BatteryDefenderNotification"

    if-nez v0, :cond_0

    const-string v0, "getDockDefendStatus: can not init hal interface"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    :try_start_0
    check-cast v0, Lvendor/google/google_battery/IGoogleBattery;

    check-cast v0, Lvendor/google/google_battery/IGoogleBattery$Stub$Proxy;

    invoke-virtual {v0}, Lvendor/google/google_battery/IGoogleBattery$Stub$Proxy;->getDockDefendStatus()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    const-string v4, "Get dock defend status error: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v2}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->destroyHalInterface(Landroid/util/Pair;)V

    :goto_1
    return v1

    :goto_2
    invoke-static {v2}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->destroyHalInterface(Landroid/util/Pair;)V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mRunBypassActionTask:Z

    iput-object p1, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    const-class p2, Landroid/app/NotificationManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    iput-object p2, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f05004c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mDockDefendEnabled:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->clearDockDefendBypassIfNeeded()V

    return-void
.end method

.method public static destroyHalInterface(Landroid/util/Pair;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lvendor/google/google_battery/IGoogleBattery;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/os/IBinder$DeathRecipient;

    invoke-static {v0, p0}, Lcom/google/android/systemui/googlebattery/GoogleBatteryManager;->destroyHalInterface(Lvendor/google/google_battery/IGoogleBattery;Landroid/os/IBinder$DeathRecipient;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "BatteryDefenderNotification"

    const-string v0, "Can not destroy hal interface"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public final clearDefenderStartRecord()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public clearDockDefendBypassIfNeeded()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mDockDefendEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "dock_defender_bypass"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public final getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "defender_shared_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mSharedPreferences:Landroid/content/SharedPreferences;

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public final resumeCharging(Lcom/google/android/systemui/power/BatteryMetricEvent;Z)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mBatteryLevel:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, p1, v2, v3, v1}, Lcom/android/internal/logging/UiEventLogger;->logWithPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;I)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "resume charging: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BatteryDefenderNotification"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mRunBypassActionTask:Z

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/google/android/systemui/power/BatteryDefenderNotification$$ExternalSyntheticLambda1;

    invoke-direct {p1, p2}, Lcom/google/android/systemui/power/BatteryDefenderNotification$$ExternalSyntheticLambda1;-><init>(Z)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :goto_0
    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "dock_defender_bypass"

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object p2, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v0, "battery_defender"

    const v1, 0x7f1302f7

    invoke-virtual {p2, v0, v1, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    invoke-virtual {p0}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->clearDefenderStartRecord()V

    return-void
.end method

.method public final sendDockDefenderFirstRunNotification()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dock_defender_first_run"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const v1, 0x7f13031a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, v2, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    const v5, 0x1080864

    iput v5, v4, Landroid/app/Notification;->icon:I

    const v4, 0x7f13031c

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/google/android/systemui/power/PowerUtils;->createBatterySettingsPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, v2, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    new-instance v5, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v5}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-static {v1}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v5, Landroidx/core/app/NotificationCompat$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    iget-object v1, v2, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/core/app/NotificationCompat$BigTextStyle;

    if-eq v1, v5, :cond_0

    iput-object v5, v2, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-virtual {v5, v2}, Landroidx/core/app/NotificationCompat$BigTextStyle;->setBuilder(Landroidx/core/app/NotificationCompat$Builder;)V

    :cond_0
    iput-boolean v3, v2, Landroidx/core/app/NotificationCompat$Builder;->mSilent:Z

    const/16 v1, 0x10

    invoke-virtual {v2, v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    const v1, 0x7f13031b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/systemui/power/PowerUtils;->createBatterySettingsPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const v1, 0x7f130143

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f13031d

    invoke-static {v3, v0}, Lcom/google/android/systemui/power/PowerUtils;->createHelpArticlePendingIntent(ILandroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v2, "battery_defender"

    invoke-virtual {p0, v2, v4, v0, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final sendNotification(Z)V
    .locals 9

    iget-boolean v0, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mDefenderEnabled:Z

    const-string v1, "battery_defender"

    iget-object v2, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mPostNotificationVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mPostNotificationVisible:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->clearDefenderStartRecord()V

    const v0, 0x7f1302f9

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v0, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v3

    const-string v5, "trigger_time"

    invoke-interface {v0, v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mDefenderEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mPrvPluggedState:Z

    if-ne v0, p1, :cond_2

    return-void

    :cond_2
    iput-boolean p1, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mPrvPluggedState:Z

    const v0, 0x7f1302f4

    iget-object v3, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v4, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, v4, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    const v6, 0x7f0806d4

    iput v6, v5, Landroid/app/Notification;->icon:I

    const v6, 0x7f1302f7

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)V

    invoke-static {v3}, Lcom/google/android/systemui/power/PowerUtils;->createBatterySettingsPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v4, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    const/4 v0, 0x1

    iput-boolean v0, v4, Landroidx/core/app/NotificationCompat$Builder;->mSilent:Z

    const v7, 0x7f130143

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f1302f5

    invoke-static {v8, v3}, Lcom/google/android/systemui/power/PowerUtils;->createHelpArticlePendingIntent(ILandroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const-string v7, "systemui.power.action.dismissBatteryDefenderWarning"

    invoke-static {v3, v7}, Lcom/google/android/systemui/power/PowerUtils;->createPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v5, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_3

    const p1, 0x7f1302f6

    invoke-virtual {v3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v5, "PNW.defenderResumeCharging"

    invoke-static {v3, v5}, Lcom/google/android/systemui/power/PowerUtils;->createPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    :cond_3
    const p1, 0x10405ee

    invoke-static {v3, v4, p1}, Lcom/google/android/systemui/power/PowerUtils;->overrideNotificationAppName(Landroid/content/Context;Landroidx/core/app/NotificationCompat$Builder;I)V

    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v6, p1, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    iget-boolean p1, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mDefenderEnabled:Z

    if-nez p1, :cond_4

    iput-boolean v0, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mDefenderEnabled:Z

    iget-object p0, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    if-eqz p0, :cond_4

    sget-object p1, Lcom/google/android/systemui/power/BatteryMetricEvent;->BATTERY_DEFENDER_NOTIFICATION:Lcom/google/android/systemui/power/BatteryMetricEvent;

    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_4
    return-void
.end method
