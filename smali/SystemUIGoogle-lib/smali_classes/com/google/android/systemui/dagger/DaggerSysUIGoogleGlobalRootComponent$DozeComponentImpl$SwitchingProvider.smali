.class public final Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final synthetic $r8$classId:I

.field public final dozeComponentImpl:Ljava/lang/Object;

.field public final id:I

.field public final sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

.field public final sysUIGoogleSysUIComponentImpl:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Ljava/lang/Object;II)V
    .locals 0

    iput p5, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    iput-object p2, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->sysUIGoogleSysUIComponentImpl:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iput-object p3, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->dozeComponentImpl:Ljava/lang/Object;

    iput p4, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private get$com$google$android$systemui$dagger$DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider()Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;
    .locals 31

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    iget-object v2, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->dozeComponentImpl:Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->sysUIGoogleSysUIComponentImpl:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget v0, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->id:I

    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    :pswitch_0
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DismissibilityCoordinator;

    iget-object v1, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v2, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->notificationDismissibilityProviderImplProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationDismissibilityProviderImpl;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DismissibilityCoordinator;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/notification/collection/provider/NotificationDismissibilityProviderImpl;)V

    return-object v0

    :pswitch_1
    iget-object v0, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->dynamicPrivacyControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    iget-object v0, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v0, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v0, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;-><init>(Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;

    iget-object v1, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->configurationControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v2, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v4, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->notificationGutsManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iget-object v3, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;-><init>(Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    return-object v0

    :pswitch_3
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;

    iget-object v2, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object v2, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->lockscreenSmartspaceControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    iget-object v2, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->notifPipelineProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v1, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->bindSystemClockProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/systemui/util/time/SystemClock;

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;-><init>(Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/time/SystemClock;)V

    return-object v0

    :pswitch_4
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/StackCoordinator;

    iget-object v1, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->groupExpansionManagerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManagerImpl;

    iget-object v1, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->notificationIconAreaControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/StackCoordinator;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V

    return-object v0

    :pswitch_5
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator;

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    iget-object v2, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->assistantFeedbackControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;

    iget-object v3, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->sectionStyleProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/provider/SectionStyleProvider;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;Lcom/android/systemui/statusbar/notification/collection/provider/SectionStyleProvider;)V

    return-object v0

    :pswitch_6
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;

    iget-object v2, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/systemui/dump/DumpManager;

    iget-object v2, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->remoteInputNotificationRebuilderProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/android/systemui/statusbar/RemoteInputNotificationRebuilder;

    iget-object v2, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMainHandlerProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    invoke-virtual {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/os/Handler;

    iget-object v1, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideSmartReplyControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/systemui/statusbar/SmartReplyController;

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;-><init>(Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/RemoteInputNotificationRebuilder;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Landroid/os/Handler;Lcom/android/systemui/statusbar/SmartReplyController;)V

    return-object v0

    :pswitch_7
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;

    check-cast v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;

    new-instance v11, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;

    iget-object v2, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->sysUIGoogleSysUIComponentImpl:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget-object v2, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideNotificationsLogBufferProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/log/LogBuffer;

    invoke-direct {v11, v2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;-><init>(Lcom/android/systemui/log/LogBuffer;)V

    iget-object v2, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->notifInflaterImplProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater;

    iget-object v2, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->notifInflationErrorManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;

    iget-object v2, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->notifViewBarnProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;

    iget-object v2, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->notifUiAdjustmentProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideIStatusBarServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v1, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->bindEventManagerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManagerImpl;

    const/16 v18, 0x9

    const-wide/16 v19, 0x1f4

    move-object v10, v0

    invoke-direct/range {v10 .. v20}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater;Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManagerImpl;IJ)V

    return-object v0

    :pswitch_8
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MediaCoordinator;

    new-instance v2, Lcom/android/systemui/media/controls/util/MediaFeatureFlag;

    iget-object v4, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    iget-object v4, v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/systemui/media/controls/util/MediaFeatureFlag;-><init>(Landroid/content/Context;)V

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideIStatusBarServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v3, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->iconManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/icon/IconManager;

    invoke-direct {v0, v2, v1, v3}, Lcom/android/systemui/statusbar/notification/collection/coordinator/MediaCoordinator;-><init>(Lcom/android/systemui/media/controls/util/MediaFeatureFlag;Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/systemui/statusbar/notification/icon/IconManager;)V

    return-object v0

    :pswitch_9
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v2, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->bindSystemClockProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/time/SystemClock;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;-><init>(Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/time/SystemClock;)V

    return-object v0

    :pswitch_a
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupCountCoordinator;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupCountCoordinator;-><init>()V

    return-object v0

    :pswitch_b
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator;

    iget-object v1, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->debugModeFilterProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator;-><init>(Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;)V

    return-object v0

    :pswitch_c
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;

    iget-object v1, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->peopleNotificationIdentifierImplProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;

    iget-object v2, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->iconManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/icon/IconManager;

    iget-object v4, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->highPriorityProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

    iget-object v3, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->providesPeopleHeaderSubcomponentProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;

    iget-object v3, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;->sectionHeaderNodeControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    invoke-static {v3}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2, v4}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;-><init>(Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;Lcom/android/systemui/statusbar/notification/icon/IconManager;Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;)V

    return-object v0

    :pswitch_d
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;

    iget-object v3, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->notificationGutsManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/render/NotifGutsViewManager;

    check-cast v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;

    new-instance v4, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinatorLogger;

    iget-object v2, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->sysUIGoogleSysUIComponentImpl:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget-object v2, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideNotificationsLogBufferProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/log/LogBuffer;

    invoke-direct {v4, v2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinatorLogger;-><init>(Lcom/android/systemui/log/LogBuffer;)V

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/dump/DumpManager;

    invoke-direct {v0, v3, v4, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;-><init>(Lcom/android/systemui/statusbar/notification/collection/render/NotifGutsViewManager;Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinatorLogger;Lcom/android/systemui/dump/DumpManager;)V

    return-object v0

    :pswitch_e
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    check-cast v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;

    new-instance v6, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinatorLogger;

    iget-object v2, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->sysUIGoogleSysUIComponentImpl:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget-object v2, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideNotificationHeadsUpLogBufferProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/log/LogBuffer;

    invoke-direct {v6, v2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinatorLogger;-><init>(Lcom/android/systemui/log/LogBuffer;)V

    iget-object v2, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->bindSystemClockProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/android/systemui/util/time/SystemClock;

    iget-object v2, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v2, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->headsUpViewBinderProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;

    iget-object v2, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideVisualInterruptionDecisionProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProvider;

    iget-object v2, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v2, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->launchFullScreenIntentProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/android/systemui/statusbar/notification/collection/provider/LaunchFullScreenIntentProvider;

    invoke-virtual {v3}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->notifPipelineFlags()Lcom/android/systemui/statusbar/notification/NotifPipelineFlags;

    iget-object v2, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->providesIncomingHeaderSubcomponentProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;

    iget-object v2, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;->sectionHeaderNodeControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    invoke-static {v2}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-object v5, v0

    invoke-direct/range {v5 .. v13}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinatorLogger;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProvider;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/notification/collection/provider/LaunchFullScreenIntentProvider;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V

    return-object v0

    :pswitch_f
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;

    iget-object v1, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideBubblesManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Optional;

    iget-object v2, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->notifCollectionProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    iget-object v3, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->setBubbles:Ljava/util/Optional;

    invoke-direct {v0, v1, v3, v2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;-><init>(Ljava/util/Optional;Ljava/util/Optional;Lcom/android/systemui/statusbar/notification/collection/NotifCollection;)V

    return-object v0

    :pswitch_10
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DeviceProvisionedCoordinator;

    iget-object v2, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideDeviceProvisionedControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideIPackageManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/IPackageManager;

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DeviceProvisionedCoordinator;-><init>(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V

    return-object v0

    :pswitch_11
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;

    iget-object v2, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->foregroundServiceControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/ForegroundServiceController;

    iget-object v3, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->appOpsControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/appops/AppOpsController;

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;-><init>(Lcom/android/systemui/ForegroundServiceController;)V

    return-object v0

    :pswitch_12
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;

    iget-object v1, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v2, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->highPriorityProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

    iget-object v4, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->providesAlertingHeaderSubcomponentProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;

    iget-object v4, v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;->sectionHeaderNodeControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    invoke-static {v4}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    iget-object v4, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->providesSilentHeaderSubcomponentProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;

    iget-object v4, v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;->sectionHeaderNodeControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;

    invoke-static {v4}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    iget-object v3, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->providesSilentHeaderSubcomponentProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;

    iget-object v3, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;->sectionHeaderNodeControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    invoke-static {v3}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;-><init>(Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;Lcom/android/systemui/statusbar/notification/collection/render/NodeController;)V

    return-object v0

    :pswitch_13
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;

    iget-object v4, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->bgDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/systemui/dump/DumpManager;

    iget-object v1, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v1, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->keyguardNotificationVisibilityProviderImplProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;

    iget-object v1, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->keyguardRepositoryImplProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    iget-object v1, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->keyguardTransitionRepositoryImplProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;

    check-cast v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;

    new-instance v12, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinatorLogger;

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->sysUIGoogleSysUIComponentImpl:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideUnseenNotificationLogBufferProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/log/LogBuffer;

    invoke-direct {v12, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinatorLogger;-><init>(Lcom/android/systemui/log/LogBuffer;)V

    invoke-virtual {v3}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->notifPipelineFlags()Lcom/android/systemui/statusbar/notification/NotifPipelineFlags;

    iget-object v1, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->applicationScopeProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->sectionHeaderVisibilityProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/systemui/statusbar/notification/collection/provider/SectionHeaderVisibilityProvider;

    invoke-virtual {v3}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->secureSettingsImpl()Lcom/android/systemui/util/settings/SecureSettingsImpl;

    move-result-object v15

    iget-object v1, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->seenNotificationsProviderImplProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/systemui/statusbar/notification/collection/provider/SeenNotificationsProviderImpl;

    iget-object v1, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-object v5, v0

    invoke-direct/range {v5 .. v17}, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinatorLogger;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/statusbar/notification/collection/provider/SectionHeaderVisibilityProvider;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/statusbar/notification/collection/provider/SeenNotificationsProviderImpl;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V

    return-object v0

    :pswitch_14
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HideNotifsForOtherUsersCoordinator;

    iget-object v1, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HideNotifsForOtherUsersCoordinator;-><init>(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;)V

    return-object v0

    :pswitch_15
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HideLocallyDismissedNotifsCoordinator;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HideLocallyDismissedNotifsCoordinator;-><init>()V

    return-object v0

    :pswitch_16
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DataStoreCoordinator;

    iget-object v1, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->notifLiveDataStoreImplProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DataStoreCoordinator;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;)V

    return-object v0

    :pswitch_17
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCoordinatorsImpl;

    move-object v4, v0

    iget-object v1, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->sectionStyleProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/provider/SectionStyleProvider;

    check-cast v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->dataStoreCoordinatorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/systemui/statusbar/notification/collection/coordinator/DataStoreCoordinator;

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->hideLocallyDismissedNotifsCoordinatorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/systemui/statusbar/notification/collection/coordinator/HideLocallyDismissedNotifsCoordinator;

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->hideNotifsForOtherUsersCoordinatorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/systemui/statusbar/notification/collection/coordinator/HideNotifsForOtherUsersCoordinator;

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->keyguardCoordinatorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->rankingCoordinatorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->appOpsCoordinatorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->deviceProvisionedCoordinatorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/systemui/statusbar/notification/collection/coordinator/DeviceProvisionedCoordinator;

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->bubbleCoordinatorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->headsUpCoordinatorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->gutsCoordinatorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->conversationCoordinatorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->debugModeCoordinatorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator;

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->groupCountCoordinatorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupCountCoordinator;

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->groupWhenCoordinatorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->mediaCoordinatorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Lcom/android/systemui/statusbar/notification/collection/coordinator/MediaCoordinator;

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->preparationCoordinatorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->remoteInputCoordinatorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->rowAppearanceCoordinatorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v23, v1

    check-cast v23, Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator;

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->stackCoordinatorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v24, v1

    check-cast v24, Lcom/android/systemui/statusbar/notification/collection/coordinator/StackCoordinator;

    iget-object v1, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->shadeEventCoordinatorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v25, v1

    check-cast v25, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->smartspaceDedupingCoordinatorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v26, v1

    check-cast v26, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->viewConfigCoordinatorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v27, v1

    check-cast v27, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;

    iget-object v1, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->visualStabilityCoordinatorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v28, v1

    check-cast v28, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->sensitiveContentCoordinatorImplProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v29, v1

    check-cast v29, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->dismissibilityCoordinatorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v30, v1

    check-cast v30, Lcom/android/systemui/statusbar/notification/collection/coordinator/DismissibilityCoordinator;

    invoke-direct/range {v4 .. v30}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCoordinatorsImpl;-><init>(Lcom/android/systemui/statusbar/notification/collection/provider/SectionStyleProvider;Lcom/android/systemui/statusbar/notification/collection/coordinator/DataStoreCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/HideLocallyDismissedNotifsCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/HideNotifsForOtherUsersCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/DeviceProvisionedCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupCountCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/MediaCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/StackCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;Lcom/android/systemui/statusbar/notification/collection/coordinator/DismissibilityCoordinator;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private get$com$google$android$systemui$dagger$DaggerSysUIGoogleGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider()Ljava/lang/Object;
    .locals 39

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    iget-object v2, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->dozeComponentImpl:Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->sysUIGoogleSysUIComponentImpl:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget v0, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->id:I

    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    :pswitch_0
    new-instance v0, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideDisplayMetricsProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    invoke-virtual {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/DisplayMetrics;

    invoke-direct {v0, v1}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;-><init>(Landroid/util/DisplayMetrics;)V

    return-object v0

    :pswitch_1
    check-cast v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl;

    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl;->dozeAuthRemoverProvider:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/LifecycleRegistry;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object v0

    :pswitch_2
    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->-$$Nest$mmainResources(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->-$$Nest$mmainResources(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070280

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->-$$Nest$mmainResources(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_5
    check-cast v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl;

    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl;->providesWrappedServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/dreams/DreamOverlayContainerView;

    const v1, 0x7f0a0287

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;

    const-string v1, "R.id.status_bar must not be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object v0

    :pswitch_6
    new-instance v0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;

    check-cast v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl;

    iget-object v4, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl;->dozePauserProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->-$$Nest$mmainResources(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMainExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/Executor;

    iget-object v7, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideConnectivityManagagerProvider:Ljavax/inject/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    iget-object v2, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl;->dozeComponentImpl:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/touch/TouchInsetManager;

    new-instance v8, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;

    iget-object v9, v2, Lcom/android/systemui/touch/TouchInsetManager;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v8, v2, v9}, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;-><init>(Lcom/android/systemui/touch/TouchInsetManager;Ljava/util/concurrent/Executor;)V

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideAlarmManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/app/AlarmManager;

    iget-object v1, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->nextAlarmControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/systemui/statusbar/policy/NextAlarmController;

    new-instance v11, Lcom/android/systemui/util/time/DateFormatUtil;

    iget-object v1, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    iget-object v2, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/settings/UserTracker;

    invoke-direct {v11, v1, v2}, Lcom/android/systemui/util/time/DateFormatUtil;-><init>(Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;)V

    iget-object v1, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideIndividualSensorPrivacyControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    iget-object v1, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->providesDreamOverlayNotificationCountProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Ljava/util/Optional;

    iget-object v1, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->zenModeControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v1, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->statusBarWindowStateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

    iget-object v1, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->dreamOverlayStatusBarItemsProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/systemui/dreams/DreamOverlayStatusBarItemsProvider;

    iget-object v1, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->dreamOverlayStateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/android/systemui/dreams/DreamOverlayStateController;

    iget-object v1, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/android/systemui/settings/UserTracker;

    move-object v1, v0

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    move-object v10, v12

    move-object v11, v13

    move-object v12, v14

    move-object v13, v15

    move-object/from16 v14, v16

    move-object/from16 v15, v17

    move-object/from16 v16, v18

    invoke-direct/range {v1 .. v16}, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;-><init>(Lcom/android/systemui/dreams/DreamOverlayStatusBarView;Landroid/content/res/Resources;Ljava/util/concurrent/Executor;Landroid/net/ConnectivityManager;Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;Landroid/app/AlarmManager;Lcom/android/systemui/statusbar/policy/NextAlarmController;Lcom/android/systemui/util/time/DateFormatUtil;Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;Ljava/util/Optional;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;Lcom/android/systemui/dreams/DreamOverlayStatusBarItemsProvider;Lcom/android/systemui/dreams/DreamOverlayStateController;Lcom/android/systemui/settings/UserTracker;)V

    return-object v0

    :pswitch_7
    check-cast v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl;

    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl;->providesWrappedServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/dreams/DreamOverlayContainerView;

    const v1, 0x7f0a0282

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const-string v1, "R.id.dream_overlay_content must not be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object v0

    :pswitch_8
    iget-object v0, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providerLayoutInflaterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d00b0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/dreams/DreamOverlayContainerView;

    const-string v1, "R.layout.dream_layout_container could not be properly inflated"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/dreams/DreamOverlayContainerView;

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object v0

    :pswitch_9
    new-instance v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;

    check-cast v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl;

    iget-object v4, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl;->providesWrappedServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/systemui/dreams/DreamOverlayContainerView;

    iget-object v4, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl;->dozeMachineService:Ljava/lang/Object;

    move-object v6, v4

    check-cast v6, Lcom/android/systemui/complication/ComplicationHostViewController;

    iget-object v4, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl;->providesDozeWakeLockProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v4, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl;->dozeFalsingManagerAdapterProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;

    iget-object v4, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->lowLightTransitionCoordinatorProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lcom/android/dream/lowlight/LowLightTransitionCoordinator;

    iget-object v4, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->blurUtilsProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/android/systemui/statusbar/BlurUtils;

    iget-object v4, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMainHandlerProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    invoke-virtual {v4}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Landroid/os/Handler;

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-static {v12}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl;->dozeTriggersProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->-$$Nest$mmainResources(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0b0022

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v14, v1

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->-$$Nest$mmainResources(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0b0026

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    move-wide/from16 v16, v14

    int-to-long v14, v1

    iget-object v1, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->primaryBouncerCallbackInteractorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor;

    new-instance v1, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    iget-object v4, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl;->sysUIGoogleSysUIComponentImpl:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    move-wide/from16 v35, v14

    iget-object v14, v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->blurUtilsProvider:Ljavax/inject/Provider;

    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v20, v14

    check-cast v20, Lcom/android/systemui/statusbar/BlurUtils;

    iget-object v14, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl;->dozeMachineService:Ljava/lang/Object;

    move-object/from16 v21, v14

    check-cast v21, Lcom/android/systemui/complication/ComplicationHostViewController;

    iget-object v14, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl;->dozeFalsingManagerAdapterProvider:Ljavax/inject/Provider;

    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v22, v14

    check-cast v22, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;

    iget-object v14, v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->dreamOverlayStateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v23, v14

    check-cast v23, Lcom/android/systemui/dreams/DreamOverlayStateController;

    iget-object v14, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    invoke-static {v14}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->-$$Nest$mmainResources(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Landroid/content/res/Resources;

    move-result-object v15

    move/from16 p0, v13

    const v13, 0x7f070258

    invoke-virtual {v15, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    iget-object v13, v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->dreamingToLockscreenTransitionViewModelProvider:Ljavax/inject/Provider;

    invoke-interface {v13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v25, v13

    check-cast v25, Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel;

    iget-object v13, v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->configurationControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v26, v13

    check-cast v26, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v13, v14, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-static {v14}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    const v15, 0x7f0b0023

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    int-to-long v14, v14

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-static {v13}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    move-object/from16 v37, v12

    const v12, 0x7f0b0024

    invoke-virtual {v13, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    int-to-long v12, v12

    move-object/from16 v38, v11

    iget-object v11, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl;->dozeUiProvider:Ljavax/inject/Provider;

    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v31

    iget-object v2, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl;->dozeScreenBrightnessProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    new-instance v2, Lcom/android/systemui/dreams/DreamLogger;

    iget-object v4, v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideDreamLogBufferProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/log/LogBuffer;

    invoke-direct {v2, v4}, Lcom/android/systemui/dreams/DreamLogger;-><init>(Lcom/android/systemui/log/LogBuffer;)V

    move-object/from16 v19, v1

    move-wide/from16 v27, v14

    move-wide/from16 v29, v12

    move-object/from16 v34, v2

    invoke-direct/range {v19 .. v34}, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;-><init>(Lcom/android/systemui/statusbar/BlurUtils;Lcom/android/systemui/complication/ComplicationHostViewController;Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;Lcom/android/systemui/dreams/DreamOverlayStateController;ILcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel;Lcom/android/systemui/statusbar/policy/ConfigurationController;JJIJLcom/android/systemui/dreams/DreamLogger;)V

    iget-object v2, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->dreamOverlayStateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Lcom/android/systemui/dreams/DreamOverlayStateController;

    iget-object v2, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->bouncerlessScrimControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController;

    move-object v4, v0

    move-object/from16 v11, v38

    move-object/from16 v12, v37

    move/from16 v13, p0

    move-wide/from16 v2, v35

    move-wide/from16 v14, v16

    move-wide/from16 v16, v2

    invoke-direct/range {v4 .. v21}, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;-><init>(Lcom/android/systemui/dreams/DreamOverlayContainerView;Lcom/android/systemui/complication/ComplicationHostViewController;Landroid/view/ViewGroup;Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;Lcom/android/dream/lowlight/LowLightTransitionCoordinator;Lcom/android/systemui/statusbar/BlurUtils;Landroid/os/Handler;Landroid/content/res/Resources;IJJLcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor;Lcom/android/systemui/dreams/DreamOverlayAnimationsController;Lcom/android/systemui/dreams/DreamOverlayStateController;Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private get$com$google$android$systemui$dagger$DaggerSysUIGoogleGlobalRootComponent$ExpandableNotificationRowComponentImpl$SwitchingProvider()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;
    .locals 38

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->id:I

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;

    iget-object v2, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->dozeComponentImpl:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$InputSessionComponentImpl;

    iget-object v3, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$InputSessionComponentImpl;->name:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    new-instance v5, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    new-instance v6, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineViewController;

    new-instance v7, Lcom/android/systemui/statusbar/notification/row/ExpandableViewController;

    invoke-direct {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableViewController;-><init>()V

    invoke-direct {v6, v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineViewController;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableViewController;)V

    iget-object v7, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$InputSessionComponentImpl;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    iget-object v7, v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideAccessibilityManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/accessibility/AccessibilityManager;

    iget-object v8, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$InputSessionComponentImpl;->sysUIGoogleSysUIComponentImpl:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget-object v8, v8, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/plugins/FalsingManager;

    invoke-direct {v5, v3, v6, v7, v8}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineViewController;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/plugins/FalsingManager;)V

    new-instance v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$InputSessionComponentFactory;

    iget-object v3, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    iget-object v0, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->sysUIGoogleSysUIComponentImpl:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-direct {v6, v3, v0, v2}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$InputSessionComponentFactory;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Ljava/lang/Object;)V

    iget-object v7, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/logging/MetricsLogger;

    new-instance v8, Lcom/android/systemui/statusbar/notification/row/NotificationRowLogger;

    iget-object v9, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$InputSessionComponentImpl;->sysUIGoogleSysUIComponentImpl:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget-object v9, v9, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideNotificationsLogBufferProvider:Ljavax/inject/Provider;

    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/log/LogBuffer;

    invoke-direct {v8, v9}, Lcom/android/systemui/statusbar/notification/row/NotificationRowLogger;-><init>(Lcom/android/systemui/log/LogBuffer;)V

    iget-object v9, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$InputSessionComponentImpl;->inputEventListener:Ljava/lang/Object;

    check-cast v9, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    iget-object v10, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->smartReplyConstantsProvider:Ljavax/inject/Provider;

    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    iget-object v11, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideSmartReplyControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/SmartReplyController;

    iget-object v12, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providesPluginManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/plugins/PluginManager;

    iget-object v13, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->bindSystemClockProvider:Ljavax/inject/Provider;

    invoke-interface {v13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/util/time/SystemClock;

    iget-object v14, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$InputSessionComponentImpl;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    iget-object v14, v14, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    iget-object v15, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$InputSessionComponentImpl;->gestureListener:Ljava/lang/Object;

    check-cast v15, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v15, v15, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-static {v15}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v16

    move-object/from16 p0, v13

    invoke-virtual/range {v16 .. v16}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v13

    invoke-static {v13, v14}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->getPackageManagerForUser(ILandroid/content/Context;)Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x2200

    :try_start_0
    invoke-virtual {v13, v14, v15}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    if-eqz v15, :cond_0

    invoke-virtual {v13, v15}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object v13, v14

    :goto_0
    invoke-static {v13}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    iget-object v14, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$InputSessionComponentImpl;->gestureListener:Ljava/lang/Object;

    check-cast v14, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v14, v14, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-static {v14}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v15

    move-object v14, v15

    invoke-static {v15}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    iget-object v15, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v15}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-object/from16 v34, v14

    iget-object v14, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideGroupMembershipManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v16, v14

    check-cast v16, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;

    iget-object v14, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->groupExpansionManagerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v17, v14

    check-cast v17, Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManagerImpl;

    iget-object v14, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->rowContentBindStageProvider:Ljavax/inject/Provider;

    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v18, v14

    check-cast v18, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    iget-object v14, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideNotificationLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v19, v14

    check-cast v19, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    iget-object v14, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v20, v14

    check-cast v20, Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v14, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$InputSessionComponentImpl;->pilferOnGestureConsume:Ljava/lang/Object;

    move-object/from16 v21, v14

    check-cast v21, Lcom/android/systemui/statusbar/NotificationPresenter;

    iget-object v14, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v22, v14

    check-cast v22, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v14, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->notificationGutsManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v23, v14

    check-cast v23, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iget-object v14, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideAllowNotificationLongPressProvider:Ljavax/inject/Provider;

    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    iget-object v14, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->onUserInteractionCallbackImplProvider:Ljavax/inject/Provider;

    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v25, v14

    check-cast v25, Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl;

    iget-object v14, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v26, v14

    check-cast v26, Lcom/android/systemui/plugins/FalsingManager;

    iget-object v14, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->falsingCollectorImplProvider:Ljavax/inject/Provider;

    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v27, v14

    check-cast v27, Lcom/android/systemui/classifier/FalsingCollector;

    iget-object v14, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->featureFlagsReleaseProvider:Ljavax/inject/Provider;

    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v28, v14

    check-cast v28, Lcom/android/systemui/flags/FeatureFlags;

    iget-object v14, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->peopleNotificationIdentifierImplProvider:Ljavax/inject/Provider;

    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v29, v14

    check-cast v29, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;

    iget-object v14, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideBubblesManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v30, v14

    check-cast v30, Ljava/util/Optional;

    new-instance v14, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController;

    move-object/from16 v31, v14

    move-object/from16 v35, v15

    iget-object v15, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$InputSessionComponentImpl;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    iget-object v15, v15, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    iget-object v2, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$InputSessionComponentImpl;->sysUIGoogleSysUIComponentImpl:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    move-object/from16 v36, v13

    iget-object v13, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    invoke-interface {v13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-object/from16 v37, v12

    iget-object v12, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->shadeControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/shade/ShadeController;

    iget-object v2, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideNotificationPanelLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLoggerImpl;

    invoke-direct {v14, v15, v13, v12, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/shade/ShadeController;Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLoggerImpl;)V

    iget-object v0, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->notificationDismissibilityProviderImplProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v32, v0

    check-cast v32, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationDismissibilityProvider;

    iget-object v0, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideIStatusBarServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v33, v0

    check-cast v33, Lcom/android/internal/statusbar/IStatusBarService;

    move-object v2, v1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object/from16 v11, v37

    move-object/from16 v12, p0

    move-object/from16 v13, v36

    move-object/from16 v14, v34

    move-object/from16 v15, v35

    invoke-direct/range {v2 .. v33}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$InputSessionComponentFactory;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/statusbar/notification/row/NotificationRowLogger;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/policy/SmartReplyConstants;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/plugins/PluginManager;Lcom/android/systemui/util/time/SystemClock;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManagerImpl;Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;ZLcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;Ljava/util/Optional;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController;Lcom/android/systemui/statusbar/notification/collection/provider/NotificationDismissibilityProvider;Lcom/android/internal/statusbar/IStatusBarService;)V

    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0
.end method

.method private get$com$google$android$systemui$dagger$DaggerSysUIGoogleGlobalRootComponent$KeyguardBouncerComponentImpl$SwitchingProvider()Ljava/lang/Object;
    .locals 28

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    iget-object v2, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->dozeComponentImpl:Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->sysUIGoogleSysUIComponentImpl:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget v0, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->id:I

    if-eqz v0, :cond_8

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v5, :cond_7

    const/4 v6, 0x2

    if-eq v0, v6, :cond_6

    const/4 v6, 0x3

    if-eq v0, v6, :cond_5

    const/4 v6, 0x4

    if-eq v0, v6, :cond_4

    const/4 v2, 0x5

    if-ne v0, v2, :cond_3

    iget-object v0, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providesFingerprintManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v1, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->sideFpsControllerProvider:Ljavax/inject/Provider;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/systemui/biometrics/SideFpsControllerKt;->getSideFpsSensorProperties(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    move v4, v5

    :cond_1
    if-nez v4, :cond_2

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/biometrics/SideFpsController;

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object v0

    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    :cond_4
    check-cast v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$KeyguardBouncerComponentImpl;

    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$KeyguardBouncerComponentImpl;->providesKeyguardSecurityContainerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityContainer;

    const v1, 0x7f0a083e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object v0

    :cond_5
    check-cast v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$KeyguardBouncerComponentImpl;

    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$KeyguardBouncerComponentImpl;->providesKeyguardSecurityViewFlipperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    iget-object v4, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providerLayoutInflaterProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideAsyncLayoutInflaterProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    iget-object v4, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$KeyguardBouncerComponentImpl;->sysUIGoogleSysUIComponentImpl:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget-object v5, v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v5, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$KeyguardBouncerComponentImpl;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    iget-object v6, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideLockPatternUtilsProvider:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideLatencyTrackerProvider:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Lcom/android/internal/util/LatencyTracker;

    new-instance v10, Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    iget-object v6, v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v11, v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->configurationControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-direct {v10, v6, v11}, Lcom/android/keyguard/KeyguardMessageAreaController$Factory;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    iget-object v6, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideInputMethodManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v6, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-static {v13}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    iget-object v6, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideAccessibilityManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityManager;

    new-instance v14, Lcom/android/keyguard/LiftToActivateListener;

    invoke-direct {v14, v6}, Lcom/android/keyguard/LiftToActivateListener;-><init>(Landroid/view/accessibility/AccessibilityManager;)V

    iget-object v5, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideTelephonyManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Landroid/telephony/TelephonyManager;

    iget-object v5, v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->falsingCollectorImplProvider:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v16, v5

    check-cast v16, Lcom/android/systemui/classifier/FalsingCollector;

    invoke-virtual {v2}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$KeyguardBouncerComponentImpl;->emergencyButtonControllerFactory()Lcom/android/keyguard/EmergencyButtonController$Factory;

    move-result-object v17

    iget-object v5, v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->devicePostureControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v18, v5

    check-cast v18, Lcom/android/systemui/statusbar/policy/DevicePostureController;

    iget-object v5, v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v19, v5

    check-cast v19, Lcom/android/keyguard/KeyguardViewController;

    iget-object v4, v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->featureFlagsReleaseProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v20, v4

    check-cast v20, Lcom/android/systemui/flags/FeatureFlags;

    new-instance v4, Lcom/android/keyguard/KeyguardInputViewController$Factory;

    move-object v6, v4

    invoke-direct/range {v6 .. v20}, Lcom/android/keyguard/KeyguardInputViewController$Factory;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Landroid/view/inputmethod/InputMethodManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/content/res/Resources;Lcom/android/keyguard/LiftToActivateListener;Landroid/telephony/TelephonyManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController$Factory;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/keyguard/KeyguardViewController;Lcom/android/systemui/flags/FeatureFlags;)V

    invoke-virtual {v2}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$KeyguardBouncerComponentImpl;->emergencyButtonControllerFactory()Lcom/android/keyguard/EmergencyButtonController$Factory;

    iget-object v2, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->featureFlagsReleaseProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/flags/FeatureFlags;

    new-instance v2, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;

    invoke-direct {v2, v0, v1, v4}, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;-><init>(Lcom/android/keyguard/KeyguardSecurityViewFlipper;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;Lcom/android/keyguard/KeyguardInputViewController$Factory;)V

    return-object v2

    :cond_6
    new-instance v0, Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;

    iget-object v4, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    check-cast v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$KeyguardBouncerComponentImpl;

    iget-object v2, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$KeyguardBouncerComponentImpl;->providesKeyguardSecurityContainerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object v3, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMainHandlerProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    invoke-virtual {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;)V

    return-object v0

    :cond_7
    check-cast v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$KeyguardBouncerComponentImpl;

    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$KeyguardBouncerComponentImpl;->bouncerContainer:Landroid/view/ViewGroup;

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providerLayoutInflaterProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f0d00ff

    invoke-virtual {v1, v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-static {v1}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object v1

    :cond_8
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainerController;

    move-object v4, v0

    check-cast v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$KeyguardBouncerComponentImpl;

    iget-object v5, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$KeyguardBouncerComponentImpl;->providesKeyguardSecurityContainerProvider:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object v6, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$KeyguardBouncerComponentImpl;->factoryProvider:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;

    iget-object v7, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideLockPatternUtilsProvider:Ljavax/inject/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v8, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v9, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->keyguardSecurityModelProvider:Ljavax/inject/Provider;

    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/keyguard/KeyguardSecurityModel;

    iget-object v10, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/logging/MetricsLogger;

    iget-object v11, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/logging/UiEventLogger;

    iget-object v12, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v13, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$KeyguardBouncerComponentImpl;->keyguardSecurityViewFlipperControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;

    iget-object v14, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->configurationControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v15, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->falsingCollectorImplProvider:Ljavax/inject/Provider;

    invoke-interface {v15}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/classifier/FalsingCollector;

    move-object/from16 p0, v0

    iget-object v0, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/systemui/plugins/FalsingManager;

    iget-object v0, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->userSwitcherControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v0, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->featureFlagsReleaseProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/systemui/flags/FeatureFlags;

    invoke-virtual {v3}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->globalSettingsImpl()Lcom/android/systemui/util/settings/GlobalSettingsImpl;

    move-result-object v19

    iget-object v0, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->sessionTrackerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/systemui/log/SessionTracker;

    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$KeyguardBouncerComponentImpl;->providesOptionalSidefpsControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/classifier/FalsingA11yDelegate;

    move-object/from16 v22, v0

    iget-object v2, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$KeyguardBouncerComponentImpl;->sysUIGoogleSysUIComponentImpl:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget-object v2, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->falsingCollectorImplProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/classifier/FalsingCollector;

    invoke-direct {v0, v2}, Lcom/android/systemui/classifier/FalsingA11yDelegate;-><init>(Lcom/android/systemui/classifier/FalsingCollector;)V

    iget-object v0, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideTelephonyManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Landroid/telephony/TelephonyManager;

    invoke-static {v3}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$mviewMediatorCallback(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Lcom/android/systemui/keyguard/KeyguardViewMediator$4;

    move-result-object v24

    iget-object v0, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideAudioManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/media/AudioManager;

    iget-object v0, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->systemUIKeyguardFaceAuthInteractorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/systemui/keyguard/domain/interactor/KeyguardFaceAuthInteractor;

    iget-object v0, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->faceAuthAccessibilityDelegateProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/systemui/biometrics/FaceAuthAccessibilityDelegate;

    invoke-direct/range {v4 .. v27}, Lcom/android/keyguard/KeyguardSecurityContainerController;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardSecurityViewFlipperController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/systemui/log/SessionTracker;Ljava/util/Optional;Lcom/android/systemui/classifier/FalsingA11yDelegate;Landroid/telephony/TelephonyManager;Lcom/android/systemui/keyguard/KeyguardViewMediator$4;Landroid/media/AudioManager;Lcom/android/systemui/keyguard/domain/interactor/KeyguardFaceAuthInteractor;Lcom/android/systemui/biometrics/FaceAuthAccessibilityDelegate;)V

    return-object p0
.end method

.method private get$com$google$android$systemui$dagger$DaggerSysUIGoogleGlobalRootComponent$KeyguardStatusBarViewComponentImpl$SwitchingProvider()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->dozeComponentImpl:Ljava/lang/Object;

    iget p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->id:I

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    check-cast v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$KeyguardStatusBarViewComponentImpl;

    iget-object p0, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$KeyguardStatusBarViewComponentImpl;->view:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const v0, 0x7f0a0107

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/battery/BatteryMeterView;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    :cond_1
    check-cast v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$KeyguardStatusBarViewComponentImpl;

    iget-object p0, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$KeyguardStatusBarViewComponentImpl;->view:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const v0, 0x7f0a03ac

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/CarrierText;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0
.end method

.method private get$com$google$android$systemui$dagger$DaggerSysUIGoogleGlobalRootComponent$KeyguardStatusViewComponentImpl$SwitchingProvider()Lcom/android/keyguard/KeyguardSliceViewController;
    .locals 8

    iget v0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->id:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/KeyguardSliceViewController;

    iget-object v1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->dozeComponentImpl:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$NotificationShelfComponentImpl;

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$NotificationShelfComponentImpl;->notificationShelf:Ljava/lang/Object;

    check-cast v1, Lcom/android/keyguard/KeyguardStatusView;

    const v2, 0x7f0a03ad

    invoke-virtual {v1, v2}, Landroid/widget/GridLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-static {v1}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    const v2, 0x7f0a03c5

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/keyguard/KeyguardSliceView;

    invoke-static {v2}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->sysUIGoogleSysUIComponentImpl:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget-object v3, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->activityStarterImplProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v4, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->configurationControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v5, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->tunerServiceImplProvider:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/tuner/TunerService;

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/android/systemui/dump/DumpManager;

    iget-object p0, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideDisplayTrackerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lcom/android/systemui/settings/DisplayTracker;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/keyguard/KeyguardSliceViewController;-><init>(Lcom/android/keyguard/KeyguardSliceView;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/settings/DisplayTracker;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(I)V

    throw p0
.end method

.method private get$com$google$android$systemui$dagger$DaggerSysUIGoogleGlobalRootComponent$KeyguardUserSwitcherComponentImpl$SwitchingProvider()Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;
    .locals 12

    iget v0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->id:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    iget-object v1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->dozeComponentImpl:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$NotificationShelfComponentImpl;

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$NotificationShelfComponentImpl;->notificationShelf:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;

    iget-object v1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    iget-object v3, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    iget-object v5, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providerLayoutInflaterProvider:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->screenLifecycleProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->sysUIGoogleSysUIComponentImpl:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget-object v1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->userSwitcherControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object v1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->dozeParametersProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->screenOffAnimationControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v11, p0

    check-cast v11, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;Landroid/content/Context;Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(I)V

    throw p0
.end method

.method private get$com$google$android$systemui$dagger$DaggerSysUIGoogleGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider()Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    iget-object v1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->sysUIGoogleSysUIComponentImpl:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget-object v2, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->dozeComponentImpl:Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->id:I

    packed-switch v3, :pswitch_data_0

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0, v3}, Ljava/lang/AssertionError;-><init>(I)V

    throw p0

    :pswitch_0
    new-instance p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionBlockerEmptyStateProvider;

    check-cast v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;

    iget-object v2, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->hostUserHandleProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$mpersonalProfileUserHandle(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Landroid/os/UserHandle;

    move-result-object v3

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->screenCaptureDevicePolicyResolverProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$WMComponentImpl$SwitchingProvider;

    invoke-virtual {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$WMComponentImpl$SwitchingProvider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver;

    iget-object v0, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionBlockerEmptyStateProvider;-><init>(Landroid/os/UserHandle;Landroid/os/UserHandle;Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver;Landroid/content/Context;)V

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;

    iget-object v2, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    iget-object v0, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideWindowManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->configurationControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;-><init>(Landroid/content/Context;Landroid/view/WindowManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader;

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->bgDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v0, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providePackageManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManager;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerLabelLoader;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Landroid/content/pm/PackageManager;)V

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerThumbnailLoader;

    iget-object v0, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->bgDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideActivityManagerWrapperProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/mediaprojection/appselector/data/ActivityTaskManagerThumbnailLoader;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/shared/system/ActivityManagerWrapper;)V

    return-object p0

    :pswitch_4
    iget-object p0, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/icons/IconFactory;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/IconFactory;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/android/systemui/mediaprojection/appselector/data/IconLoaderLibAppIconLoader;

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->bgDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v3, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    iget-object v4, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providePackageManagerWrapperProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/shared/system/PackageManagerWrapper;

    iget-object v0, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providePackageManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/pm/PackageManager;

    check-cast v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;

    iget-object v6, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->bindIconFactoryProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;

    move-object v0, p0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/mediaprojection/appselector/data/IconLoaderLibAppIconLoader;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Landroid/content/Context;Lcom/android/systemui/shared/system/PackageManagerWrapper;Landroid/content/pm/PackageManager;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;)V

    return-object p0

    :pswitch_6
    new-instance v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider$2;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider$2;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;)V

    return-object v0

    :pswitch_7
    new-instance v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider$1;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;)V

    return-object v0

    :pswitch_8
    new-instance p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;

    check-cast v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->factoryProvider2:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider$1;

    iget-object v3, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->taskPreviewSizeProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;

    iget-object v0, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideIActivityTaskManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityTaskManager;

    iget-object v2, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->arg2:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorResultHandler;

    invoke-direct {p0, v1, v3, v0, v2}, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider$1;Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;Landroid/app/IActivityTaskManager;Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorResultHandler;)V

    return-object p0

    :pswitch_9
    check-cast v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;

    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->arg0:Lcom/android/systemui/media/MediaProjectionAppSelectorActivity;

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_a
    iget-object p0, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/systemui/media/MediaProjectionAppSelectorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0

    :pswitch_b
    iget-object p0, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->applicationScopeProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {p0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    new-instance v0, Lkotlinx/coroutines/SupervisorJobImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/SupervisorJobImpl;-><init>(Lkotlinx/coroutines/Job;)V

    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;

    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->arg0:Lcom/android/systemui/media/MediaProjectionAppSelectorActivity;

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "launched_from_user_handle"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/os/UserHandle;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "MediaProjectionAppSelectorActivity should be provided with launched_from_user_handle extra"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "MediaProjectionAppSelectorActivity should be launched with extras"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_d
    new-instance p0, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;

    iget-object v0, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->bgDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v2, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    iget-object v3, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/settings/UserTracker;

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->setRecentTasks:Ljava/util/Optional;

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/util/concurrent/Executor;Ljava/util/Optional;Lcom/android/systemui/settings/UserTracker;)V

    return-object p0

    :pswitch_e
    new-instance p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;

    check-cast v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;

    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->bindRecentTaskListProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;

    iget-object v6, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->arg1:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorView;

    iget-object v0, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->screenCaptureDevicePolicyResolverProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$WMComponentImpl$SwitchingProvider;

    invoke-virtual {v0}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$WMComponentImpl$SwitchingProvider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver;

    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->hostUserHandleProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/os/UserHandle;

    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->provideCoroutineScopeProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lkotlinx/coroutines/CoroutineScope;

    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->provideAppSelectorComponentNameProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/content/ComponentName;

    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$MediaProjectionAppSelectorComponentImpl;->provideCallerPackageNameProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    move-object v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;-><init>(Lcom/android/systemui/mediaprojection/appselector/data/ShellRecentTaskListProvider;Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorView;Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver;Landroid/os/UserHandle;Lkotlinx/coroutines/CoroutineScope;Landroid/content/ComponentName;Ljava/lang/String;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private get$com$google$android$systemui$dagger$DaggerSysUIGoogleGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider()Ljava/lang/Object;
    .locals 46

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->dozeComponentImpl:Ljava/lang/Object;

    iget-object v2, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->sysUIGoogleSysUIComponentImpl:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget v3, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->id:I

    if-eqz v3, :cond_5

    const/4 v0, 0x1

    if-eq v3, v0, :cond_4

    const/4 v0, 0x2

    if-eq v3, v0, :cond_3

    const/4 v0, 0x3

    if-eq v3, v0, :cond_2

    const/4 v0, 0x4

    if-eq v3, v0, :cond_1

    const/4 v0, 0x5

    if-ne v3, v0, :cond_0

    new-instance v0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    check-cast v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$NavigationBarComponentImpl;

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$NavigationBarComponentImpl;->provideNavigationBarviewProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/navigationbar/NavigationBarView;

    iget-object v3, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->factoryProvider2:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$SwitchingProvider$2;

    iget-object v2, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideDisplayTrackerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/settings/DisplayTracker;

    invoke-direct {v0, v1, v3, v2}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$SwitchingProvider$2;Lcom/android/systemui/settings/DisplayTracker;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v3}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    :cond_1
    check-cast v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$NavigationBarComponentImpl;

    iget-object v0, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$NavigationBarComponentImpl;->context:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object v0

    :cond_2
    check-cast v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$NavigationBarComponentImpl;

    iget-object v0, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$NavigationBarComponentImpl;->provideLayoutInflaterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d01a3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarFrame;

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object v0

    :cond_3
    check-cast v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$NavigationBarComponentImpl;

    iget-object v0, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$NavigationBarComponentImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object v0

    :cond_4
    check-cast v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$NavigationBarComponentImpl;

    iget-object v0, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$NavigationBarComponentImpl;->provideLayoutInflaterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$NavigationBarComponentImpl;->provideNavigationBarFrameProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/navigationbar/NavigationBarFrame;

    const v2, 0x7f0d01a2

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0520

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object v0

    :cond_5
    check-cast v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$NavigationBarComponentImpl;

    iget-object v3, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$NavigationBarComponentImpl;->provideNavigationBarviewProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/systemui/navigationbar/NavigationBarView;

    iget-object v3, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$NavigationBarComponentImpl;->provideNavigationBarFrameProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/android/systemui/navigationbar/NavigationBarFrame;

    iget-object v7, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$NavigationBarComponentImpl;->savedState:Landroid/os/Bundle;

    iget-object v8, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$NavigationBarComponentImpl;->context:Landroid/content/Context;

    iget-object v3, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$NavigationBarComponentImpl;->provideWindowManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/view/WindowManager;

    iget-object v3, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->assistManagerGoogleProvider:Ljavax/inject/Provider;

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v10

    iget-object v0, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    iget-object v3, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideAccessibilityManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/view/accessibility/AccessibilityManager;

    iget-object v3, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideDeviceProvisionedControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object v3, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/android/internal/logging/MetricsLogger;

    iget-object v3, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->overviewProxyServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v3, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->navigationModeControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/android/systemui/navigationbar/NavigationModeController;

    iget-object v3, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v3, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v3, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideSysUiStateProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Lcom/android/systemui/model/SysUiState;

    iget-object v3, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Lcom/android/systemui/settings/UserTracker;

    iget-object v3, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideCommandQueueProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Lcom/android/systemui/statusbar/CommandQueue;

    iget-object v3, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->setPip:Ljava/util/Optional;

    move-object/from16 v21, v3

    iget-object v3, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideRecentsProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/Recents;

    invoke-static {v3}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v22

    iget-object v3, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->optionalOfCentralSurfacesProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$WMComponentImpl$SwitchingProvider;

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v23

    iget-object v3, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->shadeControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shade/ShadeController;

    iget-object v3, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v24, v3

    check-cast v24, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v3, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->notificationShadeDepthControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v25, v3

    check-cast v25, Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    iget-object v3, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMainHandlerProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    invoke-virtual {v3}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v26, v3

    check-cast v26, Landroid/os/Handler;

    iget-object v3, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMainExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v27, v3

    check-cast v27, Ljava/util/concurrent/Executor;

    iget-object v3, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v28, v3

    check-cast v28, Ljava/util/concurrent/Executor;

    iget-object v3, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v29, v3

    check-cast v29, Lcom/android/internal/logging/UiEventLogger;

    iget-object v3, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->navBarHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v30, v3

    check-cast v30, Lcom/android/systemui/navigationbar/NavBarHelper;

    iget-object v3, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->lightBarControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v31, v3

    check-cast v31, Lcom/android/systemui/statusbar/phone/LightBarController;

    new-instance v33, Lcom/android/systemui/statusbar/phone/LightBarController$Factory;

    move-object/from16 v32, v33

    iget-object v3, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$NavigationBarComponentImpl;->sysUIGoogleSysUIComponentImpl:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget-object v4, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->darkIconDispatcherImplProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v34, v4

    check-cast v34, Lcom/android/systemui/plugins/DarkIconDispatcher;

    iget-object v4, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideBatteryControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v35, v4

    check-cast v35, Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v4, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->navigationModeControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v36, v4

    check-cast v36, Lcom/android/systemui/navigationbar/NavigationModeController;

    iget-object v4, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->featureFlagsReleaseProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v37, v4

    check-cast v37, Lcom/android/systemui/flags/FeatureFlags;

    iget-object v4, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$NavigationBarComponentImpl;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    iget-object v4, v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v38, v4

    check-cast v38, Lcom/android/systemui/dump/DumpManager;

    iget-object v3, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideDisplayTrackerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v39, v3

    check-cast v39, Lcom/android/systemui/settings/DisplayTracker;

    invoke-direct/range {v33 .. v39}, Lcom/android/systemui/statusbar/phone/LightBarController$Factory;-><init>(Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/settings/DisplayTracker;)V

    iget-object v3, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->autoHideControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v33, v3

    check-cast v33, Lcom/android/systemui/statusbar/phone/AutoHideController;

    new-instance v3, Lcom/android/systemui/statusbar/phone/AutoHideController$Factory;

    move-object/from16 v34, v3

    iget-object v4, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$NavigationBarComponentImpl;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    move-object/from16 v45, v5

    iget-object v5, v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMainHandlerProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    invoke-virtual {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Handler;

    iget-object v4, v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideIWindowManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/IWindowManager;

    invoke-direct {v3, v5, v4}, Lcom/android/systemui/statusbar/phone/AutoHideController$Factory;-><init>(Landroid/os/Handler;Landroid/view/IWindowManager;)V

    iget-object v3, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideOptionalTelecomManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v35, v3

    check-cast v35, Ljava/util/Optional;

    iget-object v0, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideInputMethodManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v36, v0

    check-cast v36, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/navigationbar/buttons/DeadZone;

    move-object/from16 v37, v0

    iget-object v3, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$NavigationBarComponentImpl;->provideNavigationBarviewProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-direct {v0, v3}, Lcom/android/systemui/navigationbar/buttons/DeadZone;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;)V

    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->deviceConfigProxyProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/systemui/util/DeviceConfigProxy;

    iget-object v0, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$NavigationBarComponentImpl;->navigationBarTransitionsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v39, v0

    check-cast v39, Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->setBackAnimation:Ljava/util/Optional;

    move-object/from16 v40, v0

    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v41, v0

    check-cast v41, Lcom/android/systemui/settings/UserContextProvider;

    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v42, v0

    check-cast v42, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideTaskStackChangeListenersProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v43, v0

    check-cast v43, Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideDisplayTrackerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v44, v0

    check-cast v44, Lcom/android/systemui/settings/DisplayTracker;

    new-instance v0, Lcom/android/systemui/navigationbar/NavigationBar;

    move-object v4, v0

    move-object/from16 v5, v45

    invoke-direct/range {v4 .. v44}, Lcom/android/systemui/navigationbar/NavigationBar;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;Lcom/android/systemui/navigationbar/NavigationBarFrame;Landroid/os/Bundle;Landroid/content/Context;Landroid/view/WindowManager;Ldagger/Lazy;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/statusbar/CommandQueue;Ljava/util/Optional;Ljava/util/Optional;Ldagger/Lazy;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/navigationbar/NavBarHelper;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/phone/LightBarController$Factory;Lcom/android/systemui/statusbar/phone/AutoHideController;Lcom/android/systemui/statusbar/phone/AutoHideController$Factory;Ljava/util/Optional;Landroid/view/inputmethod/InputMethodManager;Lcom/android/systemui/navigationbar/buttons/DeadZone;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/navigationbar/NavigationBarTransitions;Ljava/util/Optional;Lcom/android/systemui/settings/UserContextProvider;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/shared/system/TaskStackChangeListeners;Lcom/android/systemui/settings/DisplayTracker;)V

    return-object v0
.end method

.method private get$com$google$android$systemui$dagger$DaggerSysUIGoogleGlobalRootComponent$NotificationShelfComponentImpl$SwitchingProvider()Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;
    .locals 7

    iget v0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->id:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;

    iget-object v1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->dozeComponentImpl:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$NotificationShelfComponentImpl;

    iget-object v2, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$NotificationShelfComponentImpl;->notificationShelf:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/statusbar/NotificationShelf;

    new-instance v4, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    check-cast v2, Lcom/android/systemui/statusbar/NotificationShelf;

    new-instance v5, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineViewController;

    new-instance v6, Lcom/android/systemui/statusbar/notification/row/ExpandableViewController;

    invoke-direct {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableViewController;-><init>()V

    invoke-direct {v5, v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineViewController;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableViewController;)V

    iget-object v6, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$NotificationShelfComponentImpl;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    iget-object v6, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideAccessibilityManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$NotificationShelfComponentImpl;->sysUIGoogleSysUIComponentImpl:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/FalsingManager;

    invoke-direct {v4, v2, v5, v6, v1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineViewController;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/plugins/FalsingManager;)V

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->sysUIGoogleSysUIComponentImpl:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget-object v1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iget-object v1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->featureFlagsReleaseProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/flags/FeatureFlags;

    move-object v1, v0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;-><init>(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/flags/FeatureFlags;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(I)V

    throw p0
.end method

.method private get$com$google$android$systemui$dagger$DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider()Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    const v1, 0x7f0a05d9

    iget-object v2, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    iget-object v3, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->sysUIGoogleSysUIComponentImpl:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget-object v4, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->dozeComponentImpl:Ljava/lang/Object;

    iget v0, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->id:I

    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    :pswitch_0
    new-instance v0, Lcom/android/systemui/qs/QSSquishinessController;

    check-cast v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;

    iget-object v1, v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;->qSAnimatorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSAnimator;

    iget-object v2, v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;->qSPanelControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanelController;

    iget-object v3, v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;->quickQSPanelControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QuickQSPanelController;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/qs/QSSquishinessController;-><init>(Lcom/android/systemui/qs/QSAnimator;Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/QuickQSPanelController;)V

    return-object v0

    :pswitch_1
    check-cast v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;

    invoke-virtual {v4}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;->rootViewView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a05cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/qs/QSFooterView;

    invoke-static {v6}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    iget-object v0, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/settings/UserTracker;

    iget-object v0, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/plugins/FalsingManager;

    iget-object v0, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->activityStarterImplProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v0, v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;->qSPanelControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/systemui/qs/QSPanelController;

    iget-object v0, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->retailModeInteractorImplProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/systemui/retail/domain/interactor/RetailModeInteractorImpl;

    new-instance v0, Lcom/android/systemui/qs/QSFooterViewController;

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Lcom/android/systemui/qs/QSFooterViewController;-><init>(Lcom/android/systemui/qs/QSFooterView;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/retail/domain/interactor/RetailModeInteractorImpl;)V

    return-object v0

    :pswitch_2
    check-cast v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;

    iget-object v0, v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;->qSFooterViewControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSFooterViewController;

    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    return-object v0

    :pswitch_3
    check-cast v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;

    invoke-virtual {v4}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;->quickStatusBarHeader()Lcom/android/systemui/qs/QuickStatusBarHeader;

    move-result-object v0

    iget-object v1, v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;->quickQSPanelControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QuickQSPanelController;

    new-instance v2, Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeader;Lcom/android/systemui/qs/QuickQSPanelController;)V

    return-object v2

    :pswitch_4
    check-cast v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;

    invoke-virtual {v4}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;->rootViewView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a05da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/qs/QSContainerImpl;

    invoke-static {v6}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    iget-object v0, v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;->qSPanelControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/qs/QSPanelController;

    iget-object v0, v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;->quickStatusBarHeaderControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->configurationControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/systemui/plugins/FalsingManager;

    new-instance v1, Lcom/android/systemui/qs/QSContainerImplController;

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/android/systemui/qs/QSContainerImplController;-><init>(Lcom/android/systemui/qs/QSContainerImpl;Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/QuickStatusBarHeaderController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/plugins/FalsingManager;)V

    return-object v1

    :pswitch_5
    new-instance v0, Lcom/android/systemui/qs/QSAnimator;

    check-cast v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;

    iget-object v12, v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;->qsFragment:Lcom/android/systemui/qs/QSFragment;

    invoke-virtual {v4}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;->quickStatusBarHeader()Lcom/android/systemui/qs/QuickStatusBarHeader;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/systemui/qs/QuickQSPanel;

    invoke-static {v13}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;->quickStatusBarHeader()Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-object v1, v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;->qSPanelControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/systemui/qs/QSPanelController;

    iget-object v1, v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;->quickQSPanelControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/systemui/qs/QuickQSPanelController;

    iget-object v1, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->qSHostAdapterProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/systemui/qs/QSHost;

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMainExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Ljava/util/concurrent/Executor;

    iget-object v1, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->tunerServiceImplProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/tuner/TunerService;

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->qSExpansionPathInterpolatorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/android/systemui/qs/QSExpansionPathInterpolator;

    move-object v11, v0

    invoke-direct/range {v11 .. v18}, Lcom/android/systemui/qs/QSAnimator;-><init>(Lcom/android/systemui/qs/QSFragment;Lcom/android/systemui/qs/QuickQSPanel;Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/QuickQSPanelController;Lcom/android/systemui/qs/QSHost;Ljava/util/concurrent/Executor;Lcom/android/systemui/qs/QSExpansionPathInterpolator;)V

    return-object v0

    :pswitch_6
    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_7
    check-cast v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;

    invoke-virtual {v4}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;->quickStatusBarHeader()Lcom/android/systemui/qs/QuickStatusBarHeader;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/qs/QuickQSPanel;

    invoke-static {v6}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    iget-object v0, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->qSHostAdapterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/qs/QSHost;

    iget-object v0, v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;->qSCustomizerControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/qs/customize/QSCustomizerController;

    iget-object v0, v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    iget-object v0, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/Utils;->useQsMediaPlayer(Landroid/content/Context;)Z

    move-result v9

    iget-object v0, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->providesQuickQSMediaHostProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/systemui/media/controls/ui/MediaHost;

    iget-object v11, v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;->providesQSUsingCollapsedLandscapeMediaProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;

    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/internal/logging/MetricsLogger;

    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/internal/logging/UiEventLogger;

    invoke-static {v3}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$mqSLogger(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Lcom/android/systemui/qs/logging/QSLogger;

    move-result-object v14

    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/systemui/dump/DumpManager;

    new-instance v0, Lcom/android/systemui/qs/QuickQSPanelController;

    move-object v5, v0

    invoke-direct/range {v5 .. v15}, Lcom/android/systemui/qs/QuickQSPanelController;-><init>(Lcom/android/systemui/qs/QuickQSPanel;Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/customize/QSCustomizerController;ZLcom/android/systemui/media/controls/ui/MediaHost;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/dump/DumpManager;)V

    return-object v0

    :pswitch_8
    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    check-cast v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;

    iget-object v1, v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;->qSCustomizerControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/QSCustomizerController;

    new-instance v2, Lcom/android/systemui/qs/QSTileRevealController$Factory;

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/qs/QSTileRevealController$Factory;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/customize/QSCustomizerController;)V

    return-object v2

    :pswitch_9
    new-instance v0, Lcom/android/systemui/qs/customize/TileAdapter;

    check-cast v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;

    invoke-virtual {v4}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;->rootViewView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    iget-object v3, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->qSHostAdapterProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSHost;

    iget-object v2, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/logging/UiEventLogger;

    invoke-direct {v0, v1, v3, v2}, Lcom/android/systemui/qs/customize/TileAdapter;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSHost;Lcom/android/internal/logging/UiEventLogger;)V

    return-object v0

    :pswitch_a
    new-instance v0, Lcom/android/systemui/qs/customize/TileQueryHelper;

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    iget-object v4, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/settings/UserTracker;

    iget-object v2, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMainExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    iget-object v3, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/systemui/qs/customize/TileQueryHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    return-object v0

    :pswitch_b
    check-cast v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;

    invoke-virtual {v4}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;->rootViewView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a05cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object v0

    :pswitch_c
    check-cast v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;

    iget-object v0, v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;->providesQSCutomizerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/qs/customize/QSCustomizer;

    iget-object v0, v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;->tileQueryHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/qs/customize/TileQueryHelper;

    iget-object v0, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->qSHostAdapterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/qs/QSHost;

    iget-object v0, v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;->tileAdapterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/systemui/qs/customize/TileAdapter;

    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->screenLifecycleProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v0, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v0, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->lightBarControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/systemui/statusbar/phone/LightBarController;

    iget-object v0, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->configurationControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/internal/logging/UiEventLogger;

    new-instance v0, Lcom/android/systemui/qs/customize/QSCustomizerController;

    move-object v5, v0

    invoke-direct/range {v5 .. v14}, Lcom/android/systemui/qs/customize/QSCustomizerController;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;Lcom/android/systemui/qs/customize/TileQueryHelper;Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/internal/logging/UiEventLogger;)V

    return-object v0

    :pswitch_d
    check-cast v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;

    invoke-virtual {v4}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;->rootViewView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a05db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/qs/QSPanel;

    invoke-static {v6}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    iget-object v0, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->tunerServiceImplProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/tuner/TunerService;

    iget-object v0, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->qSHostAdapterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/qs/QSHost;

    iget-object v0, v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;->qSCustomizerControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/systemui/qs/customize/QSCustomizerController;

    iget-object v0, v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    iget-object v0, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/Utils;->useQsMediaPlayer(Landroid/content/Context;)Z

    move-result v10

    iget-object v0, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->providesQSMediaHostProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/systemui/media/controls/ui/MediaHost;

    iget-object v0, v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;->factoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/systemui/dump/DumpManager;

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/internal/logging/MetricsLogger;

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/internal/logging/UiEventLogger;

    invoke-static {v3}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$mqSLogger(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Lcom/android/systemui/qs/logging/QSLogger;

    move-result-object v16

    new-instance v1, Lcom/android/systemui/settings/brightness/BrightnessController$Factory;

    iget-object v2, v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    iget-object v5, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    iget-object v4, v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;->sysUIGoogleSysUIComponentImpl:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget-object v12, v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v19, v12

    check-cast v19, Lcom/android/systemui/settings/UserTracker;

    iget-object v12, v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideDisplayTrackerProvider:Ljavax/inject/Provider;

    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v20, v12

    check-cast v20, Lcom/android/systemui/settings/DisplayTracker;

    iget-object v2, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMainExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Ljava/util/concurrent/Executor;

    iget-object v2, v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideBgHandlerProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$WMComponentImpl$SwitchingProvider;

    invoke-virtual {v2}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$WMComponentImpl$SwitchingProvider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/os/Handler;

    move-object/from16 v17, v1

    move-object/from16 v18, v5

    invoke-direct/range {v17 .. v22}, Lcom/android/systemui/settings/brightness/BrightnessController$Factory;-><init>(Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/settings/DisplayTracker;Ljava/util/concurrent/Executor;Landroid/os/Handler;)V

    new-instance v2, Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;

    iget-object v4, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/plugins/FalsingManager;

    invoke-direct {v2, v4}, Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;-><init>(Lcom/android/systemui/plugins/FalsingManager;)V

    iget-object v4, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v19, v4

    check-cast v19, Lcom/android/systemui/plugins/FalsingManager;

    iget-object v3, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    new-instance v3, Lcom/android/systemui/qs/QSPanelController;

    move-object v12, v0

    check-cast v12, Lcom/android/systemui/qs/QSTileRevealController$Factory;

    move-object v5, v3

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    invoke-direct/range {v5 .. v20}, Lcom/android/systemui/qs/QSPanelController;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/customize/QSCustomizerController;ZLcom/android/systemui/media/controls/ui/MediaHost;Lcom/android/systemui/qs/QSTileRevealController$Factory;Lcom/android/systemui/dump/DumpManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/settings/brightness/BrightnessController$Factory;Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private get$com$google$android$systemui$dagger$DaggerSysUIGoogleGlobalRootComponent$SectionHeaderControllerSubcomponentImpl$SwitchingProvider()Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;
    .locals 7

    iget v0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->id:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;

    iget-object v1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->dozeComponentImpl:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;

    iget-object v2, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;->nodeLabel:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    iget-object v3, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providerLayoutInflaterProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iget-object v4, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;->headerText:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->sysUIGoogleSysUIComponentImpl:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->activityStarterImplProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v6, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;->clickIntentAction:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;-><init>(Ljava/lang/String;Landroid/view/LayoutInflater;ILcom/android/systemui/plugins/ActivityStarter;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(I)V

    throw p0
.end method

.method private get$com$google$android$systemui$dagger$DaggerSysUIGoogleGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider()Ljava/lang/Object;
    .locals 15

    iget-object v0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->dozeComponentImpl:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->sysUIGoogleSysUIComponentImpl:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget-object v2, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    iget p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->id:I

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    :pswitch_0
    new-instance p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;

    iget-object v4, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    iget-object v3, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->featureFlagsReleaseProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/systemui/flags/FeatureFlags;

    iget-object v3, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideDeviceStateManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/hardware/devicestate/DeviceStateManager;

    iget-object v3, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideContentResolverProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Landroid/content/ContentResolver;

    iget-object v3, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideDisplayManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Landroid/hardware/display/DisplayManager;

    check-cast v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIUnfoldComponentImpl;

    iget-object v9, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIUnfoldComponentImpl;->arg0:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    iget-object v10, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->setDisplayAreaHelper:Ljava/util/Optional;

    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMainExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/util/concurrent/Executor;

    new-instance v12, Lcom/android/systemui/util/concurrency/ThreadFactoryImpl;

    invoke-direct {v12}, Lcom/android/systemui/util/concurrency/ThreadFactoryImpl;-><init>()V

    invoke-virtual {v2}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->rotationChangeProvider()Lcom/android/systemui/unfold/updates/RotationChangeProvider;

    move-result-object v13

    iget-object v0, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideDisplayTrackerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/systemui/settings/DisplayTracker;

    move-object v3, p0

    invoke-direct/range {v3 .. v14}, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;-><init>(Landroid/content/Context;Lcom/android/systemui/flags/FeatureFlags;Landroid/hardware/devicestate/DeviceStateManager;Landroid/content/ContentResolver;Landroid/hardware/display/DisplayManager;Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;Ljava/util/Optional;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/concurrency/ThreadFactoryImpl;Lcom/android/systemui/unfold/updates/RotationChangeProvider;Lcom/android/systemui/settings/DisplayTracker;)V

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/android/systemui/unfold/UnfoldHapticsPlayer;

    check-cast v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIUnfoldComponentImpl;

    iget-object v0, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIUnfoldComponentImpl;->arg0:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->deviceStateManagerFoldProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/unfold/updates/FoldProvider;

    iget-object v3, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMainExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    iget-object v2, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideVibratorProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/systemui/unfold/UnfoldHapticsPlayer;-><init>(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;Lcom/android/systemui/unfold/updates/FoldProvider;Ljava/util/concurrent/Executor;Landroid/os/Vibrator;)V

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController;

    check-cast v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIUnfoldComponentImpl;

    iget-object v0, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIUnfoldComponentImpl;->arg0:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->wallpaperControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/WallpaperController;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController;-><init>(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;Lcom/android/systemui/util/WallpaperController;)V

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/android/systemui/unfold/FoldAodAnimationController;

    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v4, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideDeviceStateManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/hardware/devicestate/DeviceStateManager;

    iget-object v0, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->globalSettingsImpl()Lcom/android/systemui/util/settings/GlobalSettingsImpl;

    move-result-object v7

    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideLatencyTrackerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/internal/util/LatencyTracker;

    iget-object v0, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->keyguardInteractorProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v9

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/unfold/FoldAodAnimationController;-><init>(Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/content/Context;Landroid/hardware/devicestate/DeviceStateManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/internal/util/LatencyTracker;Ldagger/Lazy;)V

    return-object p0

    :pswitch_4
    new-instance p0, Lcom/android/systemui/shade/NotificationPanelUnfoldAnimationController;

    iget-object v2, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    check-cast v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIUnfoldComponentImpl;

    iget-object v0, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIUnfoldComponentImpl;->arg1:Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;

    invoke-direct {p0, v2, v1, v0}, Lcom/android/systemui/shade/NotificationPanelUnfoldAnimationController;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;)V

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;

    check-cast v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIUnfoldComponentImpl;

    iget-object v0, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIUnfoldComponentImpl;->arg2:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->activityManagerActivityTypeProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/unfold/system/ActivityManagerActivityTypeProvider;

    iget-object v2, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideWindowManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;-><init>(Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;Lcom/android/systemui/unfold/system/ActivityManagerActivityTypeProvider;Landroid/view/WindowManager;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/android/keyguard/KeyguardUnfoldTransition;

    iget-object v2, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    check-cast v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIUnfoldComponentImpl;

    iget-object v0, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIUnfoldComponentImpl;->arg1:Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;

    invoke-direct {p0, v2, v1, v0}, Lcom/android/keyguard/KeyguardUnfoldTransition;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private get$com$google$android$systemui$dagger$DaggerSysUIGoogleGlobalRootComponent$cascd_ComplicationComponentImpl$SwitchingProvider()Ljava/lang/Object;
    .locals 12

    iget v0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->id:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/android/systemui/complication/ComplicationLayoutEngine;

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->dozeComponentImpl:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$cascd_ComplicationComponentImpl;

    iget-object v1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$cascd_ComplicationComponentImpl;->providesComplicationHostViewProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$cascd_ComplicationComponentImpl;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->-$$Nest$mmainResources(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070276

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$cascd_ComplicationComponentImpl;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->-$$Nest$mmainResources(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07027e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$cascd_ComplicationComponentImpl;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->-$$Nest$mmainResources(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07027f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$cascd_ComplicationComponentImpl;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->-$$Nest$mmainResources(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07027d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object v1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$cascd_ComplicationComponentImpl;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->-$$Nest$mmainResources(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07027c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iget-object v1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$cascd_ComplicationComponentImpl;->arg3:Lcom/android/systemui/touch/TouchInsetManager;

    new-instance v9, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;

    iget-object v2, v1, Lcom/android/systemui/touch/TouchInsetManager;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v9, v1, v2}, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;-><init>(Lcom/android/systemui/touch/TouchInsetManager;Ljava/util/concurrent/Executor;)V

    iget-object v1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$cascd_ComplicationComponentImpl;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->-$$Nest$mmainResources(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$cascd_ComplicationComponentImpl;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    invoke-static {p0}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->-$$Nest$mmainResources(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0b0011

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/android/systemui/complication/ComplicationLayoutEngine;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;IIIIILcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;II)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(I)V

    throw p0

    :cond_1
    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providerLayoutInflaterProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    const v0, 0x7f0d00af

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v0, "R.layout.dream_overlay_complications_layer did not properly inflated"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 117

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->$r8$classId:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->id:I

    iget-object v5, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->sysUIGoogleSysUIComponentImpl:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget-object v6, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    iget-object v7, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->dozeComponentImpl:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->get$com$google$android$systemui$dagger$DaggerSysUIGoogleGlobalRootComponent$cascd_ComplicationComponentImpl$SwitchingProvider()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->get$com$google$android$systemui$dagger$DaggerSysUIGoogleGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->get$com$google$android$systemui$dagger$DaggerSysUIGoogleGlobalRootComponent$SectionHeaderControllerSubcomponentImpl$SwitchingProvider()Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->get$com$google$android$systemui$dagger$DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl$SwitchingProvider()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->get$com$google$android$systemui$dagger$DaggerSysUIGoogleGlobalRootComponent$NotificationShelfComponentImpl$SwitchingProvider()Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-direct/range {p0 .. p0}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->get$com$google$android$systemui$dagger$DaggerSysUIGoogleGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->get$com$google$android$systemui$dagger$DaggerSysUIGoogleGlobalRootComponent$MediaProjectionAppSelectorComponentImpl$SwitchingProvider()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_6
    invoke-direct/range {p0 .. p0}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->get$com$google$android$systemui$dagger$DaggerSysUIGoogleGlobalRootComponent$KeyguardUserSwitcherComponentImpl$SwitchingProvider()Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    move-result-object v0

    return-object v0

    :pswitch_7
    invoke-direct/range {p0 .. p0}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->get$com$google$android$systemui$dagger$DaggerSysUIGoogleGlobalRootComponent$KeyguardStatusViewComponentImpl$SwitchingProvider()Lcom/android/keyguard/KeyguardSliceViewController;

    move-result-object v0

    return-object v0

    :pswitch_8
    invoke-direct/range {p0 .. p0}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->get$com$google$android$systemui$dagger$DaggerSysUIGoogleGlobalRootComponent$KeyguardStatusBarViewComponentImpl$SwitchingProvider()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_9
    if-nez v4, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    check-cast v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$NotificationShelfComponentImpl;

    iget-object v1, v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$NotificationShelfComponentImpl;->notificationShelf:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Landroid/widget/FrameLayout;

    iget-object v3, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->-$$Nest$mmainResources(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Landroid/content/res/Resources;

    move-result-object v4

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->userSwitcherControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/systemui/plugins/FalsingManager;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->configurationControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->dozeParametersProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->screenOffAnimationControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->userSwitchDialogControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/systemui/qs/user/UserSwitchDialogController;

    iget-object v1, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/internal/logging/UiEventLogger;

    move-object v1, v0

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    move-object v10, v12

    move-object v11, v13

    move-object v12, v14

    invoke-direct/range {v1 .. v12}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;-><init>(Landroid/widget/FrameLayout;Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Lcom/android/systemui/qs/user/UserSwitchDialogController;Lcom/android/internal/logging/UiEventLogger;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v4}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    :pswitch_a
    invoke-direct/range {p0 .. p0}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->get$com$google$android$systemui$dagger$DaggerSysUIGoogleGlobalRootComponent$KeyguardBouncerComponentImpl$SwitchingProvider()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_b
    invoke-direct/range {p0 .. p0}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->get$com$google$android$systemui$dagger$DaggerSysUIGoogleGlobalRootComponent$ExpandableNotificationRowComponentImpl$SwitchingProvider()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;

    move-result-object v0

    return-object v0

    :pswitch_c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->get$com$google$android$systemui$dagger$DaggerSysUIGoogleGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_d
    invoke-direct/range {p0 .. p0}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->get$com$google$android$systemui$dagger$DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider()Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;

    move-result-object v0

    return-object v0

    :pswitch_e
    packed-switch v4, :pswitch_data_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v4}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    :pswitch_f
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorControllerProvider;

    check-cast v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;

    invoke-static {v7}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;->-$$Nest$fgetnotificationShadeWindowViewControllerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    invoke-static {v7}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;->-$$Nest$fgetprovideListContainerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetprovideHeadsUpManagerPhoneProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v3

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-static {v6}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->-$$Nest$fgetprovideInteractionJankMonitorProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v4

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/jank/InteractionJankMonitor;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorControllerProvider;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowViewController;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/internal/jank/InteractionJankMonitor;)V

    goto/16 :goto_0

    :pswitch_10
    invoke-static {v6}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->-$$Nest$fgetcontext(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Landroid/content/Context;

    move-result-object v8

    check-cast v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;

    invoke-static {v7}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;->-$$Nest$fgetnotificationPanelViewControllerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/systemui/shade/ShadeViewController;

    invoke-static {v7}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;->-$$Nest$fgetquickSettingsControllerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/systemui/shade/QuickSettingsController;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetprovideHeadsUpManagerPhoneProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetprovidesNotificationShadeWindowViewProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/systemui/shade/NotificationShadeWindowView;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetactivityStarterImplProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v7}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;->-$$Nest$fgetnotificationStackScrollLayoutControllerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetdozeScrimControllerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetnotificationShadeWindowControllerImplProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetdynamicPrivacyControllerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetkeyguardStateControllerImplProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetkeyguardIndicationControllerGoogleProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetcentralSurfacesGoogleProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetlockscreenShadeTransitionControllerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetprovideCommandQueueProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetnotificationLockscreenUserManagerImplProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetstatusBarStateControllerImplProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetshadeEventCoordinatorProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetprovideNotificationMediaManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetnotificationGutsManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetlockscreenGestureLoggerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetinitControllerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/systemui/InitController;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetnotificationInterruptStateProviderImplProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v29, v0

    check-cast v29, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetprovideNotificationRemoteInputManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$mnotifPipelineFlags(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Lcom/android/systemui/statusbar/notification/NotifPipelineFlags;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetstatusBarRemoteInputCallbackProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;

    invoke-static {v7}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;->-$$Nest$fgetprovideListContainerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v32, v0

    check-cast v32, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-static/range {v8 .. v32}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter_Factory;->newInstance(Landroid/content/Context;Lcom/android/systemui/shade/ShadeViewController;Lcom/android/systemui/shade/QuickSettingsController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/shade/NotificationShadeWindowView;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/KeyguardIndicationController;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/InitController;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;)Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_11
    invoke-static {v6}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->-$$Nest$fgetcontext(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Landroid/content/Context;

    move-result-object v8

    invoke-static {}, Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvideHandlerFactory;->provideHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetprovideExecutorProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/util/concurrent/Executor;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetnotificationVisibilityProviderImplProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetprovideHeadsUpManagerPhoneProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetactivityStarterImplProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetnotificationClickNotifierProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/systemui/statusbar/NotificationClickNotifier;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetstatusBarKeyguardViewManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-static {v6}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->-$$Nest$fgetprovideKeyguardManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/app/KeyguardManager;

    invoke-static {v6}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->-$$Nest$fgetprovideIDreamManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/service/dreams/IDreamManager;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetprovideBubblesManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Ljava/util/Optional;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetassistManagerGoogleProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v19

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetprovideNotificationRemoteInputManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetnotificationLockscreenUserManagerImplProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetshadeControllerImplProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Lcom/android/systemui/shade/ShadeController;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetkeyguardStateControllerImplProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetnotificationInterruptStateProviderImplProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;

    invoke-static {v6}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->-$$Nest$fgetprovideLockPatternUtilsProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetstatusBarRemoteInputCallbackProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetactivityIntentHelperProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/systemui/ActivityIntentHelper;

    invoke-static {v6}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->-$$Nest$fgetprovideMetricsLoggerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/internal/logging/MetricsLogger;

    check-cast v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;

    invoke-static {v7}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;->-$$Nest$mstatusBarNotificationActivityStarterLogger(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;)Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;

    move-result-object v28

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetonUserInteractionCallbackImplProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v29, v0

    check-cast v29, Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetcentralSurfacesGoogleProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    invoke-static {v7}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;->-$$Nest$fgetstatusBarNotificationPresenterProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-static {v7}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;->-$$Nest$fgetnotificationPanelViewControllerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v32, v0

    check-cast v32, Lcom/android/systemui/shade/ShadeViewController;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetprovideActivityLaunchAnimatorProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v33, v0

    check-cast v33, Lcom/android/systemui/animation/ActivityLaunchAnimator;

    invoke-static {v7}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;->-$$Nest$fgetnotificationLaunchAnimatorControllerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v34, v0

    check-cast v34, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorControllerProvider;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetlaunchFullScreenIntentProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v35, v0

    check-cast v35, Lcom/android/systemui/statusbar/notification/collection/provider/LaunchFullScreenIntentProvider;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetfeatureFlagsReleaseProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/flags/FeatureFlags;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetprovideUserTrackerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/systemui/settings/UserTracker;

    invoke-static/range {v8 .. v36}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Factory;->newInstance(Landroid/content/Context;Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/NotificationClickNotifier;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Landroid/app/KeyguardManager;Landroid/service/dreams/IDreamManager;Ljava/util/Optional;Ldagger/Lazy;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/shade/ShadeController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;Lcom/android/systemui/ActivityIntentHelper;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/shade/ShadeViewController;Lcom/android/systemui/animation/ActivityLaunchAnimator;Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorControllerProvider;Lcom/android/systemui/statusbar/notification/collection/provider/LaunchFullScreenIntentProvider;Lcom/android/systemui/settings/UserTracker;)Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_12
    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetcentralSurfacesGoogleProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;

    invoke-static {v7}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;->-$$Nest$fgetquickSettingsControllerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/systemui/shade/QuickSettingsController;

    invoke-static {v6}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->-$$Nest$fgetcontext(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v6}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->-$$Nest$mmainResources(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Landroid/content/res/Resources;

    move-result-object v11

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetshadeControllerImplProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/systemui/shade/ShadeController;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetprovideCommandQueueProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v7}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;->-$$Nest$fgetnotificationPanelViewControllerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/systemui/shade/ShadeViewController;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetremoteInputQuickSettingsDisablerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    invoke-static {v6}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->-$$Nest$fgetprovideMetricsLoggerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetkeyguardUpdateMonitorProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetkeyguardStateControllerImplProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetprovideHeadsUpManagerPhoneProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetwakefulnessLifecycleProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetprovideDeviceProvisionedControllerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetstatusBarKeyguardViewManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetassistManagerGoogleProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/systemui/assist/AssistManager;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetdozeServiceHostProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-static {v7}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;->-$$Nest$fgetnotificationStackScrollLayoutControllerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetstatusBarHideIconsForBouncerManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;

    invoke-static {v6}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->-$$Nest$fgetprovidePowerManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/PowerManager;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetvibratorHelperProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-static {v6}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->-$$Nest$fgetprovideOptionalVibratorProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v29, v0

    check-cast v29, Ljava/util/Optional;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetdisableFlagsLoggerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;

    invoke-static {v6}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->-$$Nest$mdisplayIdInteger(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)I

    move-result v31

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetsystemBarAttributesListenerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v32, v0

    check-cast v32, Lcom/android/systemui/statusbar/phone/SystemBarAttributesListener;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetcameraLauncherProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v33

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetprovideUserTrackerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v34, v0

    check-cast v34, Lcom/android/systemui/settings/UserTracker;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetqSHostAdapterProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v35, v0

    check-cast v35, Lcom/android/systemui/qs/QSHost;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetactivityStarterImplProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static/range {v8 .. v36}, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks_Factory;->newInstance(Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/shade/QuickSettingsController;Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/systemui/shade/ShadeController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/shade/ShadeViewController;Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;Lcom/android/internal/logging/MetricsLogger;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/assist/AssistManager;Lcom/android/systemui/statusbar/phone/DozeServiceHost;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;Landroid/os/PowerManager;Lcom/android/systemui/statusbar/VibratorHelper;Ljava/util/Optional;Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;ILcom/android/systemui/statusbar/phone/SystemBarAttributesListener;Ldagger/Lazy;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/plugins/ActivityStarter;)Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_13
    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetnotificationShadeWindowControllerImplProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetstatusBarWindowControllerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    check-cast v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;

    invoke-static {v7}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;->-$$Nest$fgetnotificationPanelViewControllerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/systemui/shade/ShadeViewController;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetkeyguardBypassControllerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetprovideHeadsUpManagerPhoneProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetstatusBarStateControllerImplProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetprovideNotificationRemoteInputManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-static/range {v8 .. v14}, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener_Factory;->newInstance(Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/window/StatusBarWindowController;Lcom/android/systemui/shade/ShadeViewController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_14
    new-instance v0, Lcom/android/systemui/shade/PulsingGestureListener;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetprovidesNotificationShadeWindowViewProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shade/NotificationShadeWindowView;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetfalsingManagerProxyProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/plugins/FalsingManager;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetprovideDockManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/dock/DockManager;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetcentralSurfacesGoogleProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    invoke-static {v6}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->-$$Nest$mambientDisplayConfiguration(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Landroid/hardware/display/AmbientDisplayConfiguration;

    move-result-object v7

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetstatusBarStateControllerImplProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$mshadeLogger(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Lcom/android/systemui/shade/ShadeLogger;

    move-result-object v9

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetprovideUserTrackerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/systemui/settings/UserTracker;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgettunerServiceImplProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v6}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->-$$Nest$fgetdumpManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/systemui/dump/DumpManager;

    move-object v1, v0

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    move-object v10, v12

    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/shade/PulsingGestureListener;-><init>(Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/shade/ShadeLogger;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/dump/DumpManager;)V

    goto/16 :goto_0

    :pswitch_15
    check-cast v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;

    invoke-static {v7}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;->-$$Nest$fgetnotificationStackScrollLayoutControllerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutListContainerModule_ProvideListContainerFactory;->provideListContainer(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_16
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaViewController;

    check-cast v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;

    invoke-static {v7}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;->-$$Nest$mkeyguardBottomAreaView(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;)Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaViewController;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    goto/16 :goto_0

    :pswitch_17
    new-instance v0, Lcom/android/systemui/shade/QuickSettingsController;

    move-object v8, v0

    check-cast v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;

    invoke-static {v7}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;->-$$Nest$fgetnotificationPanelViewControllerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v9

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetprovidesNotificationPanelViewProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/systemui/shade/NotificationPanelView;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetqsFrameTranslateImplProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/systemui/statusbar/QsFrameTranslateImpl;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetshadeTransitionControllerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/systemui/shade/transition/ShadeTransitionController;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetpulseExpansionHandlerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/systemui/statusbar/PulseExpansionHandler;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetprovideNotificationRemoteInputManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetshadeExpansionStateManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/systemui/shade/ShadeExpansionStateManager;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetstatusBarKeyguardViewManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetlightBarControllerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-static {v7}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;->-$$Nest$fgetnotificationStackScrollLayoutControllerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetlockscreenShadeTransitionControllerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetnotificationShadeDepthControllerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetshadeHeaderControllerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Lcom/android/systemui/shade/ShadeHeaderController;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetstatusBarTouchableRegionManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetkeyguardStateControllerImplProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v23, v1

    check-cast v23, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetkeyguardBypassControllerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v24, v1

    check-cast v24, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetkeyguardUpdateMonitorProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v25, v1

    check-cast v25, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetscrimControllerProvider2(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v26, v1

    check-cast v26, Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetmediaDataManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v27, v1

    check-cast v27, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetmediaHierarchyManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v28, v1

    check-cast v28, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetambientStateProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v29, v1

    check-cast v29, Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetrecordingControllerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v30, v1

    check-cast v30, Lcom/android/systemui/screenrecord/RecordingController;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetfalsingManagerProxyProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v31, v1

    check-cast v31, Lcom/android/systemui/plugins/FalsingManager;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetfalsingCollectorImplProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v32, v1

    check-cast v32, Lcom/android/systemui/classifier/FalsingCollector;

    invoke-static {v6}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->-$$Nest$fgetprovideAccessibilityManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v33, v1

    check-cast v33, Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetlockscreenGestureLoggerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v34, v1

    check-cast v34, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    invoke-static {v6}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->-$$Nest$fgetprovideMetricsLoggerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v35, v1

    check-cast v35, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetfeatureFlagsReleaseProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/flags/FeatureFlags;

    invoke-static {v6}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->-$$Nest$fgetprovideInteractionJankMonitorProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v36, v1

    check-cast v36, Lcom/android/internal/jank/InteractionJankMonitor;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$mshadeLogger(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Lcom/android/systemui/shade/ShadeLogger;

    move-result-object v37

    invoke-static {v6}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->-$$Nest$fgetdumpManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v38, v1

    check-cast v38, Lcom/android/systemui/dump/DumpManager;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetsystemUIKeyguardFaceAuthInteractorProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v39, v1

    check-cast v39, Lcom/android/systemui/keyguard/domain/interactor/KeyguardFaceAuthInteractor;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetshadeRepositoryImplProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v40, v1

    check-cast v40, Lcom/android/systemui/shade/data/repository/ShadeRepository;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetcastControllerImplProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v41, v1

    check-cast v41, Lcom/android/systemui/statusbar/policy/CastController;

    invoke-direct/range {v8 .. v41}, Lcom/android/systemui/shade/QuickSettingsController;-><init>(Ldagger/Lazy;Lcom/android/systemui/shade/NotificationPanelView;Lcom/android/systemui/statusbar/QsFrameTranslateImpl;Lcom/android/systemui/shade/transition/ShadeTransitionController;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/shade/ShadeHeaderController;Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/media/controls/pipeline/MediaDataManager;Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/screenrecord/RecordingController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/classifier/FalsingCollector;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/systemui/shade/ShadeLogger;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/keyguard/domain/interactor/KeyguardFaceAuthInteractor;Lcom/android/systemui/shade/data/repository/ShadeRepository;Lcom/android/systemui/statusbar/policy/CastController;)V

    goto/16 :goto_0

    :pswitch_18
    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetprovidesNotificationShadeWindowViewProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/NotificationShadeWindowView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/dagger/StatusBarViewModule_GetNotificationsQuickSettingsContainerFactory;->getNotificationsQuickSettingsContainer(Lcom/android/systemui/shade/NotificationShadeWindowView;)Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_19
    new-instance v0, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;

    invoke-static {v6}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->-$$Nest$fgetprovideDisplayMetricsProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/DisplayMetrics;

    invoke-direct {v0, v1}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;-><init>(Landroid/util/DisplayMetrics;)V

    goto/16 :goto_0

    :pswitch_1a
    new-instance v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    move-object v8, v0

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->providesNotificationPanelViewProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/systemui/shade/NotificationPanelView;

    iget-object v1, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMainHandlerProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    invoke-virtual {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/os/Handler;

    iget-object v1, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providerLayoutInflaterProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/view/LayoutInflater;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->featureFlagsReleaseProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/systemui/flags/FeatureFlags;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->notificationWakeUpCoordinatorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->pulseExpansionHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/systemui/statusbar/PulseExpansionHandler;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->dynamicPrivacyControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/android/systemui/plugins/FalsingManager;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->falsingCollectorImplProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/android/systemui/classifier/FalsingCollector;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->statusBarWindowStateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->notificationShadeWindowControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->dozeLogProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v23, v1

    check-cast v23, Lcom/android/systemui/doze/DozeLog;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->dozeParametersProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v24, v1

    check-cast v24, Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideCommandQueueProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v25, v1

    check-cast v25, Lcom/android/systemui/statusbar/CommandQueue;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->vibratorHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v26, v1

    check-cast v26, Lcom/android/systemui/statusbar/VibratorHelper;

    iget-object v1, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideLatencyTrackerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v27, v1

    check-cast v27, Lcom/android/internal/util/LatencyTracker;

    iget-object v1, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providePowerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v28, v1

    check-cast v28, Landroid/os/PowerManager;

    iget-object v1, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideAccessibilityManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v29, v1

    check-cast v29, Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v6}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->-$$Nest$mdisplayIdInteger(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)I

    move-result v30

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v31, v1

    check-cast v31, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v32, v1

    check-cast v32, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$mshadeLogger(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Lcom/android/systemui/shade/ShadeLogger;

    move-result-object v33

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->configurationControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v34, v1

    check-cast v34, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;

    iget-object v1, v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;->builderProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;

    move-object/from16 v35, v1

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->statusBarTouchableRegionManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v36, v1

    check-cast v36, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->conversationNotificationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v37, v1

    check-cast v37, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->mediaHierarchyManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v38, v1

    check-cast v38, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v39, v1

    check-cast v39, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->notificationGutsManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v40, v1

    check-cast v40, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    new-instance v42, Lcom/android/systemui/shade/NotificationsQSContainerController;

    move-object/from16 v41, v42

    iget-object v1, v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;->getNotificationsQuickSettingsContainerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v43, v1

    check-cast v43, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    iget-object v1, v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;->sysUIGoogleSysUIComponentImpl:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget-object v2, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->navigationModeControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v44, v2

    check-cast v44, Lcom/android/systemui/navigationbar/NavigationModeController;

    iget-object v2, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->overviewProxyServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v45, v2

    check-cast v45, Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v2, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->shadeHeaderControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v46, v2

    check-cast v46, Lcom/android/systemui/shade/ShadeHeaderController;

    iget-object v2, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->shadeExpansionStateManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v47, v2

    check-cast v47, Lcom/android/systemui/shade/ShadeExpansionStateManager;

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->fragmentServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v48, v1

    check-cast v48, Lcom/android/systemui/fragments/FragmentService;

    iget-object v1, v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v49, v1

    check-cast v49, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-direct/range {v42 .. v49}, Lcom/android/systemui/shade/NotificationsQSContainerController;-><init>(Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/shade/ShadeHeaderController;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/fragments/FragmentService;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V

    iget-object v1, v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;->notificationStackScrollLayoutControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v42, v1

    check-cast v42, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    new-instance v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentFactory;

    move-object/from16 v43, v1

    invoke-direct {v1, v6, v5, v3}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentFactory;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentFactory$$ExternalSynthetic$IA1;)V

    new-instance v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentFactory;

    move-object/from16 v44, v1

    invoke-direct {v1, v6, v5, v3}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentFactory;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentFactory$$ExternalSynthetic$IA3;)V

    new-instance v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentFactory;

    move-object/from16 v45, v1

    invoke-direct {v1, v6, v5, v3}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentFactory;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentFactory$$ExternalSynthetic$IA7;)V

    new-instance v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentFactory;

    move-object/from16 v46, v1

    invoke-direct {v1, v6, v5, v3}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentFactory;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentFactory$$ExternalSynthetic$IA2;)V

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetlockscreenShadeTransitionControllerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v47, v1

    check-cast v47, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetauthControllerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v48, v1

    check-cast v48, Lcom/android/systemui/biometrics/AuthController;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetscrimControllerProvider2(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v49, v1

    check-cast v49, Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {v6}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->-$$Nest$fgetprovideUserManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v50, v1

    check-cast v50, Landroid/os/UserManager;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetmediaDataManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v51, v1

    check-cast v51, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetnotificationShadeDepthControllerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v52, v1

    check-cast v52, Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetambientStateProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v53, v1

    check-cast v53, Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetlockIconViewControllerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v54, v1

    check-cast v54, Lcom/android/keyguard/LockIconViewController;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetkeyguardMediaControllerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v55, v1

    check-cast v55, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgettapAgainViewControllerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v56, v1

    check-cast v56, Lcom/android/systemui/statusbar/phone/TapAgainViewController;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetnavigationModeControllerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v57, v1

    check-cast v57, Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetnavigationBarControllerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v58, v1

    check-cast v58, Lcom/android/systemui/navigationbar/NavigationBarController;

    invoke-static {v7}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;->-$$Nest$fgetquickSettingsControllerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v59, v1

    check-cast v59, Lcom/android/systemui/shade/QuickSettingsController;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetfragmentServiceProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v60, v1

    check-cast v60, Lcom/android/systemui/fragments/FragmentService;

    invoke-static {v6}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->-$$Nest$fgetprovideContentResolverProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v61, v1

    check-cast v61, Landroid/content/ContentResolver;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetshadeHeaderControllerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v62, v1

    check-cast v62, Lcom/android/systemui/shade/ShadeHeaderController;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetscreenOffAnimationControllerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v63, v1

    check-cast v63, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetlockscreenGestureLoggerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v64, v1

    check-cast v64, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetshadeExpansionStateManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v65, v1

    check-cast v65, Lcom/android/systemui/shade/ShadeExpansionStateManager;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetprovideSysUIUnfoldComponentProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v66, v1

    check-cast v66, Ljava/util/Optional;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetprovideSysUiStateProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v67, v1

    check-cast v67, Lcom/android/systemui/model/SysUiState;

    invoke-static {v7}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;->-$$Nest$fgetkeyguardBottomAreaViewControllerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;)Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;

    move-result-object v68

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetkeyguardUnlockAnimationControllerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v69, v1

    check-cast v69, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetkeyguardIndicationControllerGoogleProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v70, v1

    check-cast v70, Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v7}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;->-$$Nest$fgetprovideListContainerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v71, v1

    check-cast v71, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetnotificationStackSizeCalculatorProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v72, v1

    check-cast v72, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetunlockedScreenOffAnimationControllerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v73, v1

    check-cast v73, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetshadeTransitionControllerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v74, v1

    check-cast v74, Lcom/android/systemui/shade/transition/ShadeTransitionController;

    invoke-static {v6}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->-$$Nest$fgetprovideInteractionJankMonitorProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/jank/InteractionJankMonitor;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetbindSystemClockProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v75, v1

    check-cast v75, Lcom/android/systemui/util/time/SystemClock;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$mkeyguardBottomAreaViewModel(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;

    move-result-object v76

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetkeyguardBottomAreaInteractorProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v77, v1

    check-cast v77, Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetalternateBouncerInteractorProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v78, v1

    check-cast v78, Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetdreamingToLockscreenTransitionViewModelProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v79, v1

    check-cast v79, Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetoccludedToLockscreenTransitionViewModelProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v80, v1

    check-cast v80, Lcom/android/systemui/keyguard/ui/viewmodel/OccludedToLockscreenTransitionViewModel;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetlockscreenToDreamingTransitionViewModelProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v81, v1

    check-cast v81, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToDreamingTransitionViewModel;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetgoneToDreamingTransitionViewModelProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v82, v1

    check-cast v82, Lcom/android/systemui/keyguard/ui/viewmodel/GoneToDreamingTransitionViewModel;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetlockscreenToOccludedTransitionViewModelProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v83, v1

    check-cast v83, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToOccludedTransitionViewModel;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetmainDispatcherProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v84, v1

    check-cast v84, Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetkeyguardTransitionInteractorProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v85, v1

    check-cast v85, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetmultiShadeInteractorProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    invoke-static {v6}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->-$$Nest$fgetdumpManagerProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v86, v1

    check-cast v86, Lcom/android/systemui/dump/DumpManager;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetkeyguardLongPressViewModelProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v87, v1

    check-cast v87, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardLongPressViewModel;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetkeyguardInteractorProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v88, v1

    check-cast v88, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetactivityStarterImplProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v89, v1

    check-cast v89, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$fgetsystemUIKeyguardFaceAuthInteractorProvider(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v90, v1

    check-cast v90, Lcom/android/systemui/keyguard/domain/interactor/KeyguardFaceAuthInteractor;

    invoke-direct/range {v8 .. v90}, Lcom/android/systemui/shade/NotificationPanelViewController;-><init>(Lcom/android/systemui/shade/NotificationPanelView;Landroid/os/Handler;Landroid/view/LayoutInflater;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/internal/util/LatencyTracker;Landroid/os/PowerManager;Landroid/view/accessibility/AccessibilityManager;ILcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/shade/ShadeLogger;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/shade/NotificationsQSContainerController;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentFactory;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentFactory;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentFactory;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentFactory;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/os/UserManager;Lcom/android/systemui/media/controls/pipeline/MediaDataManager;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/keyguard/LockIconViewController;Lcom/android/systemui/media/controls/ui/KeyguardMediaController;Lcom/android/systemui/statusbar/phone/TapAgainViewController;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/navigationbar/NavigationBarController;Lcom/android/systemui/shade/QuickSettingsController;Lcom/android/systemui/fragments/FragmentService;Landroid/content/ContentResolver;Lcom/android/systemui/shade/ShadeHeaderController;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;Lcom/android/systemui/shade/ShadeExpansionStateManager;Ljava/util/Optional;Lcom/android/systemui/model/SysUiState;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;Lcom/android/systemui/statusbar/KeyguardIndicationController;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Lcom/android/systemui/shade/transition/ShadeTransitionController;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/OccludedToLockscreenTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToDreamingTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/GoneToDreamingTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToOccludedTransitionViewModel;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardLongPressViewModel;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/keyguard/domain/interactor/KeyguardFaceAuthInteractor;)V

    goto/16 :goto_0

    :pswitch_1b
    new-instance v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    move-object/from16 v91, v0

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->lockscreenShadeTransitionControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v92, v1

    check-cast v92, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->falsingCollectorImplProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v93, v1

    check-cast v93, Lcom/android/systemui/classifier/FalsingCollector;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v94, v1

    check-cast v94, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideDockManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v95, v1

    check-cast v95, Lcom/android/systemui/dock/DockManager;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->notificationShadeDepthControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v96, v1

    check-cast v96, Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->providesNotificationShadeWindowViewProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v97, v1

    check-cast v97, Lcom/android/systemui/shade/NotificationShadeWindowView;

    check-cast v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;

    iget-object v1, v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;->notificationPanelViewControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v98, v1

    check-cast v98, Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->shadeExpansionStateManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v99, v1

    check-cast v99, Lcom/android/systemui/shade/ShadeExpansionStateManager;

    iget-object v1, v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;->notificationStackScrollLayoutControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v100, v1

    check-cast v100, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v101, v1

    check-cast v101, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->statusBarWindowStateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v102, v1

    check-cast v102, Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->lockIconViewControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v103, v1

    check-cast v103, Lcom/android/keyguard/LockIconViewController;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->centralSurfacesGoogleProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v104, v1

    check-cast v104, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->notificationShadeWindowControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v105, v1

    check-cast v105, Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    iget-object v1, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->unfoldTransitionProgressProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Optional;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->keyguardUnlockAnimationControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v106, v1

    check-cast v106, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->notificationInsetsImplProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v107, v1

    check-cast v107, Lcom/android/systemui/statusbar/NotificationInsetsController;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->ambientStateProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v108, v1

    check-cast v108, Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->-$$Nest$mshadeLogger(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Lcom/android/systemui/shade/ShadeLogger;

    move-result-object v109

    iget-object v1, v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;->pulsingGestureListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v110, v1

    check-cast v110, Lcom/android/systemui/shade/PulsingGestureListener;

    new-instance v1, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;

    move-object/from16 v111, v1

    iget-object v2, v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;->sysUIGoogleSysUIComponentImpl:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget-object v3, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->bouncerViewImplProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/keyguard/data/BouncerViewImpl;

    iget-object v2, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->primaryBouncerInteractorProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;

    invoke-direct {v1, v3, v2}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;-><init>(Lcom/android/systemui/keyguard/data/BouncerViewImpl;Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;)V

    new-instance v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentFactory;

    move-object/from16 v112, v1

    invoke-direct {v1, v6, v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentFactory;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)V

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->keyguardTransitionInteractorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v113, v1

    check-cast v113, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->primaryBouncerToGoneTransitionViewModelProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v114, v1

    check-cast v114, Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->featureFlagsReleaseProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v115, v1

    check-cast v115, Lcom/android/systemui/flags/FeatureFlags;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->bindSystemClockProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v116, v1

    check-cast v116, Lcom/android/systemui/util/time/SystemClock;

    invoke-direct/range {v91 .. v116}, Lcom/android/systemui/shade/NotificationShadeWindowViewController;-><init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/shade/NotificationShadeWindowView;Lcom/android/systemui/shade/NotificationPanelViewController;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;Lcom/android/keyguard/LockIconViewController;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;Lcom/android/systemui/statusbar/NotificationInsetsController;Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/shade/ShadeLogger;Lcom/android/systemui/shade/PulsingGestureListener;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentFactory;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/util/time/SystemClock;)V

    goto/16 :goto_0

    :pswitch_1c
    new-instance v0, Lcom/android/systemui/statusbar/notification/shelf/domain/interactor/NotificationShelfInteractor;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->keyguardRepositoryImplProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->deviceEntryFaceAuthRepositoryImplProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepository;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->centralSurfacesGoogleProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->bindSystemClockProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/systemui/util/time/SystemClock;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->lockscreenShadeTransitionControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    move-object v1, v0

    move-object v5, v6

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/shelf/domain/interactor/NotificationShelfInteractor;-><init>(Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepository;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;)V

    goto/16 :goto_0

    :pswitch_1d
    new-instance v0, Lcom/android/systemui/statusbar/notification/shelf/ui/viewmodel/NotificationShelfViewModel;

    check-cast v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;

    iget-object v1, v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;->notificationShelfInteractorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/shelf/domain/interactor/NotificationShelfInteractor;

    iget-object v2, v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;->sysUIGoogleSysUIComponentImpl:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget-object v2, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->accessibilityInteractorProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/accessibility/domain/interactor/AccessibilityInteractor;

    new-instance v3, Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/ActivatableNotificationViewModelImpl;

    invoke-direct {v3, v2}, Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/ActivatableNotificationViewModelImpl;-><init>(Lcom/android/systemui/accessibility/domain/interactor/AccessibilityInteractor;)V

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/statusbar/notification/shelf/ui/viewmodel/NotificationShelfViewModel;-><init>(Lcom/android/systemui/statusbar/notification/shelf/domain/interactor/NotificationShelfInteractor;Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/ActivatableNotificationViewModelImpl;)V

    goto/16 :goto_0

    :pswitch_1e
    iget-object v0, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->providesNotificationStackScrollLayoutProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v0, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideAllowNotificationLongPressProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    iget-object v0, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->notificationGutsManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iget-object v0, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->notificationVisibilityProviderImplProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;

    iget-object v0, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v0, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->notificationRoundnessManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    iget-object v0, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->tunerServiceImplProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/systemui/tuner/TunerService;

    iget-object v0, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideDeviceProvisionedControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object v0, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->dynamicPrivacyControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    iget-object v0, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->configurationControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v0, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object v0, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->keyguardMediaControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;

    iget-object v0, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iget-object v0, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->zenModeControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v0, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    check-cast v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;

    iget-object v0, v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;->sysUIGoogleSysUIComponentImpl:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget-object v0, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->featureFlagsReleaseProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/flags/FeatureFlags;

    sget-object v0, Lcom/android/systemui/flags/Flags;->TEAMFOOD:Lcom/android/systemui/flags/UnreleasedFlag;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v24

    iget-object v0, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/internal/logging/MetricsLogger;

    iget-object v0, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/systemui/dump/DumpManager;

    iget-object v0, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->falsingCollectorImplProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/systemui/classifier/FalsingCollector;

    iget-object v0, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/systemui/plugins/FalsingManager;

    invoke-static {v6}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->-$$Nest$mmainResources(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Landroid/content/res/Resources;

    iget-object v0, v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    invoke-static {v0}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->-$$Nest$mmainResources(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Landroid/content/res/Resources;

    move-result-object v30

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideViewConfigurationProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v31, v1

    check-cast v31, Landroid/view/ViewConfiguration;

    iget-object v0, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v32, v0

    check-cast v32, Lcom/android/systemui/dump/DumpManager;

    iget-object v0, v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;->sysUIGoogleSysUIComponentImpl:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v33, v1

    check-cast v33, Lcom/android/systemui/plugins/FalsingManager;

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->featureFlagsReleaseProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v34, v1

    check-cast v34, Lcom/android/systemui/flags/FeatureFlags;

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->notificationRoundnessManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v35, v1

    check-cast v35, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$Builder;

    move-object/from16 v29, v1

    invoke-direct/range {v29 .. v35}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$Builder;-><init>(Landroid/content/res/Resources;Landroid/view/ViewConfiguration;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;)V

    iget-object v2, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->centralSurfacesGoogleProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v30, v2

    check-cast v30, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    iget-object v2, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->scrimControllerProvider2:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v31, v2

    check-cast v31, Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v2, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->groupExpansionManagerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v32, v2

    check-cast v32, Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManagerImpl;

    iget-object v2, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->providesSilentHeaderSubcomponentProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;

    iget-object v2, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;->sectionHeaderNodeControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v33, v2

    check-cast v33, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;

    invoke-static/range {v33 .. v33}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    iget-object v2, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->notifPipelineProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v34, v2

    check-cast v34, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    invoke-virtual {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->notifPipelineFlags()Lcom/android/systemui/statusbar/notification/NotifPipelineFlags;

    iget-object v2, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->notifCollectionProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v35, v2

    check-cast v35, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    iget-object v2, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->lockscreenShadeTransitionControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v36, v2

    check-cast v36, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    iget-object v2, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v37, v2

    check-cast v37, Lcom/android/internal/logging/UiEventLogger;

    iget-object v2, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v38, v2

    check-cast v38, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v2, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->visibilityLocationProviderDelegatorProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v39, v2

    check-cast v39, Lcom/android/systemui/statusbar/notification/collection/provider/VisibilityLocationProviderDelegator;

    iget-object v2, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->seenNotificationsProviderImplProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v40, v2

    check-cast v40, Lcom/android/systemui/statusbar/notification/collection/provider/SeenNotificationsProviderImpl;

    iget-object v2, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->shadeControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v41, v2

    check-cast v41, Lcom/android/systemui/shade/ShadeController;

    iget-object v2, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideInteractionJankMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v42, v2

    check-cast v42, Lcom/android/internal/jank/InteractionJankMonitor;

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/StackStateLogger;

    move-object/from16 v43, v2

    iget-object v3, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideNotificationHeadsUpLogBufferProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/log/LogBuffer;

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/notification/stack/StackStateLogger;-><init>(Lcom/android/systemui/log/LogBuffer;)V

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger;

    move-object/from16 v44, v2

    iget-object v0, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideNotificationHeadsUpLogBufferProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/log/LogBuffer;

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger;-><init>(Lcom/android/systemui/log/LogBuffer;)V

    iget-object v0, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->notificationStackSizeCalculatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v45, v0

    check-cast v45, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;

    iget-object v0, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->notificationIconAreaControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v46, v0

    check-cast v46, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iget-object v0, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->featureFlagsReleaseProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/systemui/flags/FeatureFlags;

    iget-object v0, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->notificationTargetsHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v48, v0

    check-cast v48, Lcom/android/systemui/statusbar/notification/stack/NotificationTargetsHelper;

    invoke-virtual {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->secureSettingsImpl()Lcom/android/systemui/util/settings/SecureSettingsImpl;

    move-result-object v49

    iget-object v0, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->notificationDismissibilityProviderImplProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v50, v0

    check-cast v50, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationDismissibilityProvider;

    iget-object v0, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->activityStarterImplProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v51, v0

    check-cast v51, Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    move-object v8, v0

    move-object/from16 v29, v1

    invoke-direct/range {v8 .. v51}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;ZLcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/media/controls/ui/KeyguardMediaController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Ljava/util/Optional;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$Builder;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManagerImpl;Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/notification/collection/provider/VisibilityLocationProviderDelegator;Lcom/android/systemui/statusbar/notification/collection/provider/SeenNotificationsProviderImpl;Lcom/android/systemui/shade/ShadeController;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/systemui/statusbar/notification/stack/StackStateLogger;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger;Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/statusbar/notification/stack/NotificationTargetsHelper;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/statusbar/notification/collection/provider/NotificationDismissibilityProvider;Lcom/android/systemui/plugins/ActivityStarter;)V

    goto :goto_0

    :pswitch_1f
    iget-object v0, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providerLayoutInflaterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->providesNotificationStackScrollLayoutProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const v3, 0x7f0d0283

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationShelf;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "R.layout.status_bar_notification_shelf could not be properly inflated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_20
    new-instance v0, Lcom/android/systemui/statusbar/notification/shelf/ui/viewbinder/NotificationShelfViewBinderWrapperControllerImpl;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/shelf/ui/viewbinder/NotificationShelfViewBinderWrapperControllerImpl;-><init>()V

    goto :goto_0

    :pswitch_21
    iget-object v0, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->featureFlagsReleaseProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/flags/FeatureFlags;

    check-cast v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;

    iget-object v1, v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;->notificationShelfViewBinderWrapperControllerImplProvider:Ljavax/inject/Provider;

    iget-object v1, v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;->providesNotificationShelfProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationShelf;

    sget-object v2, Lcom/android/systemui/flags/Flags;->TEAMFOOD:Lcom/android/systemui/flags/UnreleasedFlag;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Lcom/android/systemui/statusbar/NotificationShelf;

    new-instance v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$NotificationShelfComponentImpl;

    invoke-direct {v0, v6, v5, v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$NotificationShelfComponentImpl;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/android/systemui/statusbar/NotificationShelf;)V

    iget-object v0, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$NotificationShelfComponentImpl;->legacyNotificationShelfControllerImplProvider:Ljava/lang/Object;

    check-cast v0, Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;

    iget-object v1, v0, Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;->mActivatableNotificationViewController:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->init()V

    iget-object v1, v0, Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;->mView:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationShelf;->mController:Lcom/android/systemui/statusbar/NotificationShelfController;

    iget-object v2, v0, Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;->mOnAttachStateChangeListener:Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl$1;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl$1;->onViewAttachedToWindow(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-object v0

    :pswitch_22
    packed-switch v4, :pswitch_data_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v4}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    :pswitch_23
    new-instance v0, Lcom/android/systemui/doze/DozeSuppressor;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->dozeServiceHostProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/doze/DozeHost;

    invoke-static {v6}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->-$$Nest$mambientDisplayConfiguration(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Landroid/hardware/display/AmbientDisplayConfiguration;

    move-result-object v7

    iget-object v2, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->dozeLogProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/android/systemui/doze/DozeLog;

    iget-object v2, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->biometricUnlockControllerProvider:Ljavax/inject/Provider;

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v9

    iget-object v2, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/android/systemui/settings/UserTracker;

    move-object v5, v0

    move-object v6, v1

    invoke-direct/range {v5 .. v10}, Lcom/android/systemui/doze/DozeSuppressor;-><init>(Lcom/android/systemui/doze/DozeHost;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/doze/DozeLog;Ldagger/Lazy;Lcom/android/systemui/settings/UserTracker;)V

    goto/16 :goto_5

    :pswitch_24
    new-instance v0, Lcom/android/systemui/doze/DozeAuthRemover;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {v0, v1}, Lcom/android/systemui/doze/DozeAuthRemover;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_5

    :pswitch_25
    invoke-static {v6}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->-$$Nest$mambientDisplayConfiguration(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Landroid/hardware/display/AmbientDisplayConfiguration;

    move-result-object v0

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideDockManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/dock/DockManager;

    iget-object v2, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/settings/UserTracker;

    new-instance v3, Lcom/android/systemui/doze/DozeDockHandler;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/systemui/doze/DozeDockHandler;-><init>(Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/settings/UserTracker;)V

    goto/16 :goto_3

    :pswitch_26
    new-instance v0, Lcom/android/systemui/doze/DozeWallpaperState;

    iget-object v1, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideIWallPaperManagerProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    invoke-virtual {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IWallpaperManager;

    iget-object v2, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->biometricUnlockControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iget-object v3, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->dozeParametersProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/doze/DozeWallpaperState;-><init>(Landroid/app/IWallpaperManager;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/statusbar/phone/DozeParameters;)V

    goto/16 :goto_5

    :pswitch_27
    new-instance v0, Lcom/android/systemui/doze/DozeScreenBrightness;

    iget-object v1, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    check-cast v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl;

    iget-object v4, v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl;->providesWrappedServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/android/systemui/doze/DozeMachine$Service;

    iget-object v4, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->asyncSensorManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lcom/android/systemui/util/sensors/AsyncSensorManager;

    iget-object v4, v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl;->sysUIGoogleSysUIComponentImpl:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget-object v9, v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->asyncSensorManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/util/sensors/AsyncSensorManager;

    iget-object v7, v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    iget-object v7, v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    iget-object v4, v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->dozeParametersProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f03004e

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    array-length v10, v4

    const v11, 0x7f130326

    if-eqz v10, :cond_5

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/util/Optional;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v10

    invoke-static {v3, v10}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    :goto_1
    array-length v12, v4

    if-ge v2, v12, :cond_4

    aget-object v12, v4, v2

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    invoke-virtual {v7, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    aget-object v14, v4, v2

    invoke-static {v9, v13, v14}, Lcom/android/systemui/doze/DozeSensors;->findSensor(Lcom/android/systemui/util/sensors/AsyncSensorManager;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Optional;

    aput-object v12, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move-object v2, v3

    goto :goto_2

    :cond_5
    invoke-virtual {v7, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2, v3}, Lcom/android/systemui/doze/DozeSensors;->findSensor(Lcom/android/systemui/util/sensors/AsyncSensorManager;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    filled-new-array {v2}, [Ljava/util/Optional;

    move-result-object v2

    :goto_2
    iget-object v3, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->dozeServiceHostProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/android/systemui/doze/DozeHost;

    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    iget-object v3, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->alwaysOnDisplayPolicyProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    iget-object v3, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v3, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->dozeParametersProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-object v3, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->devicePostureControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lcom/android/systemui/statusbar/policy/DevicePostureController;

    iget-object v3, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->dozeLogProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/android/systemui/doze/DozeLog;

    iget-object v3, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    iget-object v3, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideContentResolverProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentResolver;

    iget-object v4, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/settings/UserTracker;

    new-instance v7, Lcom/android/systemui/util/settings/SystemSettingsImpl;

    invoke-direct {v7, v3, v4}, Lcom/android/systemui/util/settings/SystemSettingsImpl;-><init>(Landroid/content/ContentResolver;Lcom/android/systemui/settings/UserTracker;)V

    move-object v4, v0

    move-object v5, v1

    move-object v1, v7

    move-object v7, v8

    move-object v8, v2

    move-object/from16 v16, v1

    invoke-direct/range {v4 .. v16}, Lcom/android/systemui/doze/DozeScreenBrightness;-><init>(Landroid/content/Context;Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/systemui/util/sensors/AsyncSensorManager;[Ljava/util/Optional;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/util/settings/SystemSettingsImpl;)V

    goto/16 :goto_5

    :pswitch_28
    new-instance v0, Lcom/android/systemui/doze/DozeScreenState;

    check-cast v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl;

    iget-object v1, v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl;->providesWrappedServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/android/systemui/doze/DozeMachine$Service;

    iget-object v1, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMainHandlerProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    invoke-virtual {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Landroid/os/Handler;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->dozeServiceHostProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lcom/android/systemui/doze/DozeHost;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->dozeParametersProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-object v1, v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl;->providesDozeWakeLockProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Lcom/android/systemui/util/wakelock/WakeLock;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->authControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Lcom/android/systemui/biometrics/AuthController;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->udfpsControllerProvider:Ljavax/inject/Provider;

    iget-object v2, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->dozeLogProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Lcom/android/systemui/doze/DozeLog;

    iget-object v2, v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl;->dozeScreenBrightnessProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Lcom/android/systemui/doze/DozeScreenBrightness;

    move-object/from16 v16, v0

    move-object/from16 v23, v1

    invoke-direct/range {v16 .. v25}, Lcom/android/systemui/doze/DozeScreenState;-><init>(Lcom/android/systemui/doze/DozeMachine$Service;Landroid/os/Handler;Lcom/android/systemui/doze/DozeHost;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/biometrics/AuthController;Ljavax/inject/Provider;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/doze/DozeScreenBrightness;)V

    goto/16 :goto_5

    :pswitch_29
    new-instance v0, Lcom/android/systemui/doze/DozeUi;

    iget-object v3, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    iget-object v1, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideAlarmManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/app/AlarmManager;

    check-cast v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl;

    iget-object v1, v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl;->providesDozeWakeLockProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/wakelock/WakeLock;

    iget-object v2, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->dozeServiceHostProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/android/systemui/doze/DozeHost;

    iget-object v2, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMainHandlerProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    invoke-virtual {v2}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/os/Handler;

    iget-object v2, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->dozeParametersProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-object v2, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v2, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->dozeLogProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/android/systemui/doze/DozeLog;

    move-object v2, v0

    move-object v5, v1

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    invoke-direct/range {v2 .. v10}, Lcom/android/systemui/doze/DozeUi;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/doze/DozeLog;)V

    goto/16 :goto_5

    :pswitch_2a
    new-instance v0, Lcom/android/systemui/doze/DozeTriggers;

    move-object v12, v0

    iget-object v13, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->dozeServiceHostProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/systemui/doze/DozeHost;

    invoke-static {v6}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->-$$Nest$mambientDisplayConfiguration(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Landroid/hardware/display/AmbientDisplayConfiguration;

    move-result-object v15

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->dozeParametersProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->asyncSensorManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/android/systemui/util/sensors/AsyncSensorManager;

    check-cast v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl;

    iget-object v1, v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl;->providesDozeWakeLockProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/android/systemui/util/wakelock/WakeLock;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideDockManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lcom/android/systemui/dock/DockManager;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideProximitySensorProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$WMComponentImpl$SwitchingProvider;

    invoke-virtual {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$WMComponentImpl$SwitchingProvider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Lcom/android/systemui/util/sensors/ProximitySensor;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideProximitySensorProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$WMComponentImpl$SwitchingProvider;

    invoke-virtual {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$WMComponentImpl$SwitchingProvider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/sensors/ProximitySensor;

    iget-object v2, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    iget-object v2, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v3, Lcom/android/systemui/util/sensors/ProximityCheck;

    move-object/from16 v21, v3

    invoke-direct {v3, v1, v2}, Lcom/android/systemui/util/sensors/ProximityCheck;-><init>(Lcom/android/systemui/util/sensors/ProximitySensor;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->dozeLogProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Lcom/android/systemui/doze/DozeLog;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v23, v1

    check-cast v23, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->secureSettingsImpl()Lcom/android/systemui/util/settings/SecureSettingsImpl;

    move-result-object v24

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->authControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v25, v1

    check-cast v25, Lcom/android/systemui/biometrics/AuthController;

    iget-object v1, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v26, v1

    check-cast v26, Lcom/android/internal/logging/UiEventLogger;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->sessionTrackerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v27, v1

    check-cast v27, Lcom/android/systemui/log/SessionTracker;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v28, v1

    check-cast v28, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->devicePostureControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v29, v1

    check-cast v29, Lcom/android/systemui/statusbar/policy/DevicePostureController;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v30, v1

    check-cast v30, Lcom/android/systemui/settings/UserTracker;

    invoke-direct/range {v12 .. v30}, Lcom/android/systemui/doze/DozeTriggers;-><init>(Landroid/content/Context;Lcom/android/systemui/doze/DozeHost;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/util/sensors/AsyncSensorManager;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/util/sensors/ProximitySensor;Lcom/android/systemui/util/sensors/ProximityCheck;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/biometrics/AuthController;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/log/SessionTracker;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/settings/UserTracker;)V

    goto/16 :goto_5

    :pswitch_2b
    new-instance v0, Lcom/android/systemui/doze/DozeFalsingManagerAdapter;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->falsingCollectorImplProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/classifier/FalsingCollector;

    invoke-direct {v0, v1}, Lcom/android/systemui/doze/DozeFalsingManagerAdapter;-><init>(Lcom/android/systemui/classifier/FalsingCollector;)V

    goto/16 :goto_5

    :pswitch_2c
    new-instance v0, Lcom/android/systemui/doze/DozePauser;

    iget-object v1, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMainHandlerProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    invoke-virtual {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    iget-object v2, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideAlarmManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iget-object v3, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->alwaysOnDisplayPolicyProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/doze/DozePauser;-><init>(Landroid/os/Handler;Landroid/app/AlarmManager;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)V

    goto/16 :goto_5

    :pswitch_2d
    iget-object v0, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    iget-object v0, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->wakeLockLogger()Lcom/android/systemui/util/wakelock/WakeLockLogger;

    move-result-object v1

    iget-object v2, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMainHandlerProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    invoke-virtual {v2}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/util/wakelock/DelayedWakeLock;

    const-string v4, "Doze"

    invoke-static {v0, v1, v4}, Lcom/android/systemui/util/wakelock/WakeLock;->createPartial(Landroid/content/Context;Lcom/android/systemui/util/wakelock/WakeLockLogger;Ljava/lang/String;)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object v0

    invoke-direct {v3, v2, v0}, Lcom/android/systemui/util/wakelock/DelayedWakeLock;-><init>(Landroid/os/Handler;Lcom/android/systemui/util/wakelock/WakeLock;)V

    :goto_3
    move-object v0, v3

    goto/16 :goto_5

    :pswitch_2e
    check-cast v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl;

    iget-object v0, v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl;->dozeMachineService:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/doze/DozeMachine$Service;

    iget-object v1, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->dozeServiceHostProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/doze/DozeHost;

    iget-object v2, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->dozeParametersProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-object v3, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideUiBackgroundExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/android/systemui/doze/DozeBrightnessHostForwarder;

    invoke-direct {v4, v0, v1, v3}, Lcom/android/systemui/doze/DozeBrightnessHostForwarder;-><init>(Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/systemui/doze/DozeHost;Ljava/util/concurrent/Executor;)V

    iget-object v0, v2, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f050055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const-string v1, "doze.display.supported"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    new-instance v0, Lcom/android/systemui/doze/DozeScreenStatePreventingAdapter;

    invoke-direct {v0, v4, v3}, Lcom/android/systemui/doze/DozeScreenStatePreventingAdapter;-><init>(Lcom/android/systemui/doze/DozeMachine$Service;Ljava/util/concurrent/Executor;)V

    goto :goto_4

    :cond_6
    move-object v0, v4

    :goto_4
    iget-object v1, v2, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f05005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_7

    new-instance v1, Lcom/android/systemui/doze/DozeSuspendScreenStatePreventingAdapter;

    invoke-direct {v1, v0, v3}, Lcom/android/systemui/doze/DozeSuspendScreenStatePreventingAdapter;-><init>(Lcom/android/systemui/doze/DozeMachine$Service;Ljava/util/concurrent/Executor;)V

    move-object v0, v1

    goto/16 :goto_5

    :pswitch_2f
    new-instance v0, Lcom/android/systemui/doze/DozeMachine;

    check-cast v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl;

    iget-object v1, v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl;->providesWrappedServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/doze/DozeMachine$Service;

    invoke-static {v6}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->-$$Nest$mambientDisplayConfiguration(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Landroid/hardware/display/AmbientDisplayConfiguration;

    move-result-object v6

    iget-object v2, v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl;->providesDozeWakeLockProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/wakelock/WakeLock;

    iget-object v3, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v3, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->dozeLogProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/android/systemui/doze/DozeLog;

    iget-object v3, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideDockManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/android/systemui/dock/DockManager;

    iget-object v3, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->dozeServiceHostProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/android/systemui/doze/DozeHost;

    iget-object v3, v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl;->dozePauserProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/android/systemui/doze/DozePauser;

    iget-object v3, v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl;->dozeFalsingManagerAdapterProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/android/systemui/doze/DozeFalsingManagerAdapter;

    iget-object v3, v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl;->dozeTriggersProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lcom/android/systemui/doze/DozeTriggers;

    iget-object v3, v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl;->dozeUiProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/android/systemui/doze/DozeUi;

    iget-object v3, v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl;->dozeScreenStateProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Lcom/android/systemui/doze/DozeScreenState;

    iget-object v3, v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl;->dozeScreenBrightnessProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Lcom/android/systemui/doze/DozeScreenBrightness;

    iget-object v3, v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl;->dozeWallpaperStateProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Lcom/android/systemui/doze/DozeWallpaperState;

    iget-object v3, v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl;->dozeDockHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Lcom/android/systemui/doze/DozeDockHandler;

    iget-object v3, v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl;->dozeAuthRemoverProvider:Ljava/lang/Object;

    check-cast v3, Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Lcom/android/systemui/doze/DozeAuthRemover;

    iget-object v3, v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl;->dozeSuppressorProvider:Ljava/lang/Object;

    check-cast v3, Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Lcom/android/systemui/doze/DozeSuppressor;

    iget-object v3, v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl;->sysUIGoogleSysUIComponentImpl:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget-object v3, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->dozeTransitionListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Lcom/android/systemui/doze/DozeTransitionListener;

    filled-new-array/range {v12 .. v22}, [Lcom/android/systemui/doze/DozeMachine$Part;

    move-result-object v3

    move-object v12, v3

    check-cast v12, [Lcom/android/systemui/doze/DozeMachine$Part;

    iget-object v3, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/android/systemui/settings/UserTracker;

    move-object v4, v0

    move-object v5, v1

    move-object v7, v2

    invoke-direct/range {v4 .. v13}, Lcom/android/systemui/doze/DozeMachine;-><init>(Lcom/android/systemui/doze/DozeMachine$Service;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/doze/DozeHost;[Lcom/android/systemui/doze/DozeMachine$Part;Lcom/android/systemui/settings/UserTracker;)V

    :cond_7
    :goto_5
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_22
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
    .end packed-switch
.end method
