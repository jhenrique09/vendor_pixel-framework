.class public final synthetic Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;Landroid/content/Context;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;

    iput-object p2, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$$ExternalSyntheticLambda0;->f$2:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v0, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;

    iget-object v1, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget-object p0, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$$ExternalSyntheticLambda0;->f$2:Lcom/android/internal/logging/UiEventLogger;

    new-instance v2, Lcom/google/android/systemui/power/BatteryInfoBroadcast;

    iget-object v3, v0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    iget-object v4, v0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    iget-object v5, v0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/google/android/systemui/power/BatteryInfoBroadcast;-><init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastSender;Lcom/android/systemui/power/EnhancedEstimates;Ljava/util/concurrent/Executor;)V

    iput-object v2, v0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mBatteryInfoBroadcast:Lcom/google/android/systemui/power/BatteryInfoBroadcast;

    new-instance v2, Lcom/google/android/systemui/power/SevereLowBatteryDialog;

    iget-object v3, v0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v4, v0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mIDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-direct {v2, v1, p0, v3, v4}, Lcom/google/android/systemui/power/SevereLowBatteryDialog;-><init>(Landroid/content/Context;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Landroid/service/dreams/IDreamManager;)V

    new-instance v3, Lcom/google/android/systemui/power/LowPowerWarningsController;

    iget-object v4, v0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    invoke-direct {v3, v1, v2, v4, p0}, Lcom/google/android/systemui/power/LowPowerWarningsController;-><init>(Landroid/content/Context;Lcom/google/android/systemui/power/SevereLowBatteryDialog;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/internal/logging/UiEventLogger;)V

    iput-object v3, v0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mLowPowerWarningsController:Lcom/google/android/systemui/power/LowPowerWarningsController;

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v8, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v8, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v8, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v8, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v8, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "PNW.startSaverConfirmation"

    invoke-virtual {v8, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.android.settingslib.fuelgauge.ACTION_SAVER_STATE_MANUAL_UPDATE"

    invoke-virtual {v8, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v8, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v8, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.bluetooth.device.action.BATTERY_LEVEL_CHANGED"

    invoke-virtual {v8, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.bluetooth.device.action.ALIAS_CHANGED"

    invoke-virtual {v8, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v8, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v8, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v8, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lcom/google/android/systemui/power/BatteryDefenderNotification;

    invoke-direct {v4, v1, p0}, Lcom/google/android/systemui/power/BatteryDefenderNotification;-><init>(Landroid/content/Context;Lcom/android/internal/logging/UiEventLogger;)V

    iput-object v4, v0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mBatteryDefenderNotification:Lcom/google/android/systemui/power/BatteryDefenderNotification;

    const-string v4, "PNW.defenderResumeCharging"

    invoke-virtual {v8, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "PNW.defenderResumeCharging.settings"

    invoke-virtual {v8, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "systemui.power.action.dismissBatteryDefenderWarning"

    invoke-virtual {v8, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    const v4, 0x7f050004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Lcom/google/android/systemui/power/AdaptiveChargingNotification;

    new-instance v6, Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;

    invoke-direct {v6, v1}, Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;-><init>(Landroid/content/Context;)V

    invoke-direct {v4, v1, v6, p0}, Lcom/google/android/systemui/power/AdaptiveChargingNotification;-><init>(Landroid/content/Context;Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;Lcom/android/internal/logging/UiEventLogger;)V

    iput-object v4, v0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mAdaptiveChargingNotification:Lcom/google/android/systemui/power/AdaptiveChargingNotification;

    const-string v4, "com.google.android.systemui.adaptivecharging.ADAPTIVE_CHARGING_DEADLINE_SET"

    invoke-virtual {v8, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "PNW.acChargeNormally"

    invoke-virtual {v8, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "systemui.power.action.dismissAdaptiveChargingWarning"

    invoke-virtual {v8, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    const v4, 0x7f050021

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Lcom/google/android/systemui/power/IncompatibleChargerNotification;

    invoke-direct {v3, v1, v5, p0}, Lcom/google/android/systemui/power/IncompatibleChargerNotification;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/internal/logging/UiEventLogger;)V

    iput-object v3, v0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mIncompatibleChargerNotification:Lcom/google/android/systemui/power/IncompatibleChargerNotification;

    const-string p0, "android.hardware.usb.action.USB_PORT_COMPLIANCE_CHANGED"

    invoke-virtual {v8, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p0, "systemui.power.action.dismissIncompatibleChargerWarning"

    invoke-virtual {v8, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_2
    iget-object v7, v0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v9, v0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mHandler:Landroid/os/Handler;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v11, 0x2

    iget-object v6, v0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v12, 0x20

    invoke-static/range {v6 .. v12}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiverWithHandler$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;Landroid/os/UserHandle;II)V

    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_3

    iget-object v0, v0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p0}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_3
    return-void
.end method
