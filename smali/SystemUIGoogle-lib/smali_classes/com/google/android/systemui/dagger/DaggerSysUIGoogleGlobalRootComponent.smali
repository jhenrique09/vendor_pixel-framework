.class public final Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public activityManagerActivityTypeProvider:Ljavax/inject/Provider;

.field public final androidInternalsModule:Lcom/android/systemui/dagger/AndroidInternalsModule;

.field public buildInfoProvider:Ljavax/inject/Provider;

.field public final context:Landroid/content/Context;

.field public deviceStateManagerFoldProvider:Ljavax/inject/Provider;

.field public dumpManagerProvider:Ljavax/inject/Provider;

.field public executionImplProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

.field public factoryProvider:Ljavax/inject/Provider;

.field public fixedTimingTransitionProgressProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

.field public final frameworkServicesModule:Lcom/android/systemui/dagger/FrameworkServicesModule;

.field public final globalModule:Lcom/android/systemui/dagger/GlobalModule;

.field public hingeSensorAngleProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

.field public final instrumentationTest:Ljava/lang/Boolean;

.field public lifecycleScreenStatusProvider:Ljavax/inject/Provider;

.field public lowLightTransitionCoordinatorProvider:Ljavax/inject/Provider;

.field public multiShadeInputProxyProvider:Ljavax/inject/Provider;

.field public opaEnabledSettingsProvider:Ljavax/inject/Provider;

.field public physicsBasedUnfoldTransitionProgressProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

.field public pluginDependencyProvider:Ljavax/inject/Provider;

.field public pluginEnablerImplProvider:Ljavax/inject/Provider;

.field public provideAccessibilityManagerProvider:Ljavax/inject/Provider;

.field public provideActivityManagerProvider:Ljavax/inject/Provider;

.field public provideActivityTaskManagerProvider:Ljavax/inject/Provider;

.field public provideAlarmManagerProvider:Ljavax/inject/Provider;

.field public provideAmbientContextManagerProvider:Ljavax/inject/Provider;

.field public provideAppOpsManagerProvider:Ljavax/inject/Provider;

.field public provideApplicationContextProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

.field public provideAsyncLayoutInflaterProvider:Ljavax/inject/Provider;

.field public provideAudioManagerProvider:Ljavax/inject/Provider;

.field public provideBluetoothAdapterProvider:Ljavax/inject/Provider;

.field public provideBluetoothManagerProvider:Ljavax/inject/Provider;

.field public provideCameraManagerProvider:Ljavax/inject/Provider;

.field public provideCaptioningManagerProvider:Ljavax/inject/Provider;

.field public provideCarrierConfigManagerProvider:Ljavax/inject/Provider;

.field public provideClipboardManagerProvider:Ljavax/inject/Provider;

.field public provideColorDisplayManagerProvider:Ljavax/inject/Provider;

.field public provideConnectivityManagagerProvider:Ljavax/inject/Provider;

.field public provideContentResolverProvider:Ljavax/inject/Provider;

.field public provideCrossWindowBlurListenersProvider:Ljavax/inject/Provider;

.field public provideDevicePolicyManagerProvider:Ljavax/inject/Provider;

.field public provideDeviceStateManagerProvider:Ljavax/inject/Provider;

.field public provideDisplayManagerProvider:Ljavax/inject/Provider;

.field public provideDisplayMetricsProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

.field public provideExecutionProvider:Ljavax/inject/Provider;

.field public provideFaceManagerProvider:Ljavax/inject/Provider;

.field public provideFoldStateProvider:Ljavax/inject/Provider;

.field public provideIActivityManagerProvider:Ljavax/inject/Provider;

.field public provideIActivityTaskManagerProvider:Ljavax/inject/Provider;

.field public provideIAudioServiceProvider:Ljavax/inject/Provider;

.field public provideIBatteryStatsProvider:Ljavax/inject/Provider;

.field public provideIDreamManagerProvider:Ljavax/inject/Provider;

.field public provideINotificationManagerProvider:Ljavax/inject/Provider;

.field public provideIPackageManagerProvider:Ljavax/inject/Provider;

.field public provideIStatusBarServiceProvider:Ljavax/inject/Provider;

.field public provideIVrManagerProvider:Ljavax/inject/Provider;

.field public provideIWallPaperManagerProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

