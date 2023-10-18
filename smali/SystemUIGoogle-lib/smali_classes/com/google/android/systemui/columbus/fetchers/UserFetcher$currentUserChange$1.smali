.class final Lcom/google/android/systemui/columbus/fetchers/UserFetcher$currentUserChange$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.columbus.fetchers.UserFetcher$currentUserChange$1"
    f = "UserFetcher.kt"
    l = {
        0x33
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $mainExecutor:Ljava/util/concurrent/Executor;

.field final synthetic $userTracker:Lcom/android/systemui/settings/UserTracker;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/UserFetcher$currentUserChange$1;->$userTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/fetchers/UserFetcher$currentUserChange$1;->$mainExecutor:Ljava/util/concurrent/Executor;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/google/android/systemui/columbus/fetchers/UserFetcher$currentUserChange$1;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/fetchers/UserFetcher$currentUserChange$1;->$userTracker:Lcom/android/systemui/settings/UserTracker;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/fetchers/UserFetcher$currentUserChange$1;->$mainExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p0, p2}, Lcom/google/android/systemui/columbus/fetchers/UserFetcher$currentUserChange$1;-><init>(Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/google/android/systemui/columbus/fetchers/UserFetcher$currentUserChange$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/columbus/fetchers/UserFetcher$currentUserChange$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/columbus/fetchers/UserFetcher$currentUserChange$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/fetchers/UserFetcher$currentUserChange$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/google/android/systemui/columbus/fetchers/UserFetcher$currentUserChange$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/UserFetcher$currentUserChange$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    new-instance v1, Lcom/google/android/systemui/columbus/fetchers/UserFetcher$currentUserChange$1$userTrackerCallback$1;

    invoke-direct {v1, p1}, Lcom/google/android/systemui/columbus/fetchers/UserFetcher$currentUserChange$1$userTrackerCallback$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;)V

    iget-object v3, p0, Lcom/google/android/systemui/columbus/fetchers/UserFetcher$currentUserChange$1;->$userTracker:Lcom/android/systemui/settings/UserTracker;

    iget-object v4, p0, Lcom/google/android/systemui/columbus/fetchers/UserFetcher$currentUserChange$1;->$mainExecutor:Ljava/util/concurrent/Executor;

    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v3, v1, v4}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    new-instance v3, Lcom/google/android/systemui/columbus/fetchers/UserFetcher$currentUserChange$1$1;

    iget-object v4, p0, Lcom/google/android/systemui/columbus/fetchers/UserFetcher$currentUserChange$1;->$userTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-direct {v3, v4, v1}, Lcom/google/android/systemui/columbus/fetchers/UserFetcher$currentUserChange$1$1;-><init>(Lcom/android/systemui/settings/UserTracker;Lcom/google/android/systemui/columbus/fetchers/UserFetcher$currentUserChange$1$userTrackerCallback$1;)V

    iput v2, p0, Lcom/google/android/systemui/columbus/fetchers/UserFetcher$currentUserChange$1;->label:I

    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
