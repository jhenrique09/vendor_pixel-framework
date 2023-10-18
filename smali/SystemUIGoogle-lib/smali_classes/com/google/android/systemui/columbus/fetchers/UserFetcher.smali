.class public final Lcom/google/android/systemui/columbus/fetchers/UserFetcher;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final currentUserChange:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final currentUserHandle:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/Executor;Lcom/android/systemui/settings/UserTracker;Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/systemui/columbus/fetchers/UserFetcher$currentUserChange$1;

    const/4 v1, 0x0

    invoke-direct {v0, p3, p2, v1}, Lcom/google/android/systemui/columbus/fetchers/UserFetcher$currentUserChange$1;-><init>(Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    move-result-object p2

    const/4 v0, -0x1

    invoke-static {p2, v0}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p2, p1, v0, v2}, Lkotlinx/coroutines/flow/FlowKt;->shareIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;I)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/systemui/columbus/fetchers/UserFetcher;->currentUserChange:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    new-instance v0, Lcom/google/android/systemui/columbus/fetchers/UserFetcher$currentUserHandle$1;

    invoke-direct {v0, v1}, Lcom/google/android/systemui/columbus/fetchers/UserFetcher$currentUserHandle$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v1, v0, p2}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    new-instance p2, Lcom/google/android/systemui/columbus/fetchers/UserFetcher$special$$inlined$map$1;

    invoke-direct {p2, v1, p3}, Lcom/google/android/systemui/columbus/fetchers/UserFetcher$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;Lcom/android/systemui/settings/UserTracker;)V

    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p3

    const/16 v0, -0x2710

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p2, p1, p3, v0}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/UserFetcher;->currentUserHandle:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p0, Landroid/content/IntentFilter;

    const-string p1, "android.intent.action.USER_UNLOCKED"

    invoke-direct {p0, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result p1

    if-nez p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    iget-object p1, p4, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher;->cachedFlows:Ljava/util/Map;

    new-instance p2, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$BroadcastKey;

    invoke-direct {p2, p0, v2}, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$BroadcastKey;-><init>(Landroid/content/IntentFilter;Z)V

    new-instance p3, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$getBroadcastFlow$1;

    invoke-direct {p3, v2, p4, p0}, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$getBroadcastFlow$1;-><init>(ZLcom/google/android/systemui/columbus/fetchers/BroadcastFetcher;Landroid/content/IntentFilter;)V

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/flow/Flow;

    return-void
.end method
