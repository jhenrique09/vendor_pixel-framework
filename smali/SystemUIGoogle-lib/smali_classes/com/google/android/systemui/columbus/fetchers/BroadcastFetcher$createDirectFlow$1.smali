.class final Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$createDirectFlow$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.columbus.fetchers.BroadcastFetcher$createDirectFlow$1"
    f = "BroadcastFetcher.kt"
    l = {
        0x4d,
        0x50
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $intentFilter:Landroid/content/IntentFilter;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher;Landroid/content/IntentFilter;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$createDirectFlow$1;->this$0:Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$createDirectFlow$1;->$intentFilter:Landroid/content/IntentFilter;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$createDirectFlow$1;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$createDirectFlow$1;->this$0:Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$createDirectFlow$1;->$intentFilter:Landroid/content/IntentFilter;

    invoke-direct {v0, v1, p0, p2}, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$createDirectFlow$1;-><init>(Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher;Landroid/content/IntentFilter;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$createDirectFlow$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$createDirectFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$createDirectFlow$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$createDirectFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$createDirectFlow$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$createDirectFlow$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$createDirectFlow$1$broadcastReceiver$1;

    iget-object v3, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$createDirectFlow$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ProducerScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$createDirectFlow$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    new-instance v1, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$createDirectFlow$1$broadcastReceiver$1;

    invoke-direct {v1, p1}, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$createDirectFlow$1$broadcastReceiver$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;)V

    iget-object v4, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$createDirectFlow$1;->this$0:Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher;

    iget-object v4, v4, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$createDirectFlow$1;->$intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_4

    iput-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$createDirectFlow$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$createDirectFlow$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$createDirectFlow$1;->label:I

    move-object v3, p1

    check-cast v3, Lkotlinx/coroutines/channels/ProducerCoroutine;

    invoke-virtual {v3, v4, p0}, Lkotlinx/coroutines/channels/ProducerCoroutine;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    move-object p1, v3

    :cond_4
    new-instance v3, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$createDirectFlow$1$1;

    iget-object v4, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$createDirectFlow$1;->this$0:Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher;

    invoke-direct {v3, v4, v1}, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$createDirectFlow$1$1;-><init>(Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher;Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$createDirectFlow$1$broadcastReceiver$1;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$createDirectFlow$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$createDirectFlow$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$createDirectFlow$1;->label:I

    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
