.class public final Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;
.super Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;
.source ""

# interfaces
.implements Lcom/google/android/systemui/reversecharging/ReverseChargingController$ReverseChargingChangeCallback;


# static fields
.field public static final DEBUG:Z

.field public static final IS_EBS_ENABLED_OBSERVABLE_URI:Landroid/net/Uri;


# instance fields
.field protected final mContentObserver:Landroid/database/ContentObserver;

.field public final mContentResolverProvider:Lcom/android/systemui/settings/UserTracker;

.field public mExtremeSaver:Z

.field public mName:Ljava/lang/String;

.field public mReverse:Z

.field public final mReverseChargingController:Lcom/google/android/systemui/reversecharging/ReverseChargingController;

.field public mRtxLevel:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.google.android.flipendo.api"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "get_flipendo_state"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;->IS_EBS_ENABLED_OBSERVABLE_URI:Landroid/net/Uri;

    const-string v0, "BatteryControllerGoogle"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/power/EnhancedEstimates;Landroid/os/PowerManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/dump/DumpManager;Landroid/os/Handler;Landroid/os/Handler;Lcom/android/systemui/settings/UserTracker;Lcom/google/android/systemui/reversecharging/ReverseChargingController;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/power/EnhancedEstimates;Landroid/os/PowerManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/dump/DumpManager;Landroid/os/Handler;Landroid/os/Handler;)V

    iput-object p10, p0, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;->mReverseChargingController:Lcom/google/android/systemui/reversecharging/ReverseChargingController;

    iput-object p9, p0, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;->mContentResolverProvider:Lcom/android/systemui/settings/UserTracker;

    new-instance p1, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle$1;

    invoke-direct {p1, p0, p8}, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle$1;-><init>(Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    iget-boolean v0, p0, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;->mReverse:Z

    iget v1, p0, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;->mRtxLevel:I

    iget-object v2, p0, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;->mName:Ljava/lang/String;

    invoke-interface {p1, v1, v2, v0}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onReverseChanged(ILjava/lang/String;Z)V

    iget-boolean p0, p0, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;->mExtremeSaver:Z

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onExtremeBatterySaverChanged(Z)V

    return-void
.end method

.method public final bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;->addCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string p2, "  mReverse="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;->mReverse:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mExtremeSaver="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;->mExtremeSaver:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public final init()V
    .locals 5

    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->init()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;->mReverse:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;->mRtxLevel:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;->mName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;->mReverseChargingController:Lcom/google/android/systemui/reversecharging/ReverseChargingController;

    invoke-virtual {v2, p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->init(Lcom/android/systemui/statusbar/policy/BatteryController;)V

    iget-object v2, p0, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;->mReverseChargingController:Lcom/google/android/systemui/reversecharging/ReverseChargingController;

    invoke-virtual {v2, p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->addCallback(Lcom/google/android/systemui/reversecharging/ReverseChargingController$ReverseChargingChangeCallback;)V

    :try_start_0
    iget-object v2, p0, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;->mContentResolverProvider:Lcom/android/systemui/settings/UserTracker;

    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;->IS_EBS_ENABLED_OBSERVABLE_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0, v0, v3}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "BatteryControllerGoogle"

    const-string v1, "Couldn\'t register to observe provider"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final isReverseOn()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;->mReverse:Z

    return p0
.end method

.method public final isReverseSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;->mReverseChargingController:Lcom/google/android/systemui/reversecharging/ReverseChargingController;

    invoke-virtual {p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->isReverseSupported()Z

    move-result p0

    return p0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;->mReverseChargingController:Lcom/google/android/systemui/reversecharging/ReverseChargingController;

    invoke-virtual {p0, p2}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->handleIntentForReverseCharging(Landroid/content/Intent;)V

    return-void
.end method

.method public final onReverseChargingChanged(ILjava/lang/String;Z)V
    .locals 5

    iput-boolean p3, p0, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;->mReverse:Z

    iput p1, p0, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;->mRtxLevel:I

    iput-object p2, p0, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;->mName:Ljava/lang/String;

    sget-boolean v0, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "BatteryControllerGoogle"

    const-string v2, "onReverseChargingChanged(): rtx="

    const-string v3, " level="

    const-string v4, " name="

    invoke-static {v2, p3, v3, p1, v4}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " this="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_0
    new-instance p2, Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    :goto_0
    if-ge v1, p3, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    iget-boolean v2, p0, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;->mReverse:Z

    iget v3, p0, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;->mRtxLevel:I

    iget-object v4, p0, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;->mName:Ljava/lang/String;

    invoke-interface {v0, v3, v4, v2}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onReverseChanged(ILjava/lang/String;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setReverseState(Z)V
    .locals 2

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;->mReverseChargingController:Lcom/google/android/systemui/reversecharging/ReverseChargingController;

    invoke-virtual {p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->isReverseSupported()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "setReverseState(): rtx="

    const-string v1, "ReverseChargingControl"

    invoke-static {v0, p1, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStopReverseAtAcUnplug:Z

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->setReverseStateInternal(IZ)V

    :goto_0
    return-void
.end method
