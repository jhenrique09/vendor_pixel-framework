.class public final Lcom/google/android/systemui/power/batteryhealth/HealthService;
.super Landroid/app/Service;
.source ""


# static fields
.field public static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final healthDebugEnabled:Z

.field public static final supportedCallers:Ljava/util/Set;


# instance fields
.field public final binder:Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1;

.field public final context:Landroid/content/Context;

.field public final healthFeatureEnabled:Z

.field public final healthListeners:Landroid/os/RemoteCallbackList;

.field public final healthManager:Lcom/google/android/systemui/power/batteryhealth/HealthManager;

.field public final mainScope:Lkotlinx/coroutines/internal/ContextScope;

.field public final registeredListenerNum$delegate:Lcom/google/android/systemui/power/batteryhealth/HealthService$special$$inlined$observable$1;

.field public subscribeJob:Lkotlinx/coroutines/Job;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v1, Lcom/google/android/systemui/power/batteryhealth/HealthService;

    const-string v2, "getRegisteredListenerNum()I"

    const-string v3, "registeredListenerNum"

    invoke-direct {v0, v1, v3, v2}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {v0}, [Lkotlin/reflect/KProperty;

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/power/batteryhealth/HealthService;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const-string v0, "com.android.systemui"

    const-string v1, "com.google.android.apps.diagnosticstool"

    const-string v2, "com.android.settings"

    const-string v3, "com.google.android.apps.pixel.support"

    const-string v4, "com.google.android.settings.intelligence"

    filled-new-array {v2, v0, v1, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/power/batteryhealth/HealthService;->supportedCallers:Ljava/util/Set;

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/google/android/systemui/power/batteryhealth/HealthService;->healthDebugEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/power/batteryhealth/HealthManager;Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService;->healthManager:Lcom/google/android/systemui/power/batteryhealth/HealthManager;

    const p1, 0x7f050008

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService;->healthFeatureEnabled:Z

    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService;->healthListeners:Landroid/os/RemoteCallbackList;

    invoke-static {}, Lkotlinx/coroutines/CoroutineScopeKt;->MainScope()Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService;->mainScope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance p1, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1;-><init>(Lcom/google/android/systemui/power/batteryhealth/HealthService;)V

    iput-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService;->binder:Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p2, Lcom/google/android/systemui/power/batteryhealth/HealthService$special$$inlined$observable$1;

    invoke-direct {p2, p1, p0}, Lcom/google/android/systemui/power/batteryhealth/HealthService$special$$inlined$observable$1;-><init>(Ljava/lang/Object;Lcom/google/android/systemui/power/batteryhealth/HealthService;)V

    iput-object p2, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService;->registeredListenerNum$delegate:Lcom/google/android/systemui/power/batteryhealth/HealthService$special$$inlined$observable$1;

    return-void
.end method

.method public static final access$ensureSupportedCallers(Lcom/google/android/systemui/power/batteryhealth/HealthService;)[Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "ensureSupportedCallers: pkg="

    const-string v2, "HealthService"

    invoke-static {v1, v0, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    array-length v1, p0

    move v2, v0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_1

    aget-object v4, p0, v2

    sget-object v5, Lcom/google/android/systemui/power/batteryhealth/HealthService;->supportedCallers:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    if-nez v1, :cond_2

    move v0, v3

    :cond_2
    if-nez v0, :cond_3

    return-object p0

    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "ensureSupportedCallers: "

    invoke-static {v1, p0}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final access$notifyListeners(Lcom/google/android/systemui/power/batteryhealth/HealthService;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/systemui/power/batteryhealth/HealthService$notifyListeners$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/systemui/power/batteryhealth/HealthService$notifyListeners$2;-><init>(Lcom/google/android/systemui/power/batteryhealth/HealthService;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, p2}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    return-object p0
.end method

.method public static synthetic getHealthListeners$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getSubscribeJob$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string p1, "HealthService"

    const-string v0, "HealthService bound"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService;->healthFeatureEnabled:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService;->binder:Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1;

    return-object p0

    :cond_0
    new-instance p0, Landroid/os/Binder;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-object p0
.end method

.method public final onCreate()V
    .locals 10

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget-boolean v0, Lcom/google/android/systemui/power/batteryhealth/HealthService;->healthDebugEnabled:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService;->healthManager:Lcom/google/android/systemui/power/batteryhealth/HealthManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager;->healthDebugEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "HealthManager"

    const-string v1, "register healthDebugReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v3, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager;->healthDebugReceiver:Lcom/google/android/systemui/power/batteryhealth/HealthManager$healthDebugReceiver$1;

    new-instance v4, Landroid/content/IntentFilter;

    const-string p0, "com.google.android.systemui.BATTERY_HEALTH_DEBUG"

    invoke-direct {v4, p0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3c

    invoke-static/range {v2 .. v9}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    sget-boolean v0, Lcom/google/android/systemui/power/batteryhealth/HealthService;->healthDebugEnabled:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService;->healthManager:Lcom/google/android/systemui/power/batteryhealth/HealthManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager;->healthDebugEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "HealthManager"

    const-string v1, "unregister healthDebugReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager;->healthDebugReceiver:Lcom/google/android/systemui/power/batteryhealth/HealthManager$healthDebugReceiver$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    :goto_0
    return-void
.end method
