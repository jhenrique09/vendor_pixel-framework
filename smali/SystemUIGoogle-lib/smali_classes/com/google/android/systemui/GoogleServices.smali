.class public final Lcom/google/android/systemui/GoogleServices;
.super Lcom/android/systemui/VendorServices;
.source ""


# instance fields
.field public final mAutorotateDataService:Lcom/google/android/systemui/autorotate/AutorotateDataService;

.field public final mColumbusStarter:Ldagger/Lazy;

.field public final mContext:Landroid/content/Context;

.field public final mServiceConfigurationGoogle:Ldagger/Lazy;

.field public final mServices:Ljava/util/ArrayList;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldagger/Lazy;Lcom/android/internal/logging/UiEventLogger;Ldagger/Lazy;Lcom/google/android/systemui/autorotate/AutorotateDataService;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/VendorServices;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/GoogleServices;->mServices:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/google/android/systemui/GoogleServices;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/systemui/GoogleServices;->mServiceConfigurationGoogle:Ldagger/Lazy;

    iput-object p3, p0, Lcom/google/android/systemui/GoogleServices;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iput-object p4, p0, Lcom/google/android/systemui/GoogleServices;->mColumbusStarter:Ldagger/Lazy;

    iput-object p5, p0, Lcom/google/android/systemui/GoogleServices;->mAutorotateDataService:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    return-void
.end method


# virtual methods
.method public final addService(Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/GoogleServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/GoogleServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/systemui/Dumpable;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/Dumpable;

    invoke-interface {v1, p1, p2}, Lcom/android/systemui/Dumpable;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final start()V
    .locals 5

    new-instance v0, Lcom/google/android/systemui/DisplayCutoutEmulationAdapter;

    iget-object v1, p0, Lcom/google/android/systemui/GoogleServices;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/systemui/DisplayCutoutEmulationAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/GoogleServices;->addService(Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/systemui/coversheet/CoversheetService;

    invoke-direct {v0, v1}, Lcom/google/android/systemui/coversheet/CoversheetService;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/GoogleServices;->addService(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/systemui/GoogleServices;->mAutorotateDataService:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    iget-object v2, v0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    invoke-virtual {v0}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->readFlagsToControlSensorLogging()V

    new-instance v2, Lcom/google/android/systemui/autorotate/AutorotateDataService$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/google/android/systemui/autorotate/AutorotateDataService$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/autorotate/AutorotateDataService;)V

    iget-object v3, v0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mDeviceConfig:Lcom/android/systemui/util/DeviceConfigProxy;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "window_manager"

    iget-object v4, v0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-static {v3, v4, v2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/GoogleServices;->addService(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.hardware.context_hub"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.hardware.sensor.assist"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/systemui/elmyra/ElmyraService;

    iget-object v2, p0, Lcom/google/android/systemui/GoogleServices;->mServiceConfigurationGoogle:Ldagger/Lazy;

    check-cast v2, Ldagger/internal/DoubleCheck;

    invoke-virtual {v2}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle;

    iget-object v3, p0, Lcom/google/android/systemui/GoogleServices;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/systemui/elmyra/ElmyraService;-><init>(Landroid/content/Context;Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle;Lcom/android/internal/logging/UiEventLogger;)V

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/GoogleServices;->addService(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.google.android.feature.QUICK_TAP"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/GoogleServices;->mColumbusStarter:Ldagger/Lazy;

    check-cast v0, Ldagger/internal/DoubleCheck;

    invoke-virtual {v0}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/GoogleServices;->addService(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f050037

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;

    invoke-direct {v0, v1}, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/GoogleServices;->addService(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f05004d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/systemui/input/TouchContextService;

    invoke-direct {v0, v1}, Lcom/google/android/systemui/input/TouchContextService;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/GoogleServices;->addService(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method
