.class public final Lcom/google/android/systemui/columbus/legacy/gates/VrMode;
.super Lcom/google/android/systemui/columbus/legacy/gates/Gate;
.source ""


# instance fields
.field public final bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public inVrMode:Z

.field public final vrManager:Ldagger/Lazy;

.field public final vrStateCallbacks:Lcom/google/android/systemui/columbus/legacy/gates/VrMode$vrStateCallbacks$1;


# direct methods
.method public constructor <init>(Ldagger/Lazy;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/VrMode;->vrManager:Ldagger/Lazy;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/gates/VrMode;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance p1, Lcom/google/android/systemui/columbus/legacy/gates/VrMode$vrStateCallbacks$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/legacy/gates/VrMode$vrStateCallbacks$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/VrMode;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/VrMode;->vrStateCallbacks:Lcom/google/android/systemui/columbus/legacy/gates/VrMode$vrStateCallbacks$1;

    return-void
.end method


# virtual methods
.method public final onActivate()V
    .locals 4

    new-instance v0, Lcom/google/android/systemui/columbus/legacy/gates/VrMode$onActivate$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/systemui/columbus/legacy/gates/VrMode$onActivate$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/VrMode;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v3, p0, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method

.method public final onDeactivate()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/VrMode;->vrManager:Ldagger/Lazy;

    check-cast v0, Ldagger/internal/DoubleCheck;

    invoke-virtual {v0}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/vr/IVrManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/VrMode;->vrStateCallbacks:Lcom/google/android/systemui/columbus/legacy/gates/VrMode$vrStateCallbacks$1;

    invoke-interface {v0, p0}, Landroid/service/vr/IVrManager;->unregisterListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Columbus/VrMode"

    const-string v1, "Could not unregister IVrManager listener"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
