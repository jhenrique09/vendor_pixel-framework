.class final Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState$refreshStatus$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.columbus.legacy.gates.PowerSaveState$refreshStatus$1"
    f = "PowerSaveState.kt"
    l = {
        0x3d,
        0x3e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState$refreshStatus$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState$refreshStatus$1;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState$refreshStatus$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState;

    invoke-direct {v0, p0, p2}, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState$refreshStatus$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState$refreshStatus$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState$refreshStatus$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState$refreshStatus$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState$refreshStatus$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState$refreshStatus$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState$refreshStatus$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState$refreshStatus$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState;

    iget-object v5, p0, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState$refreshStatus$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/Deferred;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState$refreshStatus$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState$refreshStatus$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState;

    iget-object v5, v1, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v6, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState$refreshStatus$1$newBatterySaverEnabled$1;

    invoke-direct {v6, v1, v3}, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState$refreshStatus$1$newBatterySaverEnabled$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v5, v6}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/DeferredCoroutine;

    move-result-object v1

    iget-object v5, p0, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState$refreshStatus$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState;

    iget-object v6, v5, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v7, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState$refreshStatus$1$newIsDeviceInteractive$1;

    invoke-direct {v7, v5, v3}, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState$refreshStatus$1$newIsDeviceInteractive$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v6, v7}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/DeferredCoroutine;

    move-result-object v5

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState$refreshStatus$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState;

    iput-object v5, p0, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState$refreshStatus$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState$refreshStatus$1;->L$1:Ljava/lang/Object;

    iput v4, p0, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState$refreshStatus$1;->label:I

    invoke-virtual {v1, p0}, Lkotlinx/coroutines/JobSupport;->awaitInternal$external__kotlinx_coroutines__android_common__kotlinx_coroutines(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v8, v1

    move-object v1, p1

    move-object p1, v8

    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v1, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState;->batterySaverEnabled:Z

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState$refreshStatus$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState;

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState$refreshStatus$1;->L$0:Ljava/lang/Object;

    iput-object v3, p0, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState$refreshStatus$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState$refreshStatus$1;->label:I

    invoke-interface {v5, p0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, p1

    move-object p1, v1

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState;->isDeviceInteractive:Z

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState$refreshStatus$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState;

    iget-boolean p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState;->batterySaverEnabled:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState;->isDeviceInteractive:Z

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {p0, v4}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->setBlocking(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
