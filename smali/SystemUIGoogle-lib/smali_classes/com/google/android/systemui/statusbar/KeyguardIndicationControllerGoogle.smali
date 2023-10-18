.class public final Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;
.super Lcom/android/systemui/statusbar/KeyguardIndicationController;
.source ""


# instance fields
.field public mAdaptiveChargingActive:Z

.field public mAdaptiveChargingEnabledInSettings:Z

.field protected mAdaptiveChargingManager:Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;

.field protected mAdaptiveChargingStatusReceiver:Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;

.field public mBatteryLevel:I

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mBroadcastReceiver:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$1;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceConfig:Lcom/android/systemui/util/DeviceConfigProxy;

.field public mEstimatedChargeCompletion:J

.field public final mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

.field public mInited:Z

.field public final mTunerService:Lcom/android/systemui/tuner/TunerService;

.field public mUpdateMonitorCallback:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$GoogleKeyguardCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/util/wakelock/WakeLock$Builder;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/app/admin/DevicePolicyManager;Lcom/android/internal/app/IBatteryStats;Landroid/os/UserManager;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/biometrics/AuthController;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;Lcom/android/keyguard/logging/KeyguardLogger;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;Landroid/app/AlarmManager;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/flags/FeatureFlags;)V
    .locals 26

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p14

    move-object/from16 v13, p15

    move-object/from16 v14, p16

    move-object/from16 v15, p17

    move-object/from16 v16, p18

    move-object/from16 v17, p19

    move-object/from16 v18, p20

    move-object/from16 v19, p21

    move-object/from16 v20, p22

    move-object/from16 v21, p23

    move-object/from16 v22, p25

    move-object/from16 v23, p26

    move-object/from16 v24, p27

    move-object/from16 v25, p28

    invoke-direct/range {v0 .. v25}, Lcom/android/systemui/statusbar/KeyguardIndicationController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/util/wakelock/WakeLock$Builder;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/app/admin/DevicePolicyManager;Lcom/android/internal/app/IBatteryStats;Landroid/os/UserManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/biometrics/AuthController;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;Lcom/android/keyguard/logging/KeyguardLogger;Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;Landroid/app/AlarmManager;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/flags/FeatureFlags;)V

    new-instance v0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$1;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$1;-><init>(Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;)V

    iput-object v0, v1, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mBroadcastReceiver:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$1;

    new-instance v0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$2;

    invoke-direct {v0, v1}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$2;-><init>(Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;)V

    iput-object v0, v1, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mAdaptiveChargingStatusReceiver:Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;

    move-object/from16 v0, p1

    iput-object v0, v1, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mContext:Landroid/content/Context;

    move-object/from16 v2, p8

    iput-object v2, v1, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-object/from16 v2, p12

    iput-object v2, v1, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    move-object/from16 v2, p13

    iput-object v2, v1, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mDeviceConfig:Lcom/android/systemui/util/DeviceConfigProxy;

    new-instance v2, Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;

    invoke-direct {v2, v0}, Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mAdaptiveChargingManager:Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;

    move-object/from16 v0, p24

    iput-object v0, v1, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    return-void
.end method


