.class public final Lcom/google/android/systemui/power/LowPowerWarningsController;
.super Ljava/lang/Object;
.source ""


# instance fields
.field mBatteryLevel:I

.field public final mContext:Landroid/content/Context;

.field mExtremeLowBatteryNotification:Lcom/google/android/systemui/power/ExtremeLowBatteryNotification;

.field public final mExtremeLowBatteryThreshold:I

.field mExtremeWarningUpdatable:Z

.field public final mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

.field mLastPowerSaveEnabledAsync:Z

.field mLowBatteryNotification:Lcom/google/android/systemui/power/LowBatteryNotification;

.field public final mPowerManager:Landroid/os/PowerManager;

.field mSevereLowBattery:Z

.field public final mSevereLowBatteryDialog:Lcom/google/android/systemui/power/SevereLowBatteryDialog;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field mUpdatable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/power/SevereLowBatteryDialog;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/systemui/power/LowPowerWarningsController;->mExtremeWarningUpdatable:Z

    iput-object p1, p0, Lcom/google/android/systemui/power/LowPowerWarningsController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/systemui/power/LowPowerWarningsController;->mSevereLowBatteryDialog:Lcom/google/android/systemui/power/SevereLowBatteryDialog;

    iput-object p3, p0, Lcom/google/android/systemui/power/LowPowerWarningsController;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    iput-object p4, p0, Lcom/google/android/systemui/power/LowPowerWarningsController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/google/android/systemui/power/LowPowerWarningsController;->mPowerManager:Landroid/os/PowerManager;

    new-instance p2, Lcom/google/android/systemui/power/LowBatteryNotification;

    invoke-direct {p2, p1}, Lcom/google/android/systemui/power/LowBatteryNotification;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/systemui/power/LowPowerWarningsController;->mLowBatteryNotification:Lcom/google/android/systemui/power/LowBatteryNotification;

    new-instance p2, Lcom/google/android/systemui/power/ExtremeLowBatteryNotification;

    invoke-direct {p2, p1, p4}, Lcom/google/android/systemui/power/ExtremeLowBatteryNotification;-><init>(Landroid/content/Context;Lcom/android/internal/logging/UiEventLogger;)V

    iput-object p2, p0, Lcom/google/android/systemui/power/LowPowerWarningsController;->mExtremeLowBatteryNotification:Lcom/google/android/systemui/power/ExtremeLowBatteryNotification;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0b0027

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/systemui/power/LowPowerWarningsController;->mExtremeLowBatteryThreshold:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "suppress_auto_battery_saver_suggestion"

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "low_power_warning_acknowledged"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public final cancelNotification()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/power/LowPowerWarningsController;->mUpdatable:Z

    iget-object v0, p0, Lcom/google/android/systemui/power/LowPowerWarningsController;->mLowBatteryNotification:Lcom/google/android/systemui/power/LowBatteryNotification;

    iget-object v0, v0, Lcom/google/android/systemui/power/LowBatteryNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x3

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "low_battery"

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    iget-object v0, p0, Lcom/google/android/systemui/power/LowPowerWarningsController;->mSevereLowBatteryDialog:Lcom/google/android/systemui/power/SevereLowBatteryDialog;

    iget-object v1, v0, Lcom/google/android/systemui/power/SevereLowBatteryDialog;->mSevereBatteryDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/systemui/power/SevereLowBatteryDialog;->mSevereBatteryDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/power/LowPowerWarningsController;->mExtremeLowBatteryNotification:Lcom/google/android/systemui/power/ExtremeLowBatteryNotification;

    iget-object v0, v0, Lcom/google/android/systemui/power/ExtremeLowBatteryNotification;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v2, 0x7f13035f

    invoke-virtual {v0, v3, v2, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    iget-object v0, p0, Lcom/google/android/systemui/power/LowPowerWarningsController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/systemui/power/LowPowerWarningsController;->mExtremeWarningUpdatable:Z

    :cond_1
    return-void
.end method

.method public final updateNotification(Z)V
    .locals 14

    iget-boolean v0, p0, Lcom/google/android/systemui/power/LowPowerWarningsController;->mExtremeWarningUpdatable:Z

    const/4 v1, 0x3

    const-string v2, "low_battery"

    const v3, 0x10405ee

    const v4, 0x7f0808c2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/systemui/power/LowPowerWarningsController;->mBatteryLevel:I

    iget v7, p0, Lcom/google/android/systemui/power/LowPowerWarningsController;->mExtremeLowBatteryThreshold:I

    if-gt v0, v7, :cond_2

    iget-object v0, p0, Lcom/google/android/systemui/power/LowPowerWarningsController;->mExtremeLowBatteryNotification:Lcom/google/android/systemui/power/ExtremeLowBatteryNotification;

    iget-object v7, v0, Lcom/google/android/systemui/power/ExtremeLowBatteryNotification;->mContext:Landroid/content/Context;

    const v8, 0x7f13035f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f13035e

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v11, v7}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iget-object v12, v11, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput v4, v12, Landroid/app/Notification;->icon:I

    new-instance v12, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v12}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-static {v10}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v13

    iput-object v13, v12, Landroidx/core/app/NotificationCompat$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    iget-object v13, v11, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/core/app/NotificationCompat$BigTextStyle;

    if-eq v13, v12, :cond_0

    iput-object v12, v11, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-virtual {v12, v11}, Landroidx/core/app/NotificationCompat$BigTextStyle;->setBuilder(Landroidx/core/app/NotificationCompat$Builder;)V

    :cond_0
    invoke-virtual {v11, v10}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)V

    invoke-virtual {v11, v9}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)V

    iput v6, v11, Landroidx/core/app/NotificationCompat$Builder;->mVisibility:I

    invoke-static {v7, v11, v3}, Lcom/google/android/systemui/power/PowerUtils;->overrideNotificationAppName(Landroid/content/Context;Landroidx/core/app/NotificationCompat$Builder;I)V

    iget-object v7, v0, Lcom/google/android/systemui/power/ExtremeLowBatteryNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v11}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v2, v8, v9, v10}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    iget-object v0, v0, Lcom/google/android/systemui/power/ExtremeLowBatteryNotification;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    if-eqz v0, :cond_1

    sget-object v7, Lcom/google/android/systemui/power/BatteryMetricEvent;->EXTREME_LOW_BATTERY_NOTIFICATION:Lcom/google/android/systemui/power/BatteryMetricEvent;

    invoke-interface {v0, v7}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_1
    iput-boolean v5, p0, Lcom/google/android/systemui/power/LowPowerWarningsController;->mExtremeWarningUpdatable:Z

    iput-boolean v5, p0, Lcom/google/android/systemui/power/LowPowerWarningsController;->mUpdatable:Z

    iget-object v0, p0, Lcom/google/android/systemui/power/LowPowerWarningsController;->mLowBatteryNotification:Lcom/google/android/systemui/power/LowBatteryNotification;

    iget-object v0, v0, Lcom/google/android/systemui/power/LowBatteryNotification;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v1, v7}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/systemui/power/LowPowerWarningsController;->mUpdatable:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/systemui/power/LowPowerWarningsController;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    const-string v7, "low_power_mode_reminder_enabled"

    invoke-interface {v0, v6, v7}, Lcom/android/systemui/util/settings/SettingsProxy;->getInt(ILjava/lang/String;)I

    move-result v7

    if-nez v7, :cond_3

    goto/16 :goto_6

    :cond_3
    const-string v7, "automatic_power_save_mode"

    invoke-interface {v0, v5, v7}, Lcom/android/systemui/util/settings/SettingsProxy;->getInt(ILjava/lang/String;)I

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "low_power_trigger_level"

    invoke-interface {v0, v5, v7}, Lcom/android/systemui/util/settings/SettingsProxy;->getInt(ILjava/lang/String;)I

    move-result v0

    if-lez v0, :cond_4

    move v0, v6

    goto :goto_0

    :cond_4
    move v0, v5

    :goto_0
    iget-boolean v7, p0, Lcom/google/android/systemui/power/LowPowerWarningsController;->mSevereLowBattery:Z

    const-string v8, "LowPowerWarningsController"

    if-nez v7, :cond_5

    if-eqz v0, :cond_5

    const-string p0, "Standard mode but scheduled, no reminder"

    invoke-static {v8, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    const-string v9, "is_flipendo_aggressive"

    const-string v10, "com.google.android.flipendo.api"

    const/4 v11, 0x0

    const-string v12, "get_flipendo_state"

    iget-object v13, p0, Lcom/google/android/systemui/power/LowPowerWarningsController;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {v13}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v10, v12, v11, v11}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v7, v9, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string p0, "Extreme mode but scheduled, no reminder"

    invoke-static {v8, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    iget-boolean v7, p0, Lcom/google/android/systemui/power/LowPowerWarningsController;->mSevereLowBattery:Z

    if-eqz v7, :cond_f

    iget-object p1, p0, Lcom/google/android/systemui/power/LowPowerWarningsController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p1

    if-nez p1, :cond_8

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    move p1, v5

    goto :goto_2

    :cond_8
    :goto_1
    move p1, v6

    :goto_2
    iget v0, p0, Lcom/google/android/systemui/power/LowPowerWarningsController;->mBatteryLevel:I

    iget-object v3, p0, Lcom/google/android/systemui/power/LowPowerWarningsController;->mSevereLowBatteryDialog:Lcom/google/android/systemui/power/SevereLowBatteryDialog;

    iget-object v4, v3, Lcom/google/android/systemui/power/SevereLowBatteryDialog;->mSevereBatteryDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const-string v7, "SevereLowBatteryDialog"

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_9

    const-string p1, "showSevereBatteryDialog: already showing"

    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_9
    iget-object v4, v3, Lcom/google/android/systemui/power/SevereLowBatteryDialog;->mContext:Landroid/content/Context;

    iget-object v8, v3, Lcom/google/android/systemui/power/SevereLowBatteryDialog;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    if-eqz v8, :cond_a

    check-cast v8, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v8, v8, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-nez v8, :cond_c

    :cond_a
    const-class v8, Landroid/os/PowerManager;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    invoke-virtual {v8}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v8

    if-nez v8, :cond_b

    goto :goto_3

    :cond_b
    :try_start_0
    iget-object v6, v3, Lcom/google/android/systemui/power/SevereLowBatteryDialog;->mIDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v6}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v6

    const-string v8, "mIDreamManager.isDreaming()"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v6, v5

    :cond_c
    :goto_3
    if-eqz v6, :cond_d

    const-string p1, "showSevereBatteryDialog: device is not active"

    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_d
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/systemui/power/PowerUtils;->isFlipendoEnabled(Landroid/content/ContentResolver;)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string p1, "showSevereBatteryDialog: EBS is enabled"

    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_e
    iget-object v4, v3, Lcom/google/android/systemui/power/SevereLowBatteryDialog;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/google/android/systemui/power/SevereLowBatteryDialog$$ExternalSyntheticLambda0;

    invoke-direct {v6, v3, v0, p1}, Lcom/google/android/systemui/power/SevereLowBatteryDialog$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/power/SevereLowBatteryDialog;IZ)V

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_4
    iput-boolean v5, p0, Lcom/google/android/systemui/power/LowPowerWarningsController;->mUpdatable:Z

    iget-object p0, p0, Lcom/google/android/systemui/power/LowPowerWarningsController;->mLowBatteryNotification:Lcom/google/android/systemui/power/LowBatteryNotification;

    iget-object p0, p0, Lcom/google/android/systemui/power/LowBatteryNotification;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v1, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto/16 :goto_6

    :cond_f
    if-eqz p1, :cond_10

    sget-object v0, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;->LOW_BATTERY_NOTIFICATION:Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    iget-object v7, p0, Lcom/google/android/systemui/power/LowPowerWarningsController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-interface {v7, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_10
    iget-object v0, p0, Lcom/google/android/systemui/power/LowPowerWarningsController;->mLowBatteryNotification:Lcom/google/android/systemui/power/LowBatteryNotification;

    iget p0, p0, Lcom/google/android/systemui/power/LowPowerWarningsController;->mBatteryLevel:I

    invoke-virtual {v13}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v10, v12, v11, v11}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v7, v9, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v7

    int-to-double v8, p0

    const-wide v10, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    if-eqz v5, :cond_11

    const v5, 0x7f13080b

    goto :goto_5

    :cond_11
    const v5, 0x7f13052c

    :goto_5
    iget-object v7, v0, Lcom/google/android/systemui/power/LowBatteryNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v8, 0x7f13052b

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v7, v8, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v8, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v8, v7}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iget-object v9, v8, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput v4, v9, Landroid/app/Notification;->icon:I

    invoke-virtual {v8, p0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)V

    xor-int/lit8 p0, p1, 0x1

    const/16 p1, 0x8

    invoke-virtual {v8, p1, p0}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    const-string p0, "PNW.dismissedWarning"

    invoke-static {v7, p0}, Lcom/google/android/systemui/power/PowerUtils;->createPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, v9, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    iput v6, v8, Landroidx/core/app/NotificationCompat$Builder;->mVisibility:I

    const p1, 0x7f13077e

    invoke-virtual {v7, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p0}, Lcom/google/android/systemui/power/PowerUtils;->createPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v8, p1, p0}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const p0, 0x7f130157

    invoke-virtual {v7, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "PNW.startSaver"

    invoke-static {v7, p1}, Lcom/google/android/systemui/power/PowerUtils;->createPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v8, p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-static {v7, v8, v3}, Lcom/google/android/systemui/power/PowerUtils;->overrideNotificationAppName(Landroid/content/Context;Landroidx/core/app/NotificationCompat$Builder;I)V

    iget-object p0, v0, Lcom/google/android/systemui/power/LowBatteryNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v8}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v1, p1, v0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    :cond_12
    :goto_6
    return-void
.end method
