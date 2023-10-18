.class public final Lcom/google/android/systemui/SystemUIGoogleInitializer;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mInitializationChecker:Lcom/android/systemui/util/InitializationChecker;

.field public mRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

.field public mSysUIComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

.field public mWMComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$WMComponentImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/SystemUIGoogleInitializer;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final init()V
    .locals 26

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/systemui/SystemUIGoogleInitializer;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    new-instance v12, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    new-instance v2, Lcom/android/systemui/dagger/GlobalModule;

    invoke-direct {v2}, Lcom/android/systemui/dagger/GlobalModule;-><init>()V

    new-instance v3, Lcom/android/systemui/dagger/AndroidInternalsModule;

    invoke-direct {v3}, Lcom/android/systemui/dagger/AndroidInternalsModule;-><init>()V

    new-instance v4, Lcom/android/systemui/dagger/FrameworkServicesModule;

    invoke-direct {v4}, Lcom/android/systemui/dagger/FrameworkServicesModule;-><init>()V

    new-instance v5, Lcom/android/systemui/unfold/UnfoldTransitionModule;

    invoke-direct {v5}, Lcom/android/systemui/unfold/UnfoldTransitionModule;-><init>()V

    new-instance v6, Lcom/android/systemui/unfold/UnfoldSharedModule;

    invoke-direct {v6}, Lcom/android/systemui/unfold/UnfoldSharedModule;-><init>()V

    new-instance v7, Lcom/android/systemui/unfold/UnfoldSharedInternalModule;

    invoke-direct {v7}, Lcom/android/systemui/unfold/UnfoldSharedInternalModule;-><init>()V

    move-object v1, v12

    move-object v8, v10

    move-object v9, v11

    invoke-direct/range {v1 .. v9}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;-><init>(Lcom/android/systemui/dagger/GlobalModule;Lcom/android/systemui/dagger/AndroidInternalsModule;Lcom/android/systemui/dagger/FrameworkServicesModule;Lcom/android/systemui/unfold/UnfoldTransitionModule;Lcom/android/systemui/unfold/UnfoldSharedModule;Lcom/android/systemui/unfold/UnfoldSharedInternalModule;Landroid/content/Context;Ljava/lang/Boolean;)V

    iput-object v12, v0, Lcom/google/android/systemui/SystemUIGoogleInitializer;->mRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    new-instance v1, Lcom/android/systemui/util/InitializationChecker;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/systemui/util/InitializationChecker;-><init>(Z)V

    iput-object v1, v0, Lcom/google/android/systemui/SystemUIGoogleInitializer;->mInitializationChecker:Lcom/android/systemui/util/InitializationChecker;

    invoke-virtual {v1}, Lcom/android/systemui/util/InitializationChecker;->initializeComponents()Z

    move-result v1

    iget-object v2, v0, Lcom/google/android/systemui/SystemUIGoogleInitializer;->mRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    new-instance v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$Builder;

    iget-object v2, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    invoke-direct {v3, v2}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$Builder;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)V

    iget-object v2, v0, Lcom/google/android/systemui/SystemUIGoogleInitializer;->mInitializationChecker:Lcom/android/systemui/util/InitializationChecker;

    invoke-virtual {v2}, Lcom/android/systemui/util/InitializationChecker;->initializeComponents()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f05001c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/os/HandlerThread;

    const-string v4, "wmshell.main"

    const/4 v5, -0x4

    invoke-direct {v2, v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0, v3, v2}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/SystemUIGoogleInitializer;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$Builder;Landroid/os/HandlerThread;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "SystemUIFactory"

    const-string v1, "Failed to initialize WMComponent"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    :goto_0
    new-instance v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$WMComponentImpl;

    iget-object v4, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$Builder;->context:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    iget-object v3, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$Builder;->instrumentationTest:Ljava/lang/Object;

    check-cast v3, Landroid/os/HandlerThread;

    invoke-direct {v2, v4, v3}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$WMComponentImpl;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Landroid/os/HandlerThread;)V

    iput-object v2, v0, Lcom/google/android/systemui/SystemUIGoogleInitializer;->mWMComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$WMComponentImpl;

    :goto_1
    iget-object v2, v0, Lcom/google/android/systemui/SystemUIGoogleInitializer;->mRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    iget-object v2, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    if-eqz v1, :cond_3

    iget-object v3, v0, Lcom/google/android/systemui/SystemUIGoogleInitializer;->mWMComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$WMComponentImpl;

    iget-object v3, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$WMComponentImpl;->provideShellSysuiCallbacksProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/sysui/ShellInterface;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v0, Lcom/google/android/systemui/SystemUIGoogleInitializer;->mWMComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$WMComponentImpl;

    iget-object v4, v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$WMComponentImpl;->providePipProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Optional;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v0, Lcom/google/android/systemui/SystemUIGoogleInitializer;->mWMComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$WMComponentImpl;

    iget-object v5, v5, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$WMComponentImpl;->provideSplitScreenProvider:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Optional;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v0, Lcom/google/android/systemui/SystemUIGoogleInitializer;->mWMComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$WMComponentImpl;

    iget-object v6, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$WMComponentImpl;->provideOneHandedProvider:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Optional;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v0, Lcom/google/android/systemui/SystemUIGoogleInitializer;->mWMComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$WMComponentImpl;

    iget-object v7, v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$WMComponentImpl;->provideBubblesProvider:Ljavax/inject/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Optional;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v0, Lcom/google/android/systemui/SystemUIGoogleInitializer;->mWMComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$WMComponentImpl;

    iget-object v8, v8, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$WMComponentImpl;->provideTaskViewFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Optional;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v0, Lcom/google/android/systemui/SystemUIGoogleInitializer;->mWMComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$WMComponentImpl;

    iget-object v9, v9, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$WMComponentImpl;->provideRemoteTransitionsProvider:Ljavax/inject/Provider;

    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/wm/shell/transition/ShellTransitions;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v0, Lcom/google/android/systemui/SystemUIGoogleInitializer;->mWMComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$WMComponentImpl;

    iget-object v10, v10, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$WMComponentImpl;->provideKeyguardTransitionsProvider:Ljavax/inject/Provider;

    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/wm/shell/keyguard/KeyguardTransitions;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v0, Lcom/google/android/systemui/SystemUIGoogleInitializer;->mWMComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$WMComponentImpl;

    iget-object v11, v11, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$WMComponentImpl;->provideStartingSurfaceProvider:Ljavax/inject/Provider;

    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Optional;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v0, Lcom/google/android/systemui/SystemUIGoogleInitializer;->mWMComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$WMComponentImpl;

    iget-object v12, v12, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$WMComponentImpl;->provideDisplayAreaHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Optional;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v13, v0, Lcom/google/android/systemui/SystemUIGoogleInitializer;->mWMComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$WMComponentImpl;

    iget-object v13, v13, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$WMComponentImpl;->provideRecentTasksProvider:Ljavax/inject/Provider;

    invoke-interface {v13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Optional;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v14, v0, Lcom/google/android/systemui/SystemUIGoogleInitializer;->mWMComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$WMComponentImpl;

    iget-object v14, v14, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$WMComponentImpl;->provideBackAnimationProvider:Ljavax/inject/Provider;

    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Optional;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v15, v0, Lcom/google/android/systemui/SystemUIGoogleInitializer;->mWMComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$WMComponentImpl;

    iget-object v15, v15, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$WMComponentImpl;->provideDesktopModeProvider:Ljavax/inject/Provider;

    invoke-interface {v15}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Optional;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v16, v3

    iget-object v3, v0, Lcom/google/android/systemui/SystemUIGoogleInitializer;->mWMComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$WMComponentImpl;

    iget-object v3, v3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$WMComponentImpl;->provideShellSysuiCallbacksProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/sysui/ShellInterface;

    invoke-interface {v3}, Lcom/android/wm/shell/sysui/ShellInterface;->onInit()V

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    move-object/from16 v21, v12

    move-object/from16 v22, v13

    move-object/from16 v23, v14

    move-object/from16 v24, v15

    move-object/from16 v12, v16

    move-object v13, v4

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    goto/16 :goto_2

    :cond_3
    new-instance v3, Lcom/android/systemui/SystemUIInitializer$3;

    invoke-direct {v3}, Lcom/android/systemui/SystemUIInitializer$3;-><init>()V

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Lcom/android/systemui/SystemUIInitializer$2;

    invoke-direct {v10}, Lcom/android/systemui/SystemUIInitializer$2;-><init>()V

    new-instance v11, Lcom/android/systemui/SystemUIInitializer$1;

    invoke-direct {v11}, Lcom/android/systemui/SystemUIInitializer$1;-><init>()V

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v24, v4

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move-object/from16 v21, v12

    move-object/from16 v20, v13

    move-object/from16 v22, v14

    move-object/from16 v23, v15

    move-object v12, v3

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    :goto_2
    const-class v3, Ljava/util/Optional;

    const-class v3, Ljava/util/Optional;

    const-class v3, Ljava/util/Optional;

    const-class v3, Ljava/util/Optional;

    const-class v3, Ljava/util/Optional;

    const-class v3, Ljava/util/Optional;

    const-class v3, Ljava/util/Optional;

    const-class v3, Ljava/util/Optional;

    const-class v3, Ljava/util/Optional;

    const-class v3, Ljava/util/Optional;

    new-instance v4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    move-object v3, v4

    new-instance v6, Lcom/android/systemui/util/leak/LeakModule;

    move-object v5, v6

    invoke-direct {v6}, Lcom/android/systemui/util/leak/LeakModule;-><init>()V

    new-instance v7, Lcom/android/systemui/dagger/NightDisplayListenerModule;

    move-object v6, v7

    invoke-direct {v7}, Lcom/android/systemui/dagger/NightDisplayListenerModule;-><init>()V

    new-instance v8, Lcom/android/systemui/dagger/SharedLibraryModule;

    move-object v7, v8

    invoke-direct {v8}, Lcom/android/systemui/dagger/SharedLibraryModule;-><init>()V

    new-instance v9, Lcom/android/systemui/mediaprojection/devicepolicy/MediaProjectionDevicePolicyModule;

    move-object v8, v9

    invoke-direct {v9}, Lcom/android/systemui/mediaprojection/devicepolicy/MediaProjectionDevicePolicyModule;-><init>()V

    new-instance v10, Lcom/android/systemui/unfold/SysUIUnfoldModule;

    move-object v9, v10

    invoke-direct {v10}, Lcom/android/systemui/unfold/SysUIUnfoldModule;-><init>()V

    new-instance v11, Lcom/android/systemui/keyguard/dagger/KeyguardModule;

    move-object v10, v11

    invoke-direct {v11}, Lcom/android/systemui/keyguard/dagger/KeyguardModule;-><init>()V

    new-instance v25, Lcom/google/android/systemui/globalactions/ShutdownUiModuleGoogle;

    move-object/from16 v11, v25

    invoke-direct/range {v25 .. v25}, Lcom/google/android/systemui/globalactions/ShutdownUiModuleGoogle;-><init>()V

    move/from16 v25, v1

    move-object v1, v4

    move-object v4, v2

    invoke-direct/range {v3 .. v24}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/android/systemui/util/leak/LeakModule;Lcom/android/systemui/dagger/NightDisplayListenerModule;Lcom/android/systemui/dagger/SharedLibraryModule;Lcom/android/systemui/mediaprojection/devicepolicy/MediaProjectionDevicePolicyModule;Lcom/android/systemui/unfold/SysUIUnfoldModule;Lcom/android/systemui/keyguard/dagger/KeyguardModule;Lcom/google/android/systemui/globalactions/ShutdownUiModuleGoogle;Lcom/android/wm/shell/sysui/ShellInterface;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/transition/ShellTransitions;Lcom/android/wm/shell/keyguard/KeyguardTransitions;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;)V

    iput-object v1, v0, Lcom/google/android/systemui/SystemUIGoogleInitializer;->mSysUIComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v25, :cond_7

    iget-object v7, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideSysUIUnfoldComponentProvider:Ljavax/inject/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Optional;

    new-instance v8, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda0;

    invoke-direct {v8, v6}, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v7, v8}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v7, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideNaturalRotationProgressProvider:Ljavax/inject/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Optional;

    new-instance v8, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda0;

    invoke-direct {v8, v4}, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v7, v8}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v7, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->providesMediaMuteAwaitConnectionCliProvider:Ljavax/inject/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Optional;

    iget-object v7, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->providesNearbyMediaDevicesManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Optional;

    iget-object v7, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->unfoldLatencyTrackerProvider:Ljavax/inject/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/unfold/UnfoldLatencyTracker;

    iget-object v8, v7, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x107006a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    array-length v8, v8

    if-nez v8, :cond_4

    move v8, v4

    goto :goto_3

    :cond_4
    move v8, v6

    :goto_3
    xor-int/2addr v8, v4

    if-nez v8, :cond_5

    goto :goto_4

    :cond_5
    iget-object v8, v7, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->foldStateListener:Lcom/android/systemui/unfold/UnfoldLatencyTracker$FoldStateListener;

    iget-object v9, v7, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->deviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    iget-object v10, v7, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->uiBgExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v9, v10, v8}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    iget-object v8, v7, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->screenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v8, v8, Lcom/android/systemui/keyguard/Lifecycle;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, v7, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->transitionProgressProvider:Ljava/util/Optional;

    invoke-virtual {v8}, Ljava/util/Optional;->isPresent()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v8}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    invoke-interface {v8, v7}, Lcom/android/systemui/unfold/util/CallbackController;->addCallback(Ljava/lang/Object;)V

    :cond_6
    :goto_4
    iget-object v7, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providesFoldStateLoggingProvider:Ljavax/inject/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Optional;

    new-instance v8, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda0;

    invoke-direct {v8, v5}, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v7, v8}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v7, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providesFoldStateLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Optional;

    new-instance v8, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda0;

    invoke-direct {v8, v3}, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v7, v8}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v2, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->unfoldTransitionProgressProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Optional;

    new-instance v7, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda1;

    invoke-direct {v7, v6, v1}, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v7}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_7
    iget-object v0, v0, Lcom/google/android/systemui/SystemUIGoogleInitializer;->mSysUIComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget-object v0, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->dependencyProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/Dependency;

    sget-object v1, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    iget-object v2, v0, Lcom/android/systemui/Dependency;->mTimeTickHandler:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v7, v2, v6}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;I)V

    iget-object v2, v0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    iget-object v7, v0, Lcom/android/systemui/Dependency;->mBgLooper:Ldagger/Lazy;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    const/16 v9, 0x1b

    invoke-direct {v8, v7, v9}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;I)V

    invoke-virtual {v2, v1, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/systemui/Dependency;->MAIN_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    iget-object v7, v0, Lcom/android/systemui/Dependency;->mMainLooper:Ldagger/Lazy;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda1;

    invoke-direct {v8, v7, v6}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda1;-><init>(Ldagger/Lazy;I)V

    invoke-virtual {v2, v1, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    iget-object v7, v0, Lcom/android/systemui/Dependency;->mMainHandler:Ldagger/Lazy;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda1;

    const/16 v9, 0x13

    invoke-direct {v8, v7, v9}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda1;-><init>(Ldagger/Lazy;I)V

    invoke-virtual {v2, v1, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/systemui/Dependency;->MAIN_EXECUTOR:Lcom/android/systemui/Dependency$DependencyKey;

    iget-object v7, v0, Lcom/android/systemui/Dependency;->mMainExecutor:Ldagger/Lazy;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v8, v7, v6}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;I)V

    invoke-virtual {v2, v1, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/systemui/Dependency;->BACKGROUND_EXECUTOR:Lcom/android/systemui/Dependency$DependencyKey;

    iget-object v7, v0, Lcom/android/systemui/Dependency;->mBackgroundExecutor:Ldagger/Lazy;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    const/16 v10, 0xb

    invoke-direct {v8, v7, v10}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;I)V

    invoke-virtual {v2, v1, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mActivityStarter:Ldagger/Lazy;

    const/16 v7, 0x16

    const-class v8, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v1, v1, v7, v2, v8}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mBroadcastDispatcher:Ldagger/Lazy;

    const-class v8, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-static {v1, v1, v6, v2, v8}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    const-class v1, Lcom/android/systemui/util/sensors/AsyncSensorManager;

    iget-object v6, v0, Lcom/android/systemui/Dependency;->mAsyncSensorManager:Ldagger/Lazy;

    const/16 v8, 0xe

    invoke-static {v6, v6, v8, v2, v1}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mBluetoothController:Ldagger/Lazy;

    const/16 v6, 0x19

    const-class v11, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-static {v1, v1, v6, v2, v11}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    const-class v1, Landroid/hardware/SensorPrivacyManager;

    iget-object v11, v0, Lcom/android/systemui/Dependency;->mSensorPrivacyManager:Ldagger/Lazy;

    invoke-static {v11, v11, v10, v2, v1}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mLocationController:Ldagger/Lazy;

    const/16 v11, 0x12

    const-class v12, Lcom/android/systemui/statusbar/policy/LocationController;

    invoke-static {v1, v1, v11, v2, v12}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mRotationLockController:Ldagger/Lazy;

    const-class v12, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

    invoke-static {v1, v1, v9, v2, v12}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mZenModeController:Ldagger/Lazy;

    const/16 v9, 0x14

    const-class v12, Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-static {v1, v1, v9, v2, v12}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mHotspotController:Ldagger/Lazy;

    const/16 v12, 0x15

    const-class v13, Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-static {v1, v1, v12, v2, v13}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mCastController:Ldagger/Lazy;

    const-class v13, Lcom/android/systemui/statusbar/policy/CastController;

    invoke-static {v1, v1, v7, v2, v13}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mFlashlightController:Ldagger/Lazy;

    const/16 v13, 0x17

    const-class v14, Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-static {v1, v1, v13, v2, v14}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mKeyguardMonitor:Ldagger/Lazy;

    const/16 v14, 0x18

    const-class v15, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-static {v1, v1, v14, v2, v15}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    const-class v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v14, v0, Lcom/android/systemui/Dependency;->mKeyguardUpdateMonitor:Ldagger/Lazy;

    invoke-static {v14, v14, v6, v2, v1}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mUserSwitcherController:Ldagger/Lazy;

    const/16 v6, 0x1a

    const-class v14, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v1, v1, v6, v2, v14}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mUserInfoController:Ldagger/Lazy;

    const/16 v6, 0x1c

    const-class v14, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    invoke-static {v1, v1, v6, v2, v14}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    const-class v1, Landroid/hardware/display/NightDisplayListener;

    iget-object v6, v0, Lcom/android/systemui/Dependency;->mNightDisplayListener:Ldagger/Lazy;

    const/16 v14, 0x1d

    invoke-static {v6, v6, v14, v2, v1}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mReduceBrightColorsController:Ldagger/Lazy;

    const-class v6, Lcom/android/systemui/qs/ReduceBrightColorsController;

    invoke-static {v1, v1, v4, v2, v6}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mManagedProfileController:Ldagger/Lazy;

    const-class v6, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;

    invoke-static {v1, v1, v5, v2, v6}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mNextAlarmController:Ldagger/Lazy;

    const-class v6, Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-static {v1, v1, v3, v2, v6}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mDataSaverController:Ldagger/Lazy;

    const/4 v3, 0x4

    const-class v6, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;

    invoke-static {v1, v1, v3, v2, v6}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    const-class v1, Lcom/android/systemui/statusbar/policy/AccessibilityController;

    iget-object v3, v0, Lcom/android/systemui/Dependency;->mAccessibilityController:Ldagger/Lazy;

    const/4 v6, 0x5

    invoke-static {v3, v3, v6, v2, v1}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mDeviceProvisionedController:Ldagger/Lazy;

    const/4 v3, 0x6

    const-class v15, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {v1, v1, v3, v2, v15}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mPluginManager:Ldagger/Lazy;

    const/4 v3, 0x7

    const-class v15, Lcom/android/systemui/plugins/PluginManager;

    invoke-static {v1, v1, v3, v2, v15}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mAssistManager:Ldagger/Lazy;

    const/16 v3, 0x8

    const-class v15, Lcom/android/systemui/assist/AssistManager;

    invoke-static {v1, v1, v3, v2, v15}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mSecurityController:Ldagger/Lazy;

    const/16 v3, 0x9

    const-class v15, Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-static {v1, v1, v3, v2, v15}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mLeakDetector:Ldagger/Lazy;

    const/16 v3, 0xa

    const-class v15, Lcom/android/systemui/util/leak/LeakDetector;

    invoke-static {v1, v1, v3, v2, v15}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    sget-object v1, Lcom/android/systemui/Dependency;->LEAK_REPORT_EMAIL:Lcom/android/systemui/Dependency$DependencyKey;

    iget-object v3, v0, Lcom/android/systemui/Dependency;->mLeakReportEmail:Ldagger/Lazy;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda1;

    invoke-direct {v15, v3, v10}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda1;-><init>(Ldagger/Lazy;I)V

    invoke-virtual {v2, v1, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mLeakReporter:Ldagger/Lazy;

    const/16 v3, 0xc

    const-class v10, Lcom/android/systemui/util/leak/LeakReporter;

    invoke-static {v1, v1, v3, v2, v10}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mGarbageMonitor:Ldagger/Lazy;

    const/16 v10, 0xd

    const-class v15, Lcom/android/systemui/util/leak/GarbageMonitor;

    invoke-static {v1, v1, v10, v2, v15}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mTunerService:Ldagger/Lazy;

    const-class v15, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v1, v1, v8, v2, v15}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mNotificationShadeWindowController:Ldagger/Lazy;

    const/16 v8, 0xf

    const-class v15, Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-static {v1, v1, v8, v2, v15}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mTempStatusBarWindowController:Ldagger/Lazy;

    const/16 v8, 0x10

    const-class v15, Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    invoke-static {v1, v1, v8, v2, v15}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mDarkIconDispatcher:Ldagger/Lazy;

    const/16 v8, 0x11

    const-class v15, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v1, v1, v8, v2, v15}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mStatusBarIconController:Ldagger/Lazy;

    const-class v15, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {v1, v1, v11, v2, v15}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mScreenLifecycle:Ldagger/Lazy;

    const-class v15, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {v1, v1, v9, v2, v15}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mWakefulnessLifecycle:Ldagger/Lazy;

    const-class v15, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {v1, v1, v12, v2, v15}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mFragmentService:Ldagger/Lazy;

    const-class v15, Lcom/android/systemui/fragments/FragmentService;

    invoke-static {v1, v1, v7, v2, v15}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mExtensionController:Ldagger/Lazy;

    const-class v7, Lcom/android/systemui/statusbar/policy/ExtensionController;

    invoke-static {v1, v1, v13, v2, v7}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mPluginDependencyProvider:Ldagger/Lazy;

    const/16 v7, 0x18

    const-class v13, Lcom/android/systemui/plugins/PluginDependencyProvider;

    invoke-static {v1, v1, v7, v2, v13}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mLocalBluetoothManager:Ldagger/Lazy;

    const/16 v7, 0x19

    const-class v13, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {v1, v1, v7, v2, v13}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mVolumeDialogController:Ldagger/Lazy;

    const/16 v7, 0x1a

    const-class v13, Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-static {v1, v1, v7, v2, v13}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    const-class v1, Lcom/android/internal/logging/MetricsLogger;

    iget-object v7, v0, Lcom/android/systemui/Dependency;->mMetricsLogger:Ldagger/Lazy;

    const/16 v13, 0x1b

    invoke-static {v7, v7, v13, v2, v1}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mAccessibilityManagerWrapper:Ldagger/Lazy;

    const/16 v7, 0x1c

    const-class v13, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    invoke-static {v1, v1, v7, v2, v13}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    const-class v1, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iget-object v7, v0, Lcom/android/systemui/Dependency;->mSysuiColorExtractor:Ldagger/Lazy;

    invoke-static {v7, v7, v14, v2, v1}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$1(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mTunablePaddingService:Ldagger/Lazy;

    const-class v7, Lcom/android/systemui/tuner/TunablePadding$TunablePaddingService;

    invoke-static {v1, v1, v4, v2, v7}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mForegroundServiceController:Ldagger/Lazy;

    const-class v7, Lcom/android/systemui/ForegroundServiceController;

    invoke-static {v1, v1, v5, v2, v7}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mUiOffloadThread:Ldagger/Lazy;

    const/4 v7, 0x3

    const-class v13, Lcom/android/systemui/UiOffloadThread;

    invoke-static {v1, v1, v7, v2, v13}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mWarningsUI:Ldagger/Lazy;

    const/4 v7, 0x4

    const-class v13, Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-static {v1, v1, v7, v2, v13}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mLightBarController:Ldagger/Lazy;

    const-class v7, Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-static {v1, v1, v6, v2, v7}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    const-class v1, Landroid/view/IWindowManager;

    iget-object v7, v0, Lcom/android/systemui/Dependency;->mIWindowManager:Ldagger/Lazy;

    const/4 v13, 0x6

    invoke-static {v7, v7, v13, v2, v1}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mOverviewProxyService:Ldagger/Lazy;

    const/4 v7, 0x7

    const-class v13, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v1, v1, v7, v2, v13}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mNavBarModeController:Ldagger/Lazy;

    const/16 v7, 0x8

    const-class v13, Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-static {v1, v1, v7, v2, v13}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mAccessibilityButtonModeObserver:Ldagger/Lazy;

    const/16 v7, 0x9

    const-class v13, Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;

    invoke-static {v1, v1, v7, v2, v13}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mAccessibilityButtonListController:Ldagger/Lazy;

    const/16 v7, 0xa

    const-class v13, Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver;

    invoke-static {v1, v1, v7, v2, v13}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mEnhancedEstimates:Ldagger/Lazy;

    const-class v7, Lcom/android/systemui/power/EnhancedEstimates;

    invoke-static {v1, v1, v3, v2, v7}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mVibratorHelper:Ldagger/Lazy;

    const-class v7, Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-static {v1, v1, v10, v2, v7}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    const-class v1, Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v7, v0, Lcom/android/systemui/Dependency;->mIStatusBarService:Ldagger/Lazy;

    const/16 v13, 0xe

    invoke-static {v7, v7, v13, v2, v1}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    const-class v1, Landroid/util/DisplayMetrics;

    iget-object v7, v0, Lcom/android/systemui/Dependency;->mDisplayMetrics:Ldagger/Lazy;

    const/16 v13, 0xf

    invoke-static {v7, v7, v13, v2, v1}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mLockscreenGestureLogger:Ldagger/Lazy;

    const/16 v7, 0x10

    const-class v13, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    invoke-static {v1, v1, v7, v2, v13}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mShadeController:Ldagger/Lazy;

    const-class v7, Lcom/android/systemui/shade/ShadeController;

    invoke-static {v1, v1, v8, v2, v7}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mNotificationRemoteInputManagerCallback:Ldagger/Lazy;

    const-class v7, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;

    invoke-static {v1, v1, v11, v2, v7}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mAppOpsController:Ldagger/Lazy;

    const/16 v7, 0x13

    const-class v13, Lcom/android/systemui/appops/AppOpsController;

    invoke-static {v1, v1, v7, v2, v13}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mNavigationBarController:Ldagger/Lazy;

    const-class v7, Lcom/android/systemui/navigationbar/NavigationBarController;

    invoke-static {v1, v1, v9, v2, v7}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mAccessibilityFloatingMenuController:Ldagger/Lazy;

    const-class v7, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;

    invoke-static {v1, v1, v12, v2, v7}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mStatusBarStateController:Ldagger/Lazy;

    const/16 v7, 0x17

    const-class v13, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {v1, v1, v7, v2, v13}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mNotificationLockscreenUserManager:Ldagger/Lazy;

    const/16 v7, 0x18

    const-class v13, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-static {v1, v1, v7, v2, v13}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mNotificationMediaManager:Ldagger/Lazy;

    const/16 v7, 0x19

    const-class v13, Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-static {v1, v1, v7, v2, v13}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mNotificationGutsManager:Ldagger/Lazy;

    const/16 v7, 0x1a

    const-class v13, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-static {v1, v1, v7, v2, v13}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mNotificationRemoteInputManager:Ldagger/Lazy;

    const/16 v7, 0x1b

    const-class v13, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-static {v1, v1, v7, v2, v13}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mSmartReplyConstants:Ldagger/Lazy;

    const/16 v7, 0x1c

    const-class v13, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    invoke-static {v1, v1, v7, v2, v13}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    const-class v1, Lcom/android/systemui/statusbar/NotificationListener;

    iget-object v7, v0, Lcom/android/systemui/Dependency;->mNotificationListener:Ldagger/Lazy;

    invoke-static {v7, v7, v14, v2, v1}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$2(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mNotificationLogger:Ldagger/Lazy;

    const-class v7, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    invoke-static {v1, v1, v4, v2, v7}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mKeyguardDismissUtil:Ldagger/Lazy;

    const-class v7, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    invoke-static {v1, v1, v5, v2, v7}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mSmartReplyController:Ldagger/Lazy;

    const/4 v7, 0x3

    const-class v13, Lcom/android/systemui/statusbar/SmartReplyController;

    invoke-static {v1, v1, v7, v2, v13}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mRemoteInputQuickSettingsDisabler:Ldagger/Lazy;

    const/4 v7, 0x4

    const-class v13, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    invoke-static {v1, v1, v7, v2, v13}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mClockManager:Ldagger/Lazy;

    const-class v7, Lcom/android/keyguard/clock/ClockManager;

    invoke-static {v1, v1, v6, v2, v7}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mPrivacyItemController:Ldagger/Lazy;

    const/4 v7, 0x6

    const-class v13, Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-static {v1, v1, v7, v2, v13}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mActivityManagerWrapper:Ldagger/Lazy;

    const/4 v7, 0x7

    const-class v13, Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    invoke-static {v1, v1, v7, v2, v13}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mDevicePolicyManagerWrapper:Ldagger/Lazy;

    const/16 v7, 0x8

    const-class v13, Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;

    invoke-static {v1, v1, v7, v2, v13}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mPackageManagerWrapper:Ldagger/Lazy;

    const/16 v7, 0x9

    const-class v13, Lcom/android/systemui/shared/system/PackageManagerWrapper;

    invoke-static {v1, v1, v7, v2, v13}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    const-class v1, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;

    iget-object v7, v0, Lcom/android/systemui/Dependency;->mSensorPrivacyController:Ldagger/Lazy;

    const/16 v13, 0xa

    invoke-static {v7, v7, v13, v2, v1}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mDockManager:Ldagger/Lazy;

    const/16 v7, 0xb

    const-class v13, Lcom/android/systemui/dock/DockManager;

    invoke-static {v1, v1, v7, v2, v13}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    const-class v1, Landroid/app/INotificationManager;

    iget-object v7, v0, Lcom/android/systemui/Dependency;->mINotificationManager:Ldagger/Lazy;

    invoke-static {v7, v7, v3, v2, v1}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mSysUiStateFlagsContainer:Ldagger/Lazy;

    const-class v7, Lcom/android/systemui/model/SysUiState;

    invoke-static {v1, v1, v10, v2, v7}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    const-class v1, Landroid/app/AlarmManager;

    iget-object v7, v0, Lcom/android/systemui/Dependency;->mAlarmManager:Ldagger/Lazy;

    const/16 v13, 0xf

    invoke-static {v7, v7, v13, v2, v1}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mKeyguardSecurityModel:Ldagger/Lazy;

    const/16 v7, 0x10

    const-class v13, Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-static {v1, v1, v7, v2, v13}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mDozeParameters:Ldagger/Lazy;

    const-class v7, Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-static {v1, v1, v8, v2, v7}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    const-class v1, Landroid/app/IWallpaperManager;

    iget-object v7, v0, Lcom/android/systemui/Dependency;->mWallpaperManager:Ldagger/Lazy;

    invoke-static {v7, v7, v11, v2, v1}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    iget-object v7, v0, Lcom/android/systemui/Dependency;->mCommandQueue:Ldagger/Lazy;

    const/16 v11, 0x13

    invoke-static {v7, v7, v11, v2, v1}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mProtoTracer:Ldagger/Lazy;

    const-class v7, Lcom/android/systemui/tracing/ProtoTracer;

    invoke-static {v1, v1, v9, v2, v7}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mDeviceConfigProxy:Ldagger/Lazy;

    const-class v7, Lcom/android/systemui/util/DeviceConfigProxy;

    invoke-static {v1, v1, v12, v2, v7}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mTelephonyListenerManager:Ldagger/Lazy;

    const/16 v7, 0x16

    const-class v9, Lcom/android/systemui/telephony/TelephonyListenerManager;

    invoke-static {v1, v1, v7, v2, v9}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mAutoHideController:Ldagger/Lazy;

    const/16 v7, 0x17

    const-class v9, Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-static {v1, v1, v7, v2, v9}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mRecordingController:Ldagger/Lazy;

    const/16 v7, 0x18

    const-class v9, Lcom/android/systemui/screenrecord/RecordingController;

    invoke-static {v1, v1, v7, v2, v9}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m$3(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mMediaOutputDialogFactory:Ldagger/Lazy;

    const-class v7, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;

    invoke-static {v1, v1, v4, v2, v7}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mSystemStatusAnimationSchedulerLazy:Ldagger/Lazy;

    const-class v4, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    invoke-static {v1, v1, v5, v2, v4}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mPrivacyDotViewControllerLazy:Ldagger/Lazy;

    const/4 v4, 0x3

    const-class v5, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    invoke-static {v1, v1, v4, v2, v5}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mInternetDialogFactory:Ldagger/Lazy;

    const/4 v4, 0x4

    const-class v5, Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;

    invoke-static {v1, v1, v4, v2, v5}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mEdgeBackGestureHandlerFactoryLazy:Ldagger/Lazy;

    const-class v4, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;

    invoke-static {v1, v1, v6, v2, v4}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    const-class v1, Lcom/android/internal/logging/UiEventLogger;

    iget-object v4, v0, Lcom/android/systemui/Dependency;->mUiEventLogger:Ldagger/Lazy;

    const/4 v5, 0x6

    invoke-static {v4, v4, v5, v2, v1}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    const-class v1, Lcom/android/systemui/flags/FeatureFlags;

    iget-object v4, v0, Lcom/android/systemui/Dependency;->mFeatureFlagsLazy:Ldagger/Lazy;

    const/4 v5, 0x7

    invoke-static {v4, v4, v5, v2, v1}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mContentInsetsProviderLazy:Ldagger/Lazy;

    const/16 v4, 0x8

    const-class v5, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    invoke-static {v1, v1, v4, v2, v5}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mNotificationSectionsManagerLazy:Ldagger/Lazy;

    const/16 v4, 0x9

    const-class v5, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    invoke-static {v1, v1, v4, v2, v5}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mScreenOffAnimationController:Ldagger/Lazy;

    const/16 v4, 0xa

    const-class v5, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    invoke-static {v1, v1, v4, v2, v5}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mAmbientStateLazy:Ldagger/Lazy;

    const-class v4, Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-static {v1, v1, v3, v2, v4}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mGroupMembershipManagerLazy:Ldagger/Lazy;

    const-class v3, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;

    invoke-static {v1, v1, v10, v2, v3}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mGroupExpansionManagerLazy:Ldagger/Lazy;

    const/16 v3, 0xe

    const-class v4, Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManagerImpl;

    invoke-static {v1, v1, v3, v2, v4}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mSystemUIDialogManagerLazy:Ldagger/Lazy;

    const/16 v3, 0xf

    const-class v4, Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;

    invoke-static {v1, v1, v3, v2, v4}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mDialogLaunchAnimatorLazy:Ldagger/Lazy;

    const/16 v3, 0x10

    const-class v4, Lcom/android/systemui/animation/DialogLaunchAnimator;

    invoke-static {v1, v1, v3, v2, v4}, Lcom/google/android/systemui/SystemUIGoogleInitializer$$ExternalSyntheticOutline0;->m(Ldagger/Lazy;Ldagger/Lazy;ILandroid/util/ArrayMap;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mUserTrackerLazy:Ldagger/Lazy;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, v8}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;I)V

    const-class v1, Lcom/android/systemui/settings/UserTracker;

    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->setInstance(Lcom/android/systemui/Dependency;)V

    return-void
.end method
