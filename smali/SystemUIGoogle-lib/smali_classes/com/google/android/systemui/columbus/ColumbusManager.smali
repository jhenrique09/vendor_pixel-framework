.class public final Lcom/google/android/systemui/columbus/ColumbusManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final actions:Ljava/util/List;

.field public final activeAction:Lkotlinx/coroutines/flow/StateFlow;

.field public final effects:Ljava/util/Set;

.field public final events:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final gates:Ljava/util/Set;

.field public final gestureController:Lcom/google/android/systemui/columbus/sensors/GestureController;

.field public final state:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Ljava/util/Set;Ljava/util/List;Ljava/util/Set;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/google/android/systemui/columbus/sensors/GestureController;Lcom/google/android/systemui/columbus/fetchers/GateFetcher;Lcom/google/android/systemui/columbus/fetchers/ActionFetcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/systemui/columbus/ColumbusManager;->gates:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/android/systemui/columbus/ColumbusManager;->actions:Ljava/util/List;

    iput-object p5, p0, Lcom/google/android/systemui/columbus/ColumbusManager;->effects:Ljava/util/Set;

    iput-object p7, p0, Lcom/google/android/systemui/columbus/ColumbusManager;->gestureController:Lcom/google/android/systemui/columbus/sensors/GestureController;

    iget-object p5, p8, Lcom/google/android/systemui/columbus/fetchers/GateFetcher;->blockingGateMap:Ljava/util/Map;

    new-instance p6, Lcom/google/android/systemui/columbus/fetchers/GateFetcher$GateCollectionKey;

    invoke-direct {p6, p3}, Lcom/google/android/systemui/columbus/fetchers/GateFetcher$GateCollectionKey;-><init>(Ljava/util/Collection;)V

    new-instance p3, Lcom/google/android/systemui/columbus/fetchers/GateFetcher$getBlockingGateFlow$1;

    invoke-direct {p3, p8}, Lcom/google/android/systemui/columbus/fetchers/GateFetcher$getBlockingGateFlow$1;-><init>(Lcom/google/android/systemui/columbus/fetchers/GateFetcher;)V

    invoke-interface {p5, p6, p3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lkotlinx/coroutines/flow/StateFlow;

    iget-object p3, p9, Lcom/google/android/systemui/columbus/fetchers/ActionFetcher;->firstAvailableMap:Ljava/util/Map;

    new-instance p5, Lcom/google/android/systemui/columbus/fetchers/ActionFetcher$ActionListKey;

    invoke-direct {p5, p4}, Lcom/google/android/systemui/columbus/fetchers/ActionFetcher$ActionListKey;-><init>(Ljava/util/List;)V

    new-instance p4, Lcom/google/android/systemui/columbus/fetchers/ActionFetcher$getFirstAvailableFlow$1;

    invoke-direct {p4, p9}, Lcom/google/android/systemui/columbus/fetchers/ActionFetcher$getFirstAvailableFlow$1;-><init>(Lcom/google/android/systemui/columbus/fetchers/ActionFetcher;)V

    invoke-interface {p3, p5, p4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lkotlinx/coroutines/flow/StateFlow;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/ColumbusManager;->activeAction:Lkotlinx/coroutines/flow/StateFlow;

    new-instance p4, Lcom/google/android/systemui/columbus/ColumbusManager$special$$inlined$flatMapLatest$1;

    const/4 p5, 0x0

    invoke-direct {p4, p0, p5}, Lcom/google/android/systemui/columbus/ColumbusManager$special$$inlined$flatMapLatest$1;-><init>(Lcom/google/android/systemui/columbus/ColumbusManager;Lkotlin/coroutines/Continuation;)V

    invoke-static {p3, p4}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/systemui/columbus/ColumbusManager;->state:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    new-instance p4, Lcom/google/android/systemui/columbus/ColumbusManager$special$$inlined$flatMapLatest$2;

    invoke-direct {p4, p0, p5}, Lcom/google/android/systemui/columbus/ColumbusManager$special$$inlined$flatMapLatest$2;-><init>(Lcom/google/android/systemui/columbus/ColumbusManager;Lkotlin/coroutines/Continuation;)V

    invoke-static {p3, p4}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/systemui/columbus/ColumbusManager;->events:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    new-instance p3, Lcom/google/android/systemui/columbus/ColumbusManager$1;

    invoke-direct {p3, p0, p5}, Lcom/google/android/systemui/columbus/ColumbusManager$1;-><init>(Lcom/google/android/systemui/columbus/ColumbusManager;Lkotlin/coroutines/Continuation;)V

    const/4 p4, 0x2

    invoke-static {p1, p2, p5, p3, p4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    new-instance p3, Lcom/google/android/systemui/columbus/ColumbusManager$2;

    invoke-direct {p3, p0, p5}, Lcom/google/android/systemui/columbus/ColumbusManager$2;-><init>(Lcom/google/android/systemui/columbus/ColumbusManager;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p2, p5, p3, p4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const-string v0, "ColumbusManager (ColumbusManager) state:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  Gates:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusManager;->gates:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "    "

    if-nez v1, :cond_2

    const-string v0, "  Actions:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusManager;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusManager;->activeAction:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "  Active: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  Feedback Effects:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusManager;->effects:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusManager;->gestureController:Lcom/google/android/systemui/columbus/sensors/GestureController;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/columbus/sensors/GestureController;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    throw v2
.end method