# virtual methods
.method public final computePowerIndication()Ljava/lang/String;
    .locals 8

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    const/high16 v1, 0x42c80000    # 100.0f

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mAdaptiveChargingEnabledInSettings:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mAdaptiveChargingActive:Z

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mAdaptiveChargingManager:Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;

    iget-wide v2, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mEstimatedChargeCompletion:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;->formatTimeToFull(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v2

    iget v3, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mBatteryLevel:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    float-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f1300f3

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryDefender:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    int-to-float p0, p0

    div-float/2addr p0, v1

    float-to-double v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v1, 0x7f130477

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3

    :cond_1
    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIncompatibleCharger:Z

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    int-to-float p0, p0

    div-float/2addr p0, v1

    float-to-double v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v1, 0x7f13047a

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerCharged:Z

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f130455

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3

    :cond_3
    iget-wide v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingTimeRemaining:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedInWired:Z

    if-eqz v2, :cond_9

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingSpeed:I

    if-eqz v2, :cond_7

    const/4 v4, 0x2

    if-eq v2, v4, :cond_5

    if-eqz v0, :cond_e

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    const v2, 0x7f130469

    goto :goto_2

    :cond_6
    const v2, 0x7f130476

    goto :goto_2

    :cond_7
    if-eqz v0, :cond_8

    const v2, 0x7f13046a

    goto :goto_2

    :cond_8
    const v2, 0x7f130478

    goto :goto_2

    :cond_9
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedInWireless:Z

    if-eqz v2, :cond_b

    if-eqz v0, :cond_a

    const v2, 0x7f13046b

    goto :goto_2

    :cond_a
    const v2, 0x7f13047b

    goto :goto_2

    :cond_b
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedInDock:Z

    if-eqz v2, :cond_d

    if-eqz v0, :cond_c

    const v2, 0x7f130468

    goto :goto_2

    :cond_c
    const v2, 0x7f130479

    goto :goto_2

    :cond_d
    if-eqz v0, :cond_e

    :goto_1
    const v2, 0x7f130467

    goto :goto_2

    :cond_e
    const v2, 0x7f130475

    :goto_2
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    int-to-float v5, v5

    div-float/2addr v5, v1

    float-to-double v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_f

    iget-wide v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingTimeRemaining:J

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatShortElapsedTimeRoundingUpToMinutes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_f
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_3
    return-object p0
.end method

.method public final init()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInited:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInited:Z

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDockManager:Lcom/android/systemui/dock/DockManager;

    check-cast v2, Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "add alignment listener: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DLObserver"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v2, Lcom/google/android/systemui/dreamliner/DockObserver;->mAlignmentStateListeners:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mUpdateMonitorCallback:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$GoogleKeyguardCallback;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$GoogleKeyguardCallback;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$GoogleKeyguardCallback;-><init>(Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;)V

    iput-object v0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mUpdateMonitorCallback:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$GoogleKeyguardCallback;

    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mUpdateMonitorCallback:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$GoogleKeyguardCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarStateListener:Lcom/android/systemui/statusbar/KeyguardIndicationController$4;

    invoke-interface {v0, v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardStateCallback:Lcom/android/systemui/statusbar/KeyguardIndicationController$5;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;->onDozingChanged(Z)V

    :goto_0
    iget-boolean v0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mInited:Z

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iput-boolean v1, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mInited:Z

    new-instance v0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;)V

    const-string v1, "adaptive_charging_enabled"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;)V

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mDeviceConfig:Lcom/android/systemui/util/DeviceConfigProxy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "adaptive_charging"

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    invoke-virtual {p0}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->triggerAdaptiveChargingStatusUpdate()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.google.android.systemui.adaptivecharging.ADAPTIVE_CHARGING_DEADLINE_SET"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mBroadcastReceiver:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$1;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v0, v3, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final refreshAdaptiveChargingEnabled()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mAdaptiveChargingManager:Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;

    invoke-virtual {v0}, Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;->hasAdaptiveChargingFeature()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "adaptive_charging"

    const-string v3, "adaptive_charging_enabled"

    invoke-static {v0, v3, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mAdaptiveChargingManager:Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;

    invoke-virtual {v0}, Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mAdaptiveChargingEnabledInSettings:Z

    return-void
.end method

.method public final setReverseChargingMessage(Ljava/lang/CharSequence;)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0xa

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->hideIndication(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mContext:Landroid/content/Context;

    const v3, 0x7f010250

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "message or icon must be set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    if-eqz v4, :cond_4

    new-instance p0, Lcom/android/systemui/keyguard/KeyguardIndication;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/keyguard/KeyguardIndication;-><init>(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Landroid/graphics/drawable/Drawable;Ljava/lang/Long;)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->updateIndication(ILcom/android/systemui/keyguard/KeyguardIndication;Z)V

    :goto_1
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "text color must be set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final showTrustGrantedMessage(Ljava/lang/String;Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    invoke-interface {v1}, Lcom/android/systemui/util/settings/SettingsProxy;->getUserId()I

    move-result v2

    const-string v3, "chip_all_watch_unlocks"

    invoke-interface {v1, v2, v3, v0}, Lcom/android/systemui/util/settings/SettingsProxy;->getBoolForUser(ILjava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    const-string p1, ""

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTrustGrantedIndication:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDeviceEntryIndication(Z)V

    goto :goto_1

    :cond_2
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTrustGrantedIndication:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDeviceEntryIndication(Z)V

    :goto_1
    return-void
.end method

.method public final triggerAdaptiveChargingStatusUpdate()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->refreshAdaptiveChargingEnabled()V

    iget-boolean v0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mAdaptiveChargingEnabledInSettings:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mAdaptiveChargingManager:Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mAdaptiveChargingStatusReceiver:Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;->queryStatus(Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mAdaptiveChargingActive:Z

    :goto_0
    return-void
.end method
