.class public final Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle;
.super Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;
.source ""


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public mAnimStartTime:J

.field public final mBatteryStateChangeCallback:Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle$1;

.field public final mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

.field public mChargingAnimShown:Z

.field public final mContext:Landroid/content/Context;

.field public final mDockObserver:Lcom/google/android/systemui/dreamliner/DockObserver;

.field public final mHealthManagerOptional:Ljava/util/Optional;

.field public final mKeyguardIndicationController:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mReceivingBatteryLevel:I

.field public mReverseChargingAnimShown:Z

.field public final mReverseChargingViewControllerOptional:Ljava/util/Optional;

.field public final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public final mWallpaperNotifier:Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "CentralSurfacesGoogle"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;Ljava/util/Optional;Lcom/google/android/systemui/dreamliner/DockObserver;Ljava/util/Optional;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/init/NotificationsController;Lcom/android/systemui/fragments/FragmentService;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/phone/AutoHideController;Lcom/android/systemui/statusbar/core/StatusBarInitializer;Lcom/android/systemui/statusbar/window/StatusBarWindowController;Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/broadcast/BroadcastSender;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/util/DisplayMetrics;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/shade/ShadeLogger;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Ljava/util/Optional;Ldagger/Lazy;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/navigationbar/NavigationBarController;Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;Ldagger/Lazy;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/phone/ScrimController;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/biometrics/AuthRippleController;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/DozeServiceHost;Landroid/os/PowerManager;Lcom/android/systemui/recents/ScreenPinningRequest;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/volume/VolumeComponent;Lcom/android/systemui/statusbar/CommandQueue;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentFactory;Lcom/android/systemui/plugins/PluginManager;Lcom/android/systemui/shade/ShadeController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/keyguard/KeyguardViewMediator$4;Lcom/android/systemui/InitController;Landroid/os/Handler;Lcom/android/systemui/plugins/PluginDependencyProvider;Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;Lcom/android/systemui/statusbar/policy/ExtensionController;Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Lcom/android/systemui/util/WallpaperController;Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/MessageRouterImpl;Landroid/app/WallpaperManager;Ljava/util/Optional;Lcom/android/systemui/animation/ActivityLaunchAnimator;Landroid/app/AlarmManager;Lcom/android/internal/jank/InteractionJankMonitor;Landroid/hardware/devicestate/DeviceStateManager;Lcom/android/systemui/charging/WiredChargingRippleController;Landroid/service/dreams/IDreamManager;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/LightRevealScrim;Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;Lcom/android/systemui/settings/UserTracker;Ljavax/inject/Provider;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 96

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    move-object/from16 v8, p12

    move-object/from16 v9, p13

    move-object/from16 v10, p14

    move-object/from16 v11, p15

    move-object/from16 v12, p16

    move-object/from16 v13, p17

    move-object/from16 v14, p18

    move-object/from16 v15, p19

    move-object/from16 v16, p20

    move-object/from16 v17, p21

    move-object/from16 v18, p22

    move-object/from16 v19, p24

    move-object/from16 v20, p25

    move-object/from16 v21, p26

    move-object/from16 v22, p27

    move-object/from16 v23, p28

    move-object/from16 v24, p29

    move-object/from16 v25, p30

    move-object/from16 v26, p31

    move-object/from16 v27, p32

    move-object/from16 v28, p33

    move-object/from16 v29, p34

    move-object/from16 v30, p35

    move-object/from16 v31, p36

    move-object/from16 v32, p37

    move-object/from16 v33, p38

    move-object/from16 v34, p39

    move-object/from16 v35, p40

    move-object/from16 v36, p41

    move-object/from16 v37, p42

    move-object/from16 v38, p43

    move-object/from16 v39, p44

    move-object/from16 v40, p45

    move-object/from16 v41, p46

    move-object/from16 v42, p47

    move-object/from16 v43, p48

    move-object/from16 v44, p49

    move-object/from16 v45, p50

    move-object/from16 v46, p51

    move-object/from16 v47, p52

    move-object/from16 v48, p53

    move-object/from16 v69, p54

    move-object/from16 v49, p55

    move-object/from16 v50, p56

    move-object/from16 v51, p57

    move-object/from16 v52, p58

    move-object/from16 v53, p59

    move-object/from16 v54, p60

    move-object/from16 v55, p61

    move-object/from16 v56, p62

    move-object/from16 v57, p63

    move-object/from16 v58, p64

    move-object/from16 v59, p65

    move-object/from16 v60, p66

    move-object/from16 v61, p67

    move-object/from16 v62, p68

    move-object/from16 v63, p69

    move-object/from16 v64, p70

    move-object/from16 v65, p71

    move-object/from16 v66, p72

    move-object/from16 v67, p73

    move-object/from16 v68, p74

    move-object/from16 v70, p75

    move-object/from16 v71, p76

    move-object/from16 v72, p77

    move-object/from16 v73, p78

    move-object/from16 v74, p79

    move-object/from16 v75, p80

    move-object/from16 v76, p81

    move-object/from16 v77, p82

    move-object/from16 v78, p83

    move-object/from16 v79, p84

    move-object/from16 v80, p85

    move-object/from16 v81, p86

    move-object/from16 v82, p87

    move-object/from16 v83, p88

    move-object/from16 v84, p89

    move-object/from16 v85, p91

    move-object/from16 v86, p92

    move-object/from16 v87, p93

    move-object/from16 v88, p94

    move-object/from16 v89, p95

    move-object/from16 v90, p96

    move-object/from16 v91, p97

    move-object/from16 v92, p98

    move-object/from16 v93, p99

    move-object/from16 v94, p100

    move-object/from16 v95, p101

    invoke-direct/range {v0 .. v95}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/init/NotificationsController;Lcom/android/systemui/fragments/FragmentService;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/phone/AutoHideController;Lcom/android/systemui/statusbar/core/StatusBarInitializer;Lcom/android/systemui/statusbar/window/StatusBarWindowController;Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/util/DisplayMetrics;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/shade/ShadeLogger;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Ljava/util/Optional;Ldagger/Lazy;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/navigationbar/NavigationBarController;Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;Ldagger/Lazy;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/phone/ScrimController;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/biometrics/AuthRippleController;Lcom/android/systemui/statusbar/phone/DozeServiceHost;Landroid/os/PowerManager;Lcom/android/systemui/recents/ScreenPinningRequest;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/volume/VolumeComponent;Lcom/android/systemui/statusbar/CommandQueue;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentFactory;Lcom/android/systemui/plugins/PluginManager;Lcom/android/systemui/shade/ShadeController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/keyguard/KeyguardViewMediator$4;Lcom/android/systemui/InitController;Landroid/os/Handler;Lcom/android/systemui/plugins/PluginDependencyProvider;Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;Lcom/android/systemui/statusbar/policy/ExtensionController;Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Lcom/android/systemui/statusbar/KeyguardIndicationController;Lcom/android/systemui/demomode/DemoModeController;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Lcom/android/systemui/util/WallpaperController;Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/MessageRouterImpl;Landroid/app/WallpaperManager;Ljava/util/Optional;Lcom/android/systemui/animation/ActivityLaunchAnimator;Lcom/android/internal/jank/InteractionJankMonitor;Landroid/hardware/devicestate/DeviceStateManager;Lcom/android/systemui/charging/WiredChargingRippleController;Landroid/service/dreams/IDreamManager;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/LightRevealScrim;Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;Lcom/android/systemui/settings/UserTracker;Ljavax/inject/Provider;Lcom/android/systemui/plugins/ActivityStarter;)V

    new-instance v0, Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle$1;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle$1;-><init>(Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle;)V

    iput-object v0, v1, Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle;->mBatteryStateChangeCallback:Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle$1;

    move-object/from16 v0, p5

    iput-object v0, v1, Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle;->mContext:Landroid/content/Context;

    move-object/from16 v0, p23

    iput-object v0, v1, Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle;->mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    move-object/from16 v0, p1

    iput-object v0, v1, Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle;->mWallpaperNotifier:Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;

    move-object/from16 v0, p2

    iput-object v0, v1, Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle;->mReverseChargingViewControllerOptional:Ljava/util/Optional;

    move-object/from16 v0, p4

    iput-object v0, v1, Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle;->mHealthManagerOptional:Ljava/util/Optional;

    move-object/from16 v0, p73

    iput-object v0, v1, Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle;->mKeyguardIndicationController:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;

    move-object/from16 v0, p90

    iput-object v0, v1, Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v0, p40

    iput-object v0, v1, Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-object/from16 v0, p3

    iput-object v0, v1, Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle;->mDockObserver:Lcom/google/android/systemui/dreamliner/DockObserver;

    move-object/from16 v0, p13

    iput-object v0, v1, Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v0, p101

    iput-object v0, v1, Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 10

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->start()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    iget-object v2, p0, Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle;->mBatteryStateChangeCallback:Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle$1;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    const v2, 0x7f0a028d

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const-string v2, "DLObserver"

    iget-object v3, p0, Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle;->mDockObserver:Lcom/google/android/systemui/dreamliner/DockObserver;

    if-nez v1, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "set null for dreamlinerGear"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iput-object v1, v3, Lcom/google/android/systemui/dreamliner/DockObserver;->mDreamlinerGear:Landroid/widget/ImageView;

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    const v4, 0x7f0a058d

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, v3, Lcom/google/android/systemui/dreamliner/DockObserver;->mPhotoPreview:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/google/android/systemui/dreamliner/DockIndicationController;

    iget-object v5, p0, Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle;->mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    iget-object v7, p0, Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle;->mKeyguardIndicationController:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;

    iget-object v8, p0, Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-object v4, v1

    move-object v9, p0

    invoke-direct/range {v4 .. v9}, Lcom/google/android/systemui/dreamliner/DockIndicationController;-><init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastSender;Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/phone/CentralSurfaces;)V

    iput-object v1, v3, Lcom/google/android/systemui/dreamliner/DockObserver;->mIndicationController:Lcom/google/android/systemui/dreamliner/DockIndicationController;

    iget-object v4, v3, Lcom/google/android/systemui/dreamliner/DockObserver;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v4, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v1, v3, Lcom/google/android/systemui/dreamliner/DockObserver;->mWirelessCharger:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "wirelessCharger is not present"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    iget-object v1, v3, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockAlignmentController:Lcom/google/android/systemui/dreamliner/DockAlignmentController;

    iget-object v2, v1, Lcom/google/android/systemui/dreamliner/DockAlignmentController;->mWirelessCharger:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v4

    if-nez v4, :cond_3

    const-string v2, "DockAlignmentController"

    const-string v4, "wirelessCharger is null"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/systemui/dreamliner/WirelessCharger;

    new-instance v4, Lcom/google/android/systemui/dreamliner/DockAlignmentController$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1}, Lcom/google/android/systemui/dreamliner/DockAlignmentController$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/dreamliner/DockAlignmentController;)V

    invoke-virtual {v2, v4}, Lcom/google/android/systemui/dreamliner/WirelessCharger;->registerAlignInfo(Lcom/google/android/systemui/dreamliner/WirelessCharger$AlignInfoListener;)V

    :goto_1
    new-instance v2, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda2;

    invoke-direct {v2, v3}, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;)V

    iget-object v1, v1, Lcom/google/android/systemui/dreamliner/DockAlignmentController;->mDockAlignmentStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    new-instance v1, Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle;->mHealthManagerOptional:Ljava/util/Optional;

    invoke-virtual {v2, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle;->mReverseChargingViewControllerOptional:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    const v3, 0x7f0a00a6

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;

    iget-object v2, v1, Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v4, v1, Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    invoke-interface {v2, v4, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v4, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    const-string v5, "markState"

    invoke-virtual {v2, v5}, Landroidx/lifecycle/LifecycleRegistry;->enforceMainThreadIfNeeded(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    iget-object v2, v1, Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;->mCentralSurfacesLazy:Ldagger/Lazy;

    check-cast v2, Ldagger/internal/DoubleCheck;

    invoke-virtual {v2}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;

    iput-object v2, v1, Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;->mAmbientIndicationContainer:Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v4, v1, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_4
    iget-object v1, p0, Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle;->mWallpaperNotifier:Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;

    iget-object v2, v1, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->mNotifListener:Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier$1;

    iget-object v4, v1, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->mWallpaperChangedReceiver:Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier$2;

    iget-object v5, v1, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {v1}, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->checkNotificationBroadcastSupport()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;

    iput-object p0, v1, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    iget-object v2, p0, Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object v2, v1, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object v2, v1, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v2, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;)V

    iget-object v3, v1, Lcom/android/systemui/AutoReinflateContainer;->mInflateListeners:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    invoke-static {v1}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->$r8$lambda$9W67SzOwxMiBLcvn38qOUi6KrN4(Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;)V

    new-instance v2, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    new-instance v2, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-direct {v2, v0, v1, p0}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;-><init>(Landroid/content/Context;Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;Landroid/app/AlarmManager;)V

    iget-boolean p0, v2, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->mStarted:Z

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    const/4 p0, 0x1

    iput-boolean p0, v2, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->mStarted:Z

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string p0, "com.google.android.ambientindication.action.AMBIENT_INDICATION_SHOW"

    invoke-virtual {v6, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p0, "com.google.android.ambientindication.action.AMBIENT_INDICATION_HIDE"

    invoke-virtual {v6, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v7, "com.google.android.ambientindication.permission.AMBIENT_INDICATION"

    const/4 v8, 0x0

    const/4 v9, 0x2

    move-object v4, v2

    invoke-virtual/range {v3 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    const-class p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, v2, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->mCallback:Lcom/google/android/systemui/ambientmusic/AmbientIndicationService$1;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :goto_3
    return-void
.end method