.field public provideIWindowManagerProvider:Ljavax/inject/Provider;

.field public provideInputManagerProvider:Ljavax/inject/Provider;

.field public provideInputMethodManagerProvider:Ljavax/inject/Provider;

.field public provideInteractionJankMonitorProvider:Ljavax/inject/Provider;

.field public provideIsTestHarnessProvider:Ljavax/inject/Provider;

.field public provideJobSchedulerProvider:Ljavax/inject/Provider;

.field public provideKeyguardManagerProvider:Ljavax/inject/Provider;

.field public provideLatencyTrackerProvider:Ljavax/inject/Provider;

.field public provideLauncherAppsProvider:Ljavax/inject/Provider;

.field public provideLockPatternUtilsProvider:Ljavax/inject/Provider;

.field public provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

.field public provideMainExecutorProvider:Ljavax/inject/Provider;

.field public provideMainHandlerProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

.field public provideMainLooperProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

.field public provideMetricsLoggerProvider:Ljavax/inject/Provider;

.field public provideNaturalRotationProgressProvider:Ljavax/inject/Provider;

.field public provideNetworkScoreManagerProvider:Ljavax/inject/Provider;

.field public provideNotificationManagerCompatProvider:Ljavax/inject/Provider;

.field public provideNotificationManagerProvider:Ljavax/inject/Provider;

.field public provideOptionalTelecomManagerProvider:Ljavax/inject/Provider;

.field public provideOptionalVibratorProvider:Ljavax/inject/Provider;

.field public provideOverlayManagerProvider:Ljavax/inject/Provider;

.field public providePackageManagerProvider:Ljavax/inject/Provider;

.field public providePackageManagerWrapperProvider:Ljavax/inject/Provider;

.field public providePermissionManagerProvider:Ljavax/inject/Provider;

.field public providePluginInstanceManagerFactoryProvider:Ljavax/inject/Provider;

.field public providePowerExemptionManagerProvider:Ljavax/inject/Provider;

.field public providePowerManagerProvider:Ljavax/inject/Provider;

.field public provideProgressForwarderProvider:Ljavax/inject/Provider;

.field public provideRoleManagerProvider:Ljavax/inject/Provider;

.field public provideSafetyCenterManagerProvider:Ljavax/inject/Provider;

.field public provideSensorPrivacyManagerProvider:Ljavax/inject/Provider;

.field public provideShellProgressProvider:Ljavax/inject/Provider;

.field public provideShortcutManagerProvider:Ljavax/inject/Provider;

.field public provideSmartspaceManagerProvider:Ljavax/inject/Provider;

.field public provideStatsManagerProvider:Ljavax/inject/Provider;

.field public provideStatusBarScopedTransitionProvider:Ljavax/inject/Provider;

.field public provideStorageManagerProvider:Ljavax/inject/Provider;

.field public provideSubscriptionManagerProvider:Ljavax/inject/Provider;

.field public provideTelecomManagerProvider:Ljavax/inject/Provider;

.field public provideTelephonyManagerProvider:Ljavax/inject/Provider;

.field public provideTextClassificationManagerProvider:Ljavax/inject/Provider;

.field public provideTrustManagerProvider:Ljavax/inject/Provider;

.field public provideUiBackgroundExecutorProvider:Ljavax/inject/Provider;

.field public provideUiEventLoggerProvider:Ljavax/inject/Provider;

.field public provideUiModeManagerProvider:Ljavax/inject/Provider;

.field public provideUnfoldOnlyProvider:Ljavax/inject/Provider;

.field public provideUserManagerProvider:Ljavax/inject/Provider;

.field public provideVibratorProvider:Ljavax/inject/Provider;

.field public provideViewConfigurationProvider:Ljavax/inject/Provider;

.field public provideWifiManagerProvider:Ljavax/inject/Provider;

.field public provideWindowManagerProvider:Ljavax/inject/Provider;

.field public providerLayoutInflaterProvider:Ljavax/inject/Provider;

.field public providesBiometricManagerProvider:Ljavax/inject/Provider;

.field public providesChoreographerProvider:Ljavax/inject/Provider;

.field public providesFingerprintManagerProvider:Ljavax/inject/Provider;

.field public providesFoldStateListenerProvider:Ljavax/inject/Provider;

