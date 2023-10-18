.class public final Lcom/google/android/systemui/columbus/sensors/SharingStartedWhileSubscribedThrottled;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlinx/coroutines/flow/SharingStarted;


# instance fields
.field public final clock:Lcom/android/systemui/util/time/SystemClock;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/util/time/SystemClockImpl;

    invoke-direct {v0}, Lcom/android/systemui/util/time/SystemClockImpl;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/sensors/SharingStartedWhileSubscribedThrottled;->clock:Lcom/android/systemui/util/time/SystemClock;

    return-void
.end method


# virtual methods
.method public final command(Lkotlinx/coroutines/flow/internal/SubscriptionCountStateFlow;)Lkotlinx/coroutines/flow/Flow;
    .locals 4

    new-instance v0, Lcom/google/android/systemui/columbus/sensors/SharingStartedWhileSubscribedThrottled$command$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/systemui/columbus/sensors/SharingStartedWhileSubscribedThrottled$command$1;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, p1}, Lkotlinx/coroutines/flow/FlowKt;->mapLatest(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance v0, Lcom/google/android/systemui/columbus/sensors/SharingStartedWhileSubscribedThrottled$command$2;

    invoke-direct {v0, v1}, Lcom/google/android/systemui/columbus/sensors/SharingStartedWhileSubscribedThrottled$command$2;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$$inlined$unsafeFlow$1;

    invoke-direct {v1, v0, p1}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    const-wide/16 v2, 0x3e8

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/SharingStartedWhileSubscribedThrottled;->clock:Lcom/android/systemui/util/time/SystemClock;

    invoke-static {v1, v2, v3, p0}, Lcom/android/systemui/util/kotlin/FlowKt;->throttle(Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$$inlined$unsafeFlow$1;JLcom/android/systemui/util/time/SystemClock;)Lkotlinx/coroutines/flow/ChannelFlowBuilder;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method
