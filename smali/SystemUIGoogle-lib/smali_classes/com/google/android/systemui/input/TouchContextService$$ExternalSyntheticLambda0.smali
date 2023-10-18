.class public final synthetic Lcom/google/android/systemui/input/TouchContextService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/input/TouchContextService;

.field public final synthetic f$1:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/input/TouchContextService;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/input/TouchContextService$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/input/TouchContextService;

    iput-object p2, p0, Lcom/google/android/systemui/input/TouchContextService$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/input/TouchContextService$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/input/TouchContextService;

    iget-object p0, p0, Lcom/google/android/systemui/input/TouchContextService$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    iget-object v1, v0, Lcom/google/android/systemui/input/TouchContextService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/google/android/systemui/input/TouchContextService;->mTouchContextService:Lcom/google/input/ITouchContextService;

    check-cast v2, Lcom/google/input/ITouchContextService$Stub$Proxy;

    iget-object v2, v2, Lcom/google/input/ITouchContextService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    if-ne v2, p0, :cond_0

    const/4 p0, 0x0

    iput-object p0, v0, Lcom/google/android/systemui/input/TouchContextService;->mTouchContextService:Lcom/google/input/ITouchContextService;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object p0, v0, Lcom/google/android/systemui/input/TouchContextService;->mPropertiesLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_1
    iget-object v1, v0, Lcom/google/android/systemui/input/TouchContextService;->mActivePropertyNamespaces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Lcom/google/android/systemui/input/TouchContextService;->mPropertiesChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, v0, Lcom/google/android/systemui/input/TouchContextService;->mPropertiesChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    invoke-static {v2}, Landroid/provider/DeviceConfig;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/google/android/systemui/input/TouchContextService;->mPropertiesChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, v0, Lcom/google/android/systemui/input/TouchContextService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, v0, Lcom/google/android/systemui/input/TouchContextService;->mDisplayListener:Lcom/google/android/systemui/input/TouchContextService$3;

    invoke-virtual {p0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    iget-object p0, v0, Lcom/google/android/systemui/input/TouchContextService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v0, v0, Lcom/google/android/systemui/input/TouchContextService;->mAudioModeListener:Lcom/google/android/systemui/input/TouchContextService$4;

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->removeOnModeChangedListener(Landroid/media/AudioManager$OnModeChangedListener;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method
