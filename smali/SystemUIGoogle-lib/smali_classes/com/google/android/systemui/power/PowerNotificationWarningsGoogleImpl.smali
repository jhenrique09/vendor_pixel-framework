.class public final Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;
.super Lcom/android/systemui/power/PowerNotificationWarnings;
.source ""


# instance fields
.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public mAdaptiveChargingNotification:Lcom/google/android/systemui/power/AdaptiveChargingNotification;

.field public mBatteryDefenderNotification:Lcom/google/android/systemui/power/BatteryDefenderNotification;

.field public mBatteryInfoBroadcast:Lcom/google/android/systemui/power/BatteryInfoBroadcast;

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public final mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

.field public final mContext:Landroid/content/Context;

.field public final mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

.field public final mHandler:Landroid/os/Handler;

.field public final mIDreamManager:Landroid/service/dreams/IDreamManager;

.field public mIncompatibleChargerNotification:Lcom/google/android/systemui/power/IncompatibleChargerNotification;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field mLowPowerWarningsController:Lcom/google/android/systemui/power/LowPowerWarningsController;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/broadcast/BroadcastSender;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/util/settings/GlobalSettings;Ldagger/Lazy;Lcom/android/systemui/animation/DialogLaunchAnimator;Lcom/android/systemui/power/EnhancedEstimates;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Landroid/service/dreams/IDreamManager;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;)V
    .locals 11

    move-object v8, p0

    move-object v9, p1

    move-object/from16 v10, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p5

    move-object/from16 v7, p12

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/power/PowerNotificationWarnings;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/broadcast/BroadcastSender;Ldagger/Lazy;Lcom/android/systemui/animation/DialogLaunchAnimator;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/settings/UserTracker;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, v8, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$1;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$1;-><init>(Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;)V

    iput-object v1, v8, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object v9, v8, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mContext:Landroid/content/Context;

    move-object v1, p3

    iput-object v1, v8, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-object v1, p4

    iput-object v1, v8, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    iput-object v10, v8, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    move-object/from16 v1, p6

    iput-object v1, v8, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    move-object/from16 v1, p9

    iput-object v1, v8, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    move-object/from16 v1, p10

    iput-object v1, v8, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 v1, p11

    iput-object v1, v8, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mIDreamManager:Landroid/service/dreams/IDreamManager;

    move-object/from16 v1, p13

    iput-object v1, v8, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mExecutor:Ljava/util/concurrent/Executor;

    move-object v1, p2

    iput-object v1, v8, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    move-object/from16 v1, p12

    iput-object v1, v8, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    new-instance v1, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, v10}, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;Landroid/content/Context;Lcom/android/internal/logging/UiEventLogger;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final dismissLowBatteryWarning()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mLowPowerWarningsController:Lcom/google/android/systemui/power/LowPowerWarningsController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/systemui/power/LowPowerWarningsController;->cancelNotification()V

    :cond_0
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->dump(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mBatteryInfoBroadcast:Lcom/google/android/systemui/power/BatteryInfoBroadcast;

    if-eqz v0, :cond_0

    const-string v1, "\tdump BatteryInfoBroadcast states:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "LastConnectedTime: "

    const-string v2, "last_phone_connected_time"

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->writeString(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "LastDisconnectedTime: "

    const-string v2, "last_phone_disconnected_time"

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->writeString(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "LastDataResetTime: "

    const-string v2, "last_data_reset_time"

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->writeString(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mIncompatibleChargerNotification:Lcom/google/android/systemui/power/IncompatibleChargerNotification;

    if-eqz v0, :cond_1

    const-string v1, "\tdump IncompatibleCharger states:"

    const-string v2, "\t\tLastCompatibleChargerTime: "

    invoke-static {p1, v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/systemui/power/IncompatibleChargerNotification;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/systemui/power/IncompatibleChargerNotification;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "last_compatible_charger_time"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/systemui/power/DumpUtils;->toReadableDateTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\t\tLastIncompatibleChargerTime: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/systemui/power/IncompatibleChargerNotification;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "last_incompatible_charger_time"

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/systemui/power/DumpUtils;->toReadableDateTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    new-instance p1, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;)V

    iget-object p0, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final showLowBatteryWarning(Z)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mLowPowerWarningsController:Lcom/google/android/systemui/power/LowPowerWarningsController;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/systemui/power/LowPowerWarningsController;->mUpdatable:Z

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/power/LowPowerWarningsController;->updateNotification(Z)V

    :cond_0
    return-void
.end method

.method public final update(II)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mLowPowerWarningsController:Lcom/google/android/systemui/power/LowPowerWarningsController;

    if-eqz p0, :cond_1

    const/4 v0, -0x1

    if-ge p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/google/android/systemui/power/LowPowerWarningsController;->mSevereLowBattery:Z

    iput p1, p0, Lcom/google/android/systemui/power/LowPowerWarningsController;->mBatteryLevel:I

    :cond_1
    return-void
.end method

.method public final updateLowBatteryWarning()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mLowPowerWarningsController:Lcom/google/android/systemui/power/LowPowerWarningsController;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/power/LowPowerWarningsController;->updateNotification(Z)V

    :cond_0
    return-void
.end method

.method public final userSwitched()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mLowPowerWarningsController:Lcom/google/android/systemui/power/LowPowerWarningsController;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/power/LowPowerWarningsController;->updateNotification(Z)V

    :cond_0
    return-void
.end method
