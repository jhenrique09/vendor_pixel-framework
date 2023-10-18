.class public final Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForCurrentUser$$inlined$flatMapLatest$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.columbus.fetchers.ContentFetcher$getSettingChangesForCurrentUser$$inlined$flatMapLatest$1"
    f = "ContentFetcher.kt"
    l = {
        0xbe
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $settingUri$inlined:Landroid/net/Uri;

.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;Landroid/net/Uri;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForCurrentUser$$inlined$flatMapLatest$1;->this$0:Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForCurrentUser$$inlined$flatMapLatest$1;->$settingUri$inlined:Landroid/net/Uri;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForCurrentUser$$inlined$flatMapLatest$1;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForCurrentUser$$inlined$flatMapLatest$1;->this$0:Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForCurrentUser$$inlined$flatMapLatest$1;->$settingUri$inlined:Landroid/net/Uri;

    invoke-direct {v0, p3, v1, p0}, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForCurrentUser$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;Landroid/net/Uri;)V

    iput-object p1, v0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForCurrentUser$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForCurrentUser$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForCurrentUser$$inlined$flatMapLatest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForCurrentUser$$inlined$flatMapLatest$1;->label:I

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

    iget-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForCurrentUser$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForCurrentUser$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    check-cast v1, Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForCurrentUser$$inlined$flatMapLatest$1;->this$0:Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;

    iget-object v4, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForCurrentUser$$inlined$flatMapLatest$1;->$settingUri$inlined:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForUser$1;

    const/4 v7, 0x0

    invoke-direct {v6, v3, v4, v5, v7}, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForUser$1;-><init>(Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;Landroid/net/Uri;ILkotlin/coroutines/Continuation;)V

    invoke-static {v6}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    new-instance v4, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForCurrentUser$1$1;

    invoke-direct {v4, v1, v7}, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForCurrentUser$1$1;-><init>(Landroid/os/UserHandle;Lkotlin/coroutines/Continuation;)V

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v1, v4, v3}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    iput v2, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForCurrentUser$$inlined$flatMapLatest$1;->label:I

    invoke-static {p0, v1, p1}, Lkotlinx/coroutines/flow/FlowKt;->emitAll(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/FlowCollector;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