.field public providesFoldStateLoggerProvider:Ljavax/inject/Provider;

.field public providesFoldStateLoggingProvider:Ljavax/inject/Provider;

.field public providesPluginExecutorProvider:Ljavax/inject/Provider;

.field public providesPluginInstanceFactoryProvider:Ljavax/inject/Provider;

.field public providesPluginManagerProvider:Ljavax/inject/Provider;

.field public providesSensorManagerProvider:Ljavax/inject/Provider;

.field public qSExpansionPathInterpolatorProvider:Ljavax/inject/Provider;

.field public resourceUnfoldTransitionConfigProvider:Ljavax/inject/Provider;

.field public screenLifecycleProvider:Ljavax/inject/Provider;

.field public final sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

.field public uncaughtExceptionPreHandlerManagerProvider:Ljavax/inject/Provider;

.field public unfoldKeyguardVisibilityManagerImplProvider:Ljavax/inject/Provider;

.field public unfoldKeyguardVisibilityProvider:Ljavax/inject/Provider;

.field public final unfoldSharedInternalModule:Lcom/android/systemui/unfold/UnfoldSharedInternalModule;

.field public final unfoldSharedModule:Lcom/android/systemui/unfold/UnfoldSharedModule;

.field public final unfoldTransitionModule:Lcom/android/systemui/unfold/UnfoldTransitionModule;

.field public unfoldTransitionProgressForwarderProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

.field public unfoldTransitionProgressProvider:Ljavax/inject/Provider;


