.class public final Lcom/google/android/systemui/columbus/sensors/GestureController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final gestureEvents:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final gestureSensor:Lcom/google/android/systemui/columbus/sensors/NoOpGestureSensor;

.field public final lastTimestampMap:Landroid/util/SparseLongArray;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/google/android/systemui/columbus/sensors/NoOpGestureSensor;Ljava/util/Set;Lcom/google/android/systemui/columbus/fetchers/GateFetcher;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/util/time/SystemClock;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->gestureSensor:Lcom/google/android/systemui/columbus/sensors/NoOpGestureSensor;

    iput-object p6, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    sget-object p2, Lkotlinx/coroutines/flow/EmptyFlow;->INSTANCE:Lkotlinx/coroutines/flow/EmptyFlow;

    new-instance p6, Lcom/google/android/systemui/columbus/sensors/GestureController$special$$inlined$filter$1;

    const/4 v0, 0x0

    invoke-direct {p6, p2, p0, v0}, Lcom/google/android/systemui/columbus/sensors/GestureController$special$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/google/android/systemui/columbus/sensors/GestureController;I)V

    iget-object p2, p4, Lcom/google/android/systemui/columbus/fetchers/GateFetcher;->blockingGateMap:Ljava/util/Map;

    new-instance v1, Lcom/google/android/systemui/columbus/fetchers/GateFetcher$GateCollectionKey;

    invoke-direct {v1, p3}, Lcom/google/android/systemui/columbus/fetchers/GateFetcher$GateCollectionKey;-><init>(Ljava/util/Collection;)V

    new-instance p3, Lcom/google/android/systemui/columbus/fetchers/GateFetcher$getBlockingGateFlow$1;

    invoke-direct {p3, p4}, Lcom/google/android/systemui/columbus/fetchers/GateFetcher$getBlockingGateFlow$1;-><init>(Lcom/google/android/systemui/columbus/fetchers/GateFetcher;)V

    invoke-interface {p2, v1, p3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlinx/coroutines/flow/StateFlow;

    new-instance p3, Lcom/google/android/systemui/columbus/sensors/GestureController$gestureEvents$2;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, Lcom/google/android/systemui/columbus/sensors/GestureController$gestureEvents$2;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {p6, p2, p3}, Lcom/android/systemui/util/kotlin/FlowKt;->sample(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/SafeFlow;

    move-result-object p2

    new-instance p3, Lcom/google/android/systemui/columbus/sensors/GestureController$special$$inlined$filter$1;

    const/4 p6, 0x1

    invoke-direct {p3, p2, p0, p6}, Lcom/google/android/systemui/columbus/sensors/GestureController$special$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/google/android/systemui/columbus/sensors/GestureController;I)V

    new-instance p2, Lcom/google/android/systemui/columbus/sensors/GestureController$special$$inlined$map$1;

    invoke-direct {p2, p3}, Lcom/google/android/systemui/columbus/sensors/GestureController$special$$inlined$map$1;-><init>(Lcom/google/android/systemui/columbus/sensors/GestureController$special$$inlined$filter$1;)V

    new-instance p3, Lcom/google/android/systemui/columbus/sensors/GestureController$gestureEvents$5;

    invoke-direct {p3, p5, p4}, Lcom/google/android/systemui/columbus/sensors/GestureController$gestureEvents$5;-><init>(Lcom/android/internal/logging/UiEventLogger;Lkotlin/coroutines/Continuation;)V

    new-instance p4, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {p4, p3, p2}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    new-instance p2, Lcom/google/android/systemui/columbus/sensors/SharingStartedWhileSubscribedThrottled;

    invoke-direct {p2}, Lcom/google/android/systemui/columbus/sensors/SharingStartedWhileSubscribedThrottled;-><init>()V

    invoke-static {p4, p1, p2, v0}, Lkotlinx/coroutines/flow/FlowKt;->shareIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;I)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->gestureEvents:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    new-instance p1, Landroid/util/SparseLongArray;

    invoke-direct {p1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->lastTimestampMap:Landroid/util/SparseLongArray;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string v0, "  Repeat Gesture Blocks: 0"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  Soft Blocks: 0"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  Gesture Sensor: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->gestureSensor:Lcom/google/android/systemui/columbus/sensors/NoOpGestureSensor;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    instance-of v0, p0, Lcom/android/systemui/Dumpable;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/systemui/Dumpable;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/Dumpable;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_1
    return-void
.end method
