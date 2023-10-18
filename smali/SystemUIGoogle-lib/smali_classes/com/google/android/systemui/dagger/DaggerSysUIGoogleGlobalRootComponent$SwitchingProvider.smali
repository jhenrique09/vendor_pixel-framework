.class public final Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final id:I

.field public final sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    iput p2, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;->id:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 14

    iget v0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;->id:I

    div-int/lit8 v1, v0, 0x64

    iget-object v2, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-ne v1, v3, :cond_2

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(I)V

    throw p0

    :pswitch_0
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->frameworkServicesModule:Lcom/android/systemui/dagger/FrameworkServicesModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    :pswitch_1
    new-instance p0, Lcom/android/systemui/multishade/data/remoteproxy/MultiShadeInputProxy;

    invoke-direct {p0}, Lcom/android/systemui/multishade/data/remoteproxy/MultiShadeInputProxy;-><init>()V

    goto/16 :goto_1

    :pswitch_2
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    const-class v0, Landroid/permission/PermissionManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/permission/PermissionManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/permission/PermissionManager;->initializeUsageHelper()V

    :cond_0
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_3
    const-string p0, "package"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_4
    new-instance p0, Lcom/android/systemui/qs/QSExpansionPathInterpolator;

    invoke-direct {p0}, Lcom/android/systemui/qs/QSExpansionPathInterpolator;-><init>()V

    goto/16 :goto_1

    :pswitch_5
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_6
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    const-class v0, Landroid/telecom/TelecomManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_7
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->unfoldSharedModule:Lcom/android/systemui/unfold/UnfoldSharedModule;

    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->unfoldKeyguardVisibilityManagerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/unfold/util/UnfoldKeyguardVisibilityManagerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :pswitch_8
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    const-class v0, Landroid/app/ambientcontext/AmbientContextManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ambientcontext/AmbientContextManager;

    goto/16 :goto_1

    :pswitch_9
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    const-class v0, Landroid/os/Vibrator;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_a
    const-string p0, "vrmanager"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object p0

    goto/16 :goto_1

    :pswitch_b
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    new-instance v0, Landroidx/core/app/NotificationManagerCompat;

    invoke-direct {v0, p0}, Landroidx/core/app/NotificationManagerCompat;-><init>(Landroid/content/Context;)V

    :goto_0
    move-object p0, v0

    goto/16 :goto_1

    :pswitch_c
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_d
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    const-class v0, Landroid/content/ClipboardManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ClipboardManager;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_e
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    const-class v0, Landroid/view/textclassifier/TextClassificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/textclassifier/TextClassificationManager;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_f
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_10
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->unfoldTransitionModule:Lcom/android/systemui/unfold/UnfoldTransitionModule;

    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providesFoldStateLoggingProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/unfold/UnfoldTransitionModule$providesFoldStateLogger$1;->INSTANCE:Lcom/android/systemui/unfold/UnfoldTransitionModule$providesFoldStateLogger$1;

    invoke-virtual {v0, p0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    goto/16 :goto_1

    :pswitch_11
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->unfoldTransitionModule:Lcom/android/systemui/unfold/UnfoldTransitionModule;

    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->resourceUnfoldTransitionConfigProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig;

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideFoldStateProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v0, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig;->isHingeAngleEnabled$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/android/systemui/unfold/FoldStateLoggingProviderImpl;

    check-cast v1, Ldagger/internal/DoubleCheck;

    invoke-virtual {v1}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/unfold/updates/FoldStateProvider;

    new-instance v1, Lcom/android/systemui/util/time/SystemClockImpl;

    invoke-direct {v1}, Lcom/android/systemui/util/time/SystemClockImpl;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/unfold/FoldStateLoggingProviderImpl;-><init>(Lcom/android/systemui/unfold/updates/FoldStateProvider;Lcom/android/systemui/util/time/SystemClockImpl;)V

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    goto :goto_1

    :pswitch_12
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    const-class v0, Landroid/safetycenter/SafetyCenterManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/safetycenter/SafetyCenterManager;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_13
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    const-class v0, Landroid/content/om/OverlayManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/om/OverlayManager;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_14
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    const-class v0, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraManager;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_15
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    const-class v0, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/ColorDisplayManager;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    :goto_1
    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(I)V

    throw p0

    :cond_3
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_1

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(I)V

    throw p0

    :pswitch_16
    new-instance p0, Lcom/android/dream/lowlight/LowLightTransitionCoordinator;

    invoke-direct {p0}, Lcom/android/dream/lowlight/LowLightTransitionCoordinator;-><init>()V

    goto/16 :goto_7

    :pswitch_17
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_18
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/UiModeManager;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_19
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_1a
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    const-class v0, Landroid/telecom/TelecomManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    goto/16 :goto_7

    :pswitch_1b
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    const-class v0, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothManager;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_1c
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideBluetoothManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    goto/16 :goto_7

    :pswitch_1d
    new-instance p0, Lcom/android/systemui/plugins/PluginDependencyProvider;

    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providesPluginManagerProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/plugins/PluginDependencyProvider;-><init>(Ldagger/Lazy;)V

    goto/16 :goto_7

    :pswitch_1e
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    const-class v0, Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/CaptioningManager;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_1f
    const-string p0, "audio"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_20
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/role/RoleManager;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_21
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    const-class v0, Landroid/net/NetworkScoreManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/NetworkScoreManager;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_22
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    goto/16 :goto_7

    :pswitch_23
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_24
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    const-class v0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CarrierConfigManager;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_25
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    const-class v0, Landroid/app/StatsManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/StatsManager;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_26
    sget-object p0, Lcom/android/systemui/shared/system/PackageManagerWrapper;->sInstance:Lcom/android/systemui/shared/system/PackageManagerWrapper;

    goto/16 :goto_7

    :pswitch_27
    const-string p0, "batterystats"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_28
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    const-class v0, Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorPrivacyManager;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_29
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_2a
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    const-class v0, Landroid/hardware/input/InputManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/InputManager;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_2b
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    const-class v0, Landroid/os/PowerExemptionManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerExemptionManager;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_2c
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_2d
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideFaceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceManager;

    iget-object v2, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providesFingerprintManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_4

    if-nez v2, :cond_4

    goto/16 :goto_2

    :cond_4
    const-class v0, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/hardware/biometrics/BiometricManager;

    goto/16 :goto_2

    :pswitch_2e
    invoke-static {}, Landroid/view/CrossWindowBlurListeners;->getInstance()Landroid/view/CrossWindowBlurListeners;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_2f
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_30
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    const-class v0, Landroid/app/trust/TrustManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/trust/TrustManager;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_31
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_32
    new-instance p0, Lcom/android/systemui/unfold/progress/UnfoldTransitionProgressForwarder;

    invoke-direct {p0}, Lcom/android/systemui/unfold/progress/UnfoldTransitionProgressForwarder;-><init>()V

    goto/16 :goto_7

    :pswitch_33
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->unfoldSharedInternalModule:Lcom/android/systemui/unfold/UnfoldSharedInternalModule;

    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->resourceUnfoldTransitionConfigProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig;

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->unfoldTransitionProgressForwarderProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v0, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig;->isEnabled$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    goto/16 :goto_7

    :cond_5
    invoke-virtual {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    goto/16 :goto_7

    :pswitch_34
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_35
    const-string p0, "dreams"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_36
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    const-class v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ShortcutManager;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_37
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->frameworkServicesModule:Lcom/android/systemui/dagger/FrameworkServicesModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "notification"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_38
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/plugins/PluginsModule_ProvidesPrivilegedPluginsFactory;->providesPrivilegedPlugins(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-static {}, Lcom/android/systemui/plugins/PluginsModule_ProvidesPluginDebugFactory;->providesPluginDebug()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/android/systemui/plugins/PluginsModule_ProvidesPluginInstanceFactoryFactory;->providesPluginInstanceFactory(Ljava/util/List;Z)Lcom/android/systemui/shared/plugins/PluginInstance$Factory;

    move-result-object p0

    goto/16 :goto_7

    :pswitch_39
    new-instance p0, Lcom/android/systemui/plugins/PluginEnablerImpl;

    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providePackageManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManager;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/plugins/PluginEnablerImpl;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    goto/16 :goto_7

    :pswitch_3a
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_3b
    new-instance p0, Lcom/android/systemui/util/concurrency/ThreadFactoryImpl;

    invoke-direct {p0}, Lcom/android/systemui/util/concurrency/ThreadFactoryImpl;-><init>()V

    invoke-static {p0}, Lcom/android/systemui/plugins/PluginsModule_ProvidesPluginExecutorFactory;->providesPluginExecutor(Lcom/android/systemui/util/concurrency/ThreadFactory;)Ljava/util/concurrent/Executor;

    move-result-object p0

    goto/16 :goto_7

    :pswitch_3c
    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providePackageManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/content/pm/PackageManager;

    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMainExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Executor;

    iget-object v3, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providesPluginExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    iget-object v4, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideNotificationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    iget-object v5, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->pluginEnablerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/shared/plugins/PluginEnabler;

    iget-object v6, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/plugins/PluginsModule_ProvidesPrivilegedPluginsFactory;->providesPrivilegedPlugins(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    iget-object v2, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providesPluginInstanceFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/android/systemui/shared/plugins/PluginInstance$Factory;

    move-object v2, p0

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/plugins/PluginsModule_ProvidePluginInstanceManagerFactoryFactory;->providePluginInstanceManagerFactory(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/app/NotificationManager;Lcom/android/systemui/shared/plugins/PluginEnabler;Ljava/util/List;Lcom/android/systemui/shared/plugins/PluginInstance$Factory;)Lcom/android/systemui/shared/plugins/PluginActionManager$Factory;

    move-result-object p0

    goto/16 :goto_7

    :pswitch_3d
    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providePluginInstanceManagerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/android/systemui/shared/plugins/PluginActionManager$Factory;

    invoke-static {}, Lcom/android/systemui/plugins/PluginsModule_ProvidesPluginDebugFactory;->providesPluginDebug()Z

    move-result p0

    iget-object v3, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->uncaughtExceptionPreHandlerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;

    iget-object v4, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->pluginEnablerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/shared/plugins/PluginEnabler;

    iget-object v2, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/plugins/PluginsModule_ProvidesPluginPrefsFactory;->providesPluginPrefs(Landroid/content/Context;)Lcom/android/systemui/shared/plugins/PluginPrefs;

    move-result-object v5

    invoke-static {v2}, Lcom/android/systemui/plugins/PluginsModule_ProvidesPrivilegedPluginsFactory;->providesPrivilegedPlugins(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    move v2, p0

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/plugins/PluginsModule_ProvidesPluginManagerFactory;->providesPluginManager(Landroid/content/Context;Lcom/android/systemui/shared/plugins/PluginActionManager$Factory;ZLcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;Lcom/android/systemui/shared/plugins/PluginEnabler;Lcom/android/systemui/shared/plugins/PluginPrefs;Ljava/util/List;)Lcom/android/systemui/plugins/PluginManager;

    move-result-object p0

    goto/16 :goto_7

    :pswitch_3e
    new-instance p0, Lcom/google/android/systemui/assist/OpaEnabledSettings;

    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/google/android/systemui/assist/OpaEnabledSettings;-><init>(Landroid/content/Context;)V

    goto/16 :goto_7

    :pswitch_3f
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    const-class v0, Landroid/os/Vibrator;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    goto/16 :goto_7

    :pswitch_40
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_41
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    const-class v0, Landroid/app/smartspace/SmartspaceManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/smartspace/SmartspaceManager;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_42
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->androidInternalsModule:Lcom/android/systemui/dagger/AndroidInternalsModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    goto/16 :goto_7

    :pswitch_43
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->unfoldTransitionModule:Lcom/android/systemui/unfold/UnfoldTransitionModule;

    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideNaturalRotationProgressProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/unfold/UnfoldTransitionModule$providesFoldStateLogger$1;->INSTANCE$1:Lcom/android/systemui/unfold/UnfoldTransitionModule$providesFoldStateLogger$1;

    invoke-virtual {v0, p0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    goto/16 :goto_7

    :pswitch_44
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->unfoldTransitionModule:Lcom/android/systemui/unfold/UnfoldTransitionModule;

    invoke-virtual {v2}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->rotationChangeProvider()Lcom/android/systemui/unfold/updates/RotationChangeProvider;

    move-result-object v0

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->unfoldTransitionProgressProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/systemui/unfold/UnfoldTransitionModule$provideUnfoldOnlyProvider$1;

    iget-object v2, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    invoke-direct {p0, v3, v2, v0}, Lcom/android/systemui/unfold/UnfoldTransitionModule$provideUnfoldOnlyProvider$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    goto/16 :goto_7

    :pswitch_45
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_46
    new-instance p0, Lcom/android/systemui/util/wrapper/BuildInfo;

    invoke-direct {p0}, Lcom/android/systemui/util/wrapper/BuildInfo;-><init>()V

    goto/16 :goto_7

    :pswitch_47
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_48
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->globalModule:Lcom/android/systemui/dagger/GlobalModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_49
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->unfoldTransitionModule:Lcom/android/systemui/unfold/UnfoldTransitionModule;

    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideDeviceStateManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/devicestate/DeviceStateManager;

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideApplicationContextProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    invoke-virtual {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMainExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    invoke-direct {p0, v1}, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2, p0}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    goto/16 :goto_7

    :pswitch_4a
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->globalModule:Lcom/android/systemui/dagger/GlobalModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    goto/16 :goto_7

    :pswitch_4b
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->frameworkServicesModule:Lcom/android/systemui/dagger/FrameworkServicesModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_4c
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.hardware.biometrics.face"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-class v0, Landroid/hardware/face/FaceManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/hardware/face/FaceManager;

    goto :goto_2

    :pswitch_4d
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.hardware.fingerprint"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    :cond_6
    :goto_2
    move-object p0, v1

    goto/16 :goto_7

    :pswitch_4e
    new-instance p0, Lcom/android/systemui/util/concurrency/ExecutionImpl;

    invoke-direct {p0}, Lcom/android/systemui/util/concurrency/ExecutionImpl;-><init>()V

    goto/16 :goto_7

    :pswitch_4f
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->androidInternalsModule:Lcom/android/systemui/dagger/AndroidInternalsModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    goto/16 :goto_7

    :pswitch_50
    new-instance p0, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;

    invoke-direct {p0}, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;-><init>()V

    goto/16 :goto_7

    :pswitch_51
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->frameworkServicesModule:Lcom/android/systemui/dagger/FrameworkServicesModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_52
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMainLooperProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    invoke-virtual {p0}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Looper;

    new-instance v0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/concurrency/ExecutorImpl;-><init>(Landroid/os/Looper;)V

    goto/16 :goto_4

    :pswitch_53
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_54
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_55
    const-string p0, "wallpaper"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object p0

    goto/16 :goto_7

    :pswitch_56
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInUserTestHarness()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_7

    :pswitch_57
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_58
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_59
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p0

    const/16 v0, -0x100

    const-wide/high16 v1, 0x3fe8000000000000L    # 0.75

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/jank/InteractionJankMonitor;->configDebugOverlay(ID)V

    goto/16 :goto_7

    :pswitch_5a
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    const-class v0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/LauncherApps;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_5b
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_5c
    const-string p0, "statusbar"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_5d
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_5e
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_5f
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->unfoldTransitionModule:Lcom/android/systemui/unfold/UnfoldTransitionModule;

    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->deviceStateManagerFoldProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/unfold/updates/FoldProvider;

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMainExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    iget-object v2, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->unfoldTransitionProgressProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/systemui/unfold/UnfoldTransitionModule$provideUnfoldOnlyProvider$1;

    const/4 v3, 0x0

    invoke-direct {p0, v3, v0, v1}, Lcom/android/systemui/unfold/UnfoldTransitionModule$provideUnfoldOnlyProvider$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    goto/16 :goto_7

    :pswitch_60
    new-instance p0, Lcom/android/systemui/unfold/progress/FixedTimingTransitionProgressProvider;

    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideFoldStateProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/unfold/updates/FoldStateProvider;

    invoke-direct {p0, v0}, Lcom/android/systemui/unfold/progress/FixedTimingTransitionProgressProvider;-><init>(Lcom/android/systemui/unfold/updates/FoldStateProvider;)V

    goto/16 :goto_7

    :pswitch_61
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_62
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_63
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMainLooperProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    invoke-virtual {p0}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Looper;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto/16 :goto_4

    :pswitch_64
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_65
    new-instance p0, Lcom/android/systemui/unfold/util/UnfoldKeyguardVisibilityManagerImpl;

    invoke-direct {p0}, Lcom/android/systemui/unfold/util/UnfoldKeyguardVisibilityManagerImpl;-><init>()V

    goto/16 :goto_7

    :pswitch_66
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->unfoldSharedModule:Lcom/android/systemui/unfold/UnfoldSharedModule;

    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->unfoldKeyguardVisibilityManagerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/unfold/util/UnfoldKeyguardVisibilityManagerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_4

    :pswitch_67
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_68
    new-instance p0, Lcom/android/systemui/unfold/system/ActivityManagerActivityTypeProvider;

    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideActivityManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-direct {p0, v0}, Lcom/android/systemui/unfold/system/ActivityManagerActivityTypeProvider;-><init>(Landroid/app/ActivityManager;)V

    goto/16 :goto_7

    :pswitch_69
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    const-class v0, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_6a
    new-instance p0, Lcom/android/systemui/unfold/system/DeviceStateManagerFoldProvider;

    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideDeviceStateManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/devicestate/DeviceStateManager;

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/unfold/system/DeviceStateManagerFoldProvider;-><init>(Landroid/hardware/devicestate/DeviceStateManager;Landroid/content/Context;)V

    goto/16 :goto_7

    :pswitch_6b
    new-instance p0, Lcom/android/systemui/dump/DumpManager;

    invoke-direct {p0}, Lcom/android/systemui/dump/DumpManager;-><init>()V

    goto/16 :goto_7

    :pswitch_6c
    new-instance p0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/dump/DumpManager;

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;-><init>(Lcom/android/systemui/dump/DumpManager;)V

    goto/16 :goto_7

    :pswitch_6d
    new-instance p0, Lcom/android/systemui/keyguard/LifecycleScreenStatusProvider;

    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->screenLifecycleProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/LifecycleScreenStatusProvider;-><init>(Lcom/android/systemui/keyguard/ScreenLifecycle;)V

    goto/16 :goto_7

    :pswitch_6e
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_6f
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    const-class v0, Landroid/hardware/SensorManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_70
    new-instance p0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;

    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->providesSensorManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideUiBackgroundExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;-><init>(Landroid/hardware/SensorManager;Ljava/util/concurrent/Executor;)V

    goto/16 :goto_7

    :pswitch_71
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->unfoldSharedModule:Lcom/android/systemui/unfold/UnfoldSharedModule;

    new-instance v0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->resourceUnfoldTransitionConfigProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig;

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->resourceUnfoldTransitionConfigProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig;

    iget-object v3, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->hingeSensorAngleProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    iget-object v5, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->unfoldSharedInternalModule:Lcom/android/systemui/unfold/UnfoldSharedInternalModule;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig;->isHingeAngleEnabled$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v3}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;

    goto :goto_3

    :cond_7
    sget-object v1, Lcom/android/systemui/unfold/updates/hinge/EmptyHingeAngleProvider;->INSTANCE:Lcom/android/systemui/unfold/updates/hinge/EmptyHingeAngleProvider;

    :goto_3
    move-object v5, v1

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->lifecycleScreenStatusProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/systemui/keyguard/LifecycleScreenStatusProvider;

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->unfoldTransitionModule:Lcom/android/systemui/unfold/UnfoldTransitionModule;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->deviceStateManagerFoldProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/systemui/unfold/updates/FoldProvider;

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->activityManagerActivityTypeProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/systemui/unfold/system/ActivityManagerActivityTypeProvider;

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->unfoldKeyguardVisibilityProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/systemui/unfold/util/UnfoldKeyguardVisibilityManagerImpl;

    invoke-virtual {v2}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->rotationChangeProvider()Lcom/android/systemui/unfold/updates/RotationChangeProvider;

    move-result-object v10

    iget-object v11, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMainExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/util/concurrent/Executor;

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMainHandlerProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    invoke-virtual {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/os/Handler;

    move-object v3, v0

    invoke-direct/range {v3 .. v13}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;-><init>(Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig;Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;Lcom/android/systemui/keyguard/LifecycleScreenStatusProvider;Lcom/android/systemui/unfold/updates/FoldProvider;Lcom/android/systemui/unfold/system/ActivityManagerActivityTypeProvider;Lcom/android/systemui/unfold/util/UnfoldKeyguardVisibilityManagerImpl;Lcom/android/systemui/unfold/updates/RotationChangeProvider;Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/os/Handler;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_4

    :pswitch_72
    new-instance p0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;

    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideFoldStateProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/unfold/updates/FoldStateProvider;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;-><init>(Landroid/content/Context;Lcom/android/systemui/unfold/updates/FoldStateProvider;)V

    goto/16 :goto_7

    :pswitch_73
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_74
    new-instance v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider$1;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;)V

    :goto_4
    move-object p0, v0

    goto/16 :goto_7

    :pswitch_75
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->unfoldSharedInternalModule:Lcom/android/systemui/unfold/UnfoldSharedInternalModule;

    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->resourceUnfoldTransitionConfigProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig;

    iget-object v1, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->factoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider$1;

    new-instance v3, Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;

    iget-object v4, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->unfoldTransitionModule:Lcom/android/systemui/unfold/UnfoldTransitionModule;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3}, Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;-><init>()V

    iget-object v4, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->physicsBasedUnfoldTransitionProgressProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    iget-object v2, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->fixedTimingTransitionProgressProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v0, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig;->isEnabled$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_8

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    goto/16 :goto_7

    :cond_8
    iget-object p0, v0, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig;->isHingeAngleEnabled$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-virtual {v4}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;->get()Ljava/lang/Object;

    move-result-object p0

    goto :goto_5

    :cond_9
    invoke-virtual {v2}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;->get()Ljava/lang/Object;

    move-result-object p0

    :goto_5
    check-cast p0, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    new-instance v0, Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider;

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider$1;->this$0:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SwitchingProvider;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideContentResolverProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider;-><init>(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;Landroid/content/ContentResolver;)V

    iget-object p0, v0, Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider;->scopedUnfoldTransitionProgressProvider:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    iget-object p0, p0, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->listeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    goto :goto_7

    :pswitch_76
    new-instance p0, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig;

    invoke-direct {p0}, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig;-><init>()V

    goto :goto_7

    :pswitch_77
    iget-object p0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->unfoldTransitionModule:Lcom/android/systemui/unfold/UnfoldTransitionModule;

    iget-object v0, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->resourceUnfoldTransitionConfigProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig;

    iget-object v3, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->unfoldTransitionProgressProvider:Ljavax/inject/Provider;

    iget-object v2, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideUnfoldOnlyProvider:Ljavax/inject/Provider;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v0, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig;->isEnabled$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_b

    sget-boolean p0, Lcom/android/systemui/unfold/UnfoldTransitionModuleKt;->ENABLE_FOLD_TASK_ANIMATIONS:Z

    if-eqz p0, :cond_a

    goto :goto_6

    :cond_a
    move-object v3, v2

    goto :goto_6

    :cond_b
    move-object v3, v1

    :goto_6
    if-eqz v3, :cond_c

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    if-eqz p0, :cond_c

    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    if-eqz p0, :cond_c

    new-instance v0, Lcom/android/systemui/unfold/UnfoldProgressProvider;

    invoke-direct {v0, p0}, Lcom/android/systemui/unfold/UnfoldProgressProvider;-><init>(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;)V

    goto/16 :goto_4

    :cond_c
    sget-object p0, Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;->NO_PROVIDER:Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider$1;

    goto :goto_7

    :pswitch_78
    new-instance p0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {p0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    goto :goto_7

    :pswitch_79
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    :goto_7
    return-object p0

    :pswitch_data_0
    .packed-switch 0x64
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

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
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
        :pswitch_22
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
    .end packed-switch
.end method
