.class public final Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle$1;
.super Landroid/database/ContentObserver;
.source ""


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle$1;->this$0:Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 3

    sget-boolean p1, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "BatteryControllerGoogle"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Change in EBS value "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle$1;->this$0:Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;

    iget-object p1, p0, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;->mContentResolverProvider:Lcom/android/systemui/settings/UserTracker;

    check-cast p1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/systemui/power/PowerUtils;->isFlipendoEnabled(Landroid/content/ContentResolver;)Z

    move-result p1

    iget-boolean p2, p0, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;->mExtremeSaver:Z

    if-ne p1, p2, :cond_1

    goto :goto_1

    :cond_1
    iput-boolean p1, p0, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;->mExtremeSaver:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    iget-boolean v2, p0, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;->mExtremeSaver:Z

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onExtremeBatterySaverChanged(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    monitor-exit p1

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
