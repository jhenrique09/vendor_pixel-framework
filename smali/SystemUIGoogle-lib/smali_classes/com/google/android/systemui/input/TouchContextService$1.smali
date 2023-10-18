.class public final Lcom/google/android/systemui/input/TouchContextService$1;
.super Landroid/os/IServiceCallback$Stub;
.source ""


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/input/TouchContextService;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/input/TouchContextService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/input/TouchContextService$1;->this$0:Lcom/google/android/systemui/input/TouchContextService;

    invoke-direct {p0}, Landroid/os/IServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRegistration(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 3

    if-nez p2, :cond_0

    const-string p0, "TouchContextService.java"

    const-string p1, "ServiceCallback.onRegistration: binder is `null`."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/systemui/input/TouchContextService;->INTERFACE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "TouchContextService.java"

    const-string p2, "onServiceRegistration name mismatch \u2013 received name: \""

    const-string v1, "\", expected name: \""

    const-string v2, "\""

    invoke-static {p2, p1, v1, v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p0, p0, Lcom/google/android/systemui/input/TouchContextService$1;->this$0:Lcom/google/android/systemui/input/TouchContextService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    new-instance p1, Lcom/google/android/systemui/input/TouchContextService$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/input/TouchContextService$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/input/TouchContextService;Landroid/os/IBinder;)V

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object p1, p0, Lcom/google/android/systemui/input/TouchContextService;->mServiceLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    sget-object v0, Lcom/google/input/ITouchContextService;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/google/input/ITouchContextService;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/google/input/ITouchContextService;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/input/ITouchContextService$Stub$Proxy;

    invoke-direct {v0, p2}, Lcom/google/input/ITouchContextService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    :goto_0
    iput-object v0, p0, Lcom/google/android/systemui/input/TouchContextService;->mTouchContextService:Lcom/google/input/ITouchContextService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p2, p0, Lcom/google/android/systemui/input/TouchContextService;->mPropertyNamespaceListener:Lcom/google/android/systemui/input/TouchContextService$2;

    check-cast v0, Lcom/google/input/ITouchContextService$Stub$Proxy;

    invoke-virtual {v0, p2}, Lcom/google/input/ITouchContextService$Stub$Proxy;->getConfigPropertyNamespaces(Lcom/google/android/systemui/input/TouchContextService$2;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_3
    const-string v0, "TouchContextService.java"

    const-string v1, "Failed to get property namespaces."

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object p1, p0, Lcom/google/android/systemui/input/TouchContextService;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/systemui/input/TouchContextService;->mAudioModeListener:Lcom/google/android/systemui/input/TouchContextService$4;

    invoke-virtual {p1, p2, v0}, Landroid/media/AudioManager;->addOnModeChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$OnModeChangedListener;)V

    iget-object p1, p0, Lcom/google/android/systemui/input/TouchContextService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->getMode()I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/input/TouchContextService;->mPreviousAudioMode:I

    iget-object p1, p0, Lcom/google/android/systemui/input/TouchContextService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object p2, p0, Lcom/google/android/systemui/input/TouchContextService;->mDisplayListener:Lcom/google/android/systemui/input/TouchContextService$3;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/google/android/systemui/input/TouchContextService$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/input/TouchContextService$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/input/TouchContextService;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :catchall_0
    move-exception p0

    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :catch_1
    move-exception p0

    const-string p1, "TouchContextService.java"

    const-string p2, "Failed to link to death on ITouchContextService. Binder is probably dead."

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method
