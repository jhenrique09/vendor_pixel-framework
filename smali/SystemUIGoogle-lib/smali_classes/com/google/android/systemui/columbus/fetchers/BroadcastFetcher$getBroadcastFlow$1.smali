.class public final Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$getBroadcastFlow$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $intentFilter:Landroid/content/IntentFilter;

.field public final synthetic $usingDispatcher:Z

.field public final synthetic this$0:Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher;


# direct methods
.method public constructor <init>(ZLcom/google/android/systemui/columbus/fetchers/BroadcastFetcher;Landroid/content/IntentFilter;)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$getBroadcastFlow$1;->$usingDispatcher:Z

    iput-object p2, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$getBroadcastFlow$1;->this$0:Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$getBroadcastFlow$1;->$intentFilter:Landroid/content/IntentFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$BroadcastKey;

    iget-boolean p1, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$getBroadcastFlow$1;->$usingDispatcher:Z

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$getBroadcastFlow$1;->this$0:Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$getBroadcastFlow$1;->$intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$createDispatchedFlow$1;

    invoke-direct {v3, p1, p0, v2}, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$createDispatchedFlow$1;-><init>(Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher;Landroid/content/IntentFilter;Lkotlin/coroutines/Continuation;)V

    invoke-static {v3}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    invoke-direct {v1, p0}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p0

    iget-object p1, p1, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v1, p1, p0, v0}, Lkotlinx/coroutines/flow/FlowKt;->shareIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;I)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$getBroadcastFlow$1;->this$0:Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$getBroadcastFlow$1;->$intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$createDirectFlow$1;

    invoke-direct {v3, p1, p0, v2}, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$createDirectFlow$1;-><init>(Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher;Landroid/content/IntentFilter;Lkotlin/coroutines/Continuation;)V

    invoke-static {v3}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    invoke-direct {v1, p0}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p0

    iget-object p1, p1, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v1, p1, p0, v0}, Lkotlinx/coroutines/flow/FlowKt;->shareIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;I)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    move-result-object p0

    :goto_0
    return-object p0
.end method
