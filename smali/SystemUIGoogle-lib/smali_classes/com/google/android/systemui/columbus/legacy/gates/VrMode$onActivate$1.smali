.class final Lcom/google/android/systemui/columbus/legacy/gates/VrMode$onActivate$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.columbus.legacy.gates.VrMode$onActivate$1"
    f = "VrMode.kt"
    l = {
        0x29
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/gates/VrMode;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/gates/VrMode;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/VrMode$onActivate$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/VrMode;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/google/android/systemui/columbus/legacy/gates/VrMode$onActivate$1;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/VrMode$onActivate$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/VrMode;

    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/columbus/legacy/gates/VrMode$onActivate$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/VrMode;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/columbus/legacy/gates/VrMode$onActivate$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/columbus/legacy/gates/VrMode$onActivate$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/legacy/gates/VrMode$onActivate$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/google/android/systemui/columbus/legacy/gates/VrMode$onActivate$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v4, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/VrMode$onActivate$1;->L$2:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/systemui/columbus/legacy/gates/VrMode;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/legacy/gates/VrMode$onActivate$1;->L$1:Ljava/lang/Object;

    check-cast v1, Landroid/service/vr/IVrManager;

    iget-object v5, p0, Lcom/google/android/systemui/columbus/legacy/gates/VrMode$onActivate$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/systemui/columbus/legacy/gates/VrMode;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/VrMode$onActivate$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/VrMode;

    iput-boolean v3, p1, Lcom/google/android/systemui/columbus/legacy/gates/VrMode;->inVrMode:Z

    iget-object p1, p1, Lcom/google/android/systemui/columbus/legacy/gates/VrMode;->vrManager:Ldagger/Lazy;

    check-cast p1, Ldagger/internal/DoubleCheck;

    invoke-virtual {p1}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/service/vr/IVrManager;

    if-eqz v1, :cond_4

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/VrMode$onActivate$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/VrMode;

    :try_start_1
    iget-object v5, p1, Lcom/google/android/systemui/columbus/legacy/gates/VrMode;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v6, Lcom/google/android/systemui/columbus/legacy/gates/VrMode$onActivate$1$1$1;

    invoke-direct {v6, v1, v2}, Lcom/google/android/systemui/columbus/legacy/gates/VrMode$onActivate$1$1$1;-><init>(Landroid/service/vr/IVrManager;Lkotlin/coroutines/Continuation;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/VrMode$onActivate$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/systemui/columbus/legacy/gates/VrMode$onActivate$1;->L$1:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/VrMode$onActivate$1;->L$2:Ljava/lang/Object;

    iput v4, p0, Lcom/google/android/systemui/columbus/legacy/gates/VrMode$onActivate$1;->label:I

    invoke-static {v5, v6, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v5

    move-object v5, v0

    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-ne p1, v4, :cond_3

    move v3, v4

    :cond_3
    iput-boolean v3, v0, Lcom/google/android/systemui/columbus/legacy/gates/VrMode;->inVrMode:Z

    iget-object p1, v5, Lcom/google/android/systemui/columbus/legacy/gates/VrMode;->vrStateCallbacks:Lcom/google/android/systemui/columbus/legacy/gates/VrMode$vrStateCallbacks$1;

    invoke-interface {v1, p1}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "Columbus/VrMode"

    const-string v1, "Could not register IVrManager listener"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p1

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/VrMode$onActivate$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/VrMode;

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v0, Lcom/google/android/systemui/columbus/legacy/gates/VrMode$updateBlocking$1;

    invoke-direct {v0, p0, v2}, Lcom/google/android/systemui/columbus/legacy/gates/VrMode$updateBlocking$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/VrMode;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v2, v2, v0, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
