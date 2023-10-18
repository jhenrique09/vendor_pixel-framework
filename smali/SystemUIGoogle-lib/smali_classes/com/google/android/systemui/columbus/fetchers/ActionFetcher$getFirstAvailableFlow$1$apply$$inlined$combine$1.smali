.class public final Lcom/google/android/systemui/columbus/fetchers/ActionFetcher$getFirstAvailableFlow$1$apply$$inlined$combine$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# instance fields
.field public final synthetic $flowArray$inlined:[Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>([Lkotlinx/coroutines/flow/Flow;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/ActionFetcher$getFirstAvailableFlow$1$apply$$inlined$combine$1;->$flowArray$inlined:[Lkotlinx/coroutines/flow/Flow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/google/android/systemui/columbus/fetchers/ActionFetcher$getFirstAvailableFlow$1$apply$$inlined$combine$1$2;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/fetchers/ActionFetcher$getFirstAvailableFlow$1$apply$$inlined$combine$1;->$flowArray$inlined:[Lkotlinx/coroutines/flow/Flow;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/columbus/fetchers/ActionFetcher$getFirstAvailableFlow$1$apply$$inlined$combine$1$2;-><init>([Lkotlinx/coroutines/flow/Flow;)V

    new-instance v1, Lcom/google/android/systemui/columbus/fetchers/ActionFetcher$getFirstAvailableFlow$1$apply$$inlined$combine$1$3;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/systemui/columbus/fetchers/ActionFetcher$getFirstAvailableFlow$1$apply$$inlined$combine$1$3;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, v0, v1, p1, p0}, Lkotlinx/coroutines/flow/internal/CombineKt;->combineInternal(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlinx/coroutines/flow/FlowCollector;[Lkotlinx/coroutines/flow/Flow;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
