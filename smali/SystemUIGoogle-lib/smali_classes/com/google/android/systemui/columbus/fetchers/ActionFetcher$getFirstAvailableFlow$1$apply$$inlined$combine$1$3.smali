.class public final Lcom/google/android/systemui/columbus/fetchers/ActionFetcher$getFirstAvailableFlow$1$apply$$inlined$combine$1$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.columbus.fetchers.ActionFetcher$getFirstAvailableFlow$1$apply$$inlined$combine$1$3"
    f = "ActionFetcher.kt"
    l = {
        0x124
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, [Ljava/lang/Object;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance p0, Lcom/google/android/systemui/columbus/fetchers/ActionFetcher$getFirstAvailableFlow$1$apply$$inlined$combine$1$3;

    invoke-direct {p0, p3}, Lcom/google/android/systemui/columbus/fetchers/ActionFetcher$getFirstAvailableFlow$1$apply$$inlined$combine$1$3;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/ActionFetcher$getFirstAvailableFlow$1$apply$$inlined$combine$1$3;->L$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/fetchers/ActionFetcher$getFirstAvailableFlow$1$apply$$inlined$combine$1$3;->L$1:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/fetchers/ActionFetcher$getFirstAvailableFlow$1$apply$$inlined$combine$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/google/android/systemui/columbus/fetchers/ActionFetcher$getFirstAvailableFlow$1$apply$$inlined$combine$1$3;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/ActionFetcher$getFirstAvailableFlow$1$apply$$inlined$combine$1$3;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/fetchers/ActionFetcher$getFirstAvailableFlow$1$apply$$inlined$combine$1$3;->L$1:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Lkotlin/Pair;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x0

    if-ge v4, v3, :cond_3

    aget-object v6, v1, v4

    invoke-virtual {v6}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    move-object v6, v5

    :goto_1
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    :cond_4
    iput v2, p0, Lcom/google/android/systemui/columbus/fetchers/ActionFetcher$getFirstAvailableFlow$1$apply$$inlined$combine$1$3;->label:I

    invoke-interface {p1, v5, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    return-object v0

    :cond_5
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