# direct methods
.method public static bridge synthetic -$$Nest$fgetbuildInfoProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->buildInfoProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetcontext(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetdumpManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetlowLightTransitionCoordinatorProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->lowLightTransitionCoordinatorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetopaEnabledSettingsProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->opaEnabledSettingsProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetpluginDependencyProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->pluginDependencyProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideAccessibilityManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideAccessibilityManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideActivityManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideActivityManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideActivityTaskManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideActivityTaskManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideAlarmManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideAlarmManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideAmbientContextManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideAmbientContextManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideAppOpsManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideAppOpsManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideApplicationContextProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideApplicationContextProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideAudioManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideAudioManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideBluetoothAdapterProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideBluetoothAdapterProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideCameraManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideCameraManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideCarrierConfigManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideCarrierConfigManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideClipboardManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideClipboardManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideColorDisplayManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideColorDisplayManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideConnectivityManagagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideConnectivityManagagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideContentResolverProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideContentResolverProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideCrossWindowBlurListenersProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideCrossWindowBlurListenersProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideDevicePolicyManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideDevicePolicyManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideDeviceStateManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideDeviceStateManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideDisplayManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideDisplayManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideDisplayMetricsProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideDisplayMetricsProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideExecutionProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideExecutionProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideFaceManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideFaceManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideFoldStateProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideFoldStateProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideIActivityManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideIActivityManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideIActivityTaskManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideIActivityTaskManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideIBatteryStatsProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideIBatteryStatsProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideIDreamManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideIDreamManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideINotificationManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideINotificationManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideIStatusBarServiceProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideIStatusBarServiceProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideIWallPaperManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideIWallPaperManagerProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideIWindowManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideIWindowManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideInputManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideInputManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideInteractionJankMonitorProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideInteractionJankMonitorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideIsTestHarnessProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideIsTestHarnessProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideJobSchedulerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideJobSchedulerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideKeyguardManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideKeyguardManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideLatencyTrackerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideLatencyTrackerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideLauncherAppsProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideLauncherAppsProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideLockPatternUtilsProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideLockPatternUtilsProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideMainDelayableExecutorProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideMainExecutorProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMainExecutorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideMainHandlerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMainHandlerProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideMainLooperProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMainLooperProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideMetricsLoggerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideNaturalRotationProgressProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideNaturalRotationProgressProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideNotificationManagerCompatProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideNotificationManagerCompatProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideNotificationManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideNotificationManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideOptionalVibratorProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideOptionalVibratorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideOverlayManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideOverlayManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovidePackageManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providePackageManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovidePowerExemptionManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providePowerExemptionManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovidePowerManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providePowerManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideProgressForwarderProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideProgressForwarderProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideRoleManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideRoleManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideSensorPrivacyManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideSensorPrivacyManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideShellProgressProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideShellProgressProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideShortcutManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideShortcutManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideSmartspaceManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideSmartspaceManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideStatsManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideStatsManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideStatusBarScopedTransitionProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideStatusBarScopedTransitionProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideStorageManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideStorageManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideSubscriptionManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideSubscriptionManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideTelecomManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideTelecomManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideTelephonyManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideTelephonyManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideTrustManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideTrustManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideUiBackgroundExecutorProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideUiBackgroundExecutorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideUiEventLoggerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideUiModeManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideUiModeManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideUserManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideUserManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideVibratorProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideVibratorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideViewConfigurationProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideViewConfigurationProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideWifiManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideWifiManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovideWindowManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideWindowManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetproviderLayoutInflaterProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providerLayoutInflaterProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovidesBiometricManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providesBiometricManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovidesChoreographerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providesChoreographerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovidesFingerprintManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providesFingerprintManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovidesFoldStateListenerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providesFoldStateListenerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovidesPluginManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providesPluginManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovidesSensorManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providesSensorManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetscreenLifecycleProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->screenLifecycleProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetunfoldTransitionProgressProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->unfoldTransitionProgressProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static -$$Nest$mambientDisplayConfiguration(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Landroid/hardware/display/AmbientDisplayConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->frameworkServicesModule:Lcom/android/systemui/dagger/FrameworkServicesModule;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/hardware/display/AmbientDisplayConfiguration;

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static -$$Nest$mapplicationAssetManager(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Landroid/content/res/AssetManager;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideApplicationContextProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    invoke-virtual {p0}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static -$$Nest$mdisplayIdInteger(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    return p0
.end method

.method public static -$$Nest$mmainResources(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Landroid/content/res/Resources;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static -$$Nest$mmediaSessionManager(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Landroid/media/session/MediaSessionManager;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Landroid/media/session/MediaSessionManager;

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/session/MediaSessionManager;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static -$$Nest$mwallpaperManager(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Landroid/app/WallpaperManager;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Landroid/app/WallpaperManager;

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/WallpaperManager;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0
.end method

.method public constructor <init>(Lcom/android/systemui/dagger/GlobalModule;Lcom/android/systemui/dagger/AndroidInternalsModule;Lcom/android/systemui/dagger/FrameworkServicesModule;Lcom/android/systemui/unfold/UnfoldTransitionModule;Lcom/android/systemui/unfold/UnfoldSharedModule;Lcom/android/systemui/unfold/UnfoldSharedInternalModule;Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    iput-object p8, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->instrumentationTest:Ljava/lang/Boolean;

    iput-object p7, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->unfoldTransitionModule:Lcom/android/systemui/unfold/UnfoldTransitionModule;

    iput-object p6, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->unfoldSharedInternalModule:Lcom/android/systemui/unfold/UnfoldSharedInternalModule;

    iput-object p5, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->unfoldSharedModule:Lcom/android/systemui/unfold/UnfoldSharedModule;

    iput-object p3, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->frameworkServicesModule:Lcom/android/systemui/dagger/FrameworkServicesModule;

    iput-object p2, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->androidInternalsModule:Lcom/android/systemui/dagger/AndroidInternalsModule;

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->globalModule:Lcom/android/systemui/dagger/GlobalModule;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideIWindowManagerProvider:Ljavax/inject/Provider;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    const/4 p1, 0x3

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->resourceUnfoldTransitionConfigProvider:Ljavax/inject/Provider;

    const/4 p1, 0x6

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideContentResolverProvider:Ljavax/inject/Provider;

    new-instance p1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    const/4 p2, 0x5

    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)V

    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->factoryProvider:Ljavax/inject/Provider;

    const/16 p1, 0xa

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providesSensorManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0xb

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideUiBackgroundExecutorProvider:Ljavax/inject/Provider;

    new-instance p1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    const/16 p2, 0x9

    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)V

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->hingeSensorAngleProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    const/16 p1, 0xe

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0xd

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->screenLifecycleProvider:Ljavax/inject/Provider;

    const/16 p1, 0xc

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->lifecycleScreenStatusProvider:Ljavax/inject/Provider;

    const/16 p1, 0x10

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideDeviceStateManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0xf

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->deviceStateManagerFoldProvider:Ljavax/inject/Provider;

    const/16 p1, 0x12

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideActivityManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x11

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->activityManagerActivityTypeProvider:Ljavax/inject/Provider;

    const/16 p1, 0x14

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->unfoldKeyguardVisibilityManagerImplProvider:Ljavax/inject/Provider;

    const/16 p1, 0x13

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->unfoldKeyguardVisibilityProvider:Ljavax/inject/Provider;

    const/16 p1, 0x15

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideDisplayManagerProvider:Ljavax/inject/Provider;

    new-instance p1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    const/16 p2, 0x17

    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)V

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMainLooperProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    new-instance p1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    const/16 p2, 0x16

    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)V

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMainHandlerProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    const/16 p1, 0x18

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMainExecutorProvider:Ljavax/inject/Provider;

    const/16 p1, 0x8

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideFoldStateProvider:Ljavax/inject/Provider;

    new-instance p1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    const/4 p2, 0x7

    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)V

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->physicsBasedUnfoldTransitionProgressProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    new-instance p1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    const/16 p2, 0x19

    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)V

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->fixedTimingTransitionProgressProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    const/4 p1, 0x4

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->unfoldTransitionProgressProvider:Ljavax/inject/Provider;

    const/16 p1, 0x1a

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideUnfoldOnlyProvider:Ljavax/inject/Provider;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideShellProgressProvider:Ljavax/inject/Provider;

    const/16 p1, 0x1b

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideActivityTaskManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x1c

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideWindowManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x1d

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideIStatusBarServiceProvider:Ljavax/inject/Provider;

    const/16 p1, 0x1e

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideUserManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x1f

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideLauncherAppsProvider:Ljavax/inject/Provider;

    const/16 p1, 0x20

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideInteractionJankMonitorProvider:Ljavax/inject/Provider;

    const/16 p1, 0x21

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providePackageManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x22

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideIActivityManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x23

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideIsTestHarnessProvider:Ljavax/inject/Provider;

    new-instance p1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    const/16 p2, 0x24

    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)V

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideIWallPaperManagerProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    const/16 p1, 0x25

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providePowerManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x26

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideAlarmManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x27

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    const/16 p1, 0x28

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providesChoreographerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x29

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->uncaughtExceptionPreHandlerManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x2a

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideLockPatternUtilsProvider:Ljavax/inject/Provider;

    new-instance p1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    const/16 p2, 0x2b

    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)V

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->executionImplProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideExecutionProvider:Ljavax/inject/Provider;

    const/16 p1, 0x2c

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providesFingerprintManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x2d

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideFaceManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x2e

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providerLayoutInflaterProvider:Ljavax/inject/Provider;

    new-instance p1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    const/16 p2, 0x2f

    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)V

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideDisplayMetricsProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    new-instance p1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    const/16 p2, 0x31

    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)V

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideApplicationContextProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    const/16 p1, 0x30

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providesFoldStateListenerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x32

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideDevicePolicyManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x33

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->buildInfoProvider:Ljavax/inject/Provider;

    const/16 p1, 0x34

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideAccessibilityManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x35

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideNaturalRotationProgressProvider:Ljavax/inject/Provider;

    const/16 p1, 0x36

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideStatusBarScopedTransitionProvider:Ljavax/inject/Provider;

    const/16 p1, 0x37

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x38

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideSmartspaceManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x39

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideLatencyTrackerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x3a

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideVibratorProvider:Ljavax/inject/Provider;

    const/16 p1, 0x3b

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->opaEnabledSettingsProvider:Ljavax/inject/Provider;

    const/16 p1, 0x3e

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providesPluginExecutorProvider:Ljavax/inject/Provider;

    const/16 p1, 0x3f

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideNotificationManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x40

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->pluginEnablerImplProvider:Ljavax/inject/Provider;

    const/16 p1, 0x41

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providesPluginInstanceFactoryProvider:Ljavax/inject/Provider;

    const/16 p1, 0x3d

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providePluginInstanceManagerFactoryProvider:Ljavax/inject/Provider;

    const/16 p1, 0x3c

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providesPluginManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x42

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideINotificationManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x43

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideShortcutManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x44

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideIDreamManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x45

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideViewConfigurationProvider:Ljavax/inject/Provider;

    new-instance p1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    const/16 p2, 0x47

    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)V

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->unfoldTransitionProgressForwarderProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    const/16 p1, 0x46

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideProgressForwarderProvider:Ljavax/inject/Provider;

    const/16 p1, 0x48

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideKeyguardManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x49

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideTrustManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x4a

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideTelephonyManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x4b

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideCrossWindowBlurListenersProvider:Ljavax/inject/Provider;

    const/16 p1, 0x4c

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providesBiometricManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x4d

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideAudioManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x4e

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providePowerExemptionManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x4f

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideInputManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x50

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideSubscriptionManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x51

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideSensorPrivacyManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x52

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideIBatteryStatsProvider:Ljavax/inject/Provider;

    const/16 p1, 0x53

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providePackageManagerWrapperProvider:Ljavax/inject/Provider;

    const/16 p1, 0x54

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideStatsManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x55

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideCarrierConfigManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x56

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideConnectivityManagagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x57

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideWifiManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x58

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideNetworkScoreManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x59

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideRoleManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x5a

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideIAudioServiceProvider:Ljavax/inject/Provider;

    const/16 p1, 0x5b

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideCaptioningManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x5c

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->pluginDependencyProvider:Ljavax/inject/Provider;

    const/16 p1, 0x5e

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideBluetoothManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x5d

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideBluetoothAdapterProvider:Ljavax/inject/Provider;

    const/16 p1, 0x5f

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideTelecomManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x60

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideIActivityTaskManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x61

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideUiModeManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x62

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideAppOpsManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x63

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->lowLightTransitionCoordinatorProvider:Ljavax/inject/Provider;

    const/16 p1, 0x64

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideColorDisplayManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x65

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideCameraManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x66

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideOverlayManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x67

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideSafetyCenterManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x68

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providesFoldStateLoggingProvider:Ljavax/inject/Provider;

    const/16 p1, 0x69

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providesFoldStateLoggerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x6a

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideJobSchedulerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x6b

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideTextClassificationManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x6c

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideClipboardManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x6d

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideStorageManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x6e

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideNotificationManagerCompatProvider:Ljavax/inject/Provider;

    const/16 p1, 0x6f

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideIVrManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x70

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideOptionalVibratorProvider:Ljavax/inject/Provider;

    const/16 p1, 0x71

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideAmbientContextManagerProvider:Ljavax/inject/Provider;

    new-instance p1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    const/16 p2, 0x72

    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    new-instance p1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    const/16 p2, 0x73

    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideOptionalTelecomManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x74

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideInputMethodManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x75

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->qSExpansionPathInterpolatorProvider:Ljavax/inject/Provider;

    const/16 p1, 0x76

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideIPackageManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x77

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providePermissionManagerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x78

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->multiShadeInputProxyProvider:Ljavax/inject/Provider;

    const/16 p1, 0x79

    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideAsyncLayoutInflaterProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final rotationChangeProvider()Lcom/android/systemui/unfold/updates/RotationChangeProvider;
    .locals 3

    new-instance v0, Lcom/android/systemui/unfold/updates/RotationChangeProvider;

    iget-object v1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideDisplayManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMainHandlerProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    invoke-virtual {v2}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/systemui/unfold/updates/RotationChangeProvider;-><init>(Landroid/hardware/display/DisplayManager;Landroid/content/Context;Landroid/os/Handler;)V

    return-object v0
.end method
