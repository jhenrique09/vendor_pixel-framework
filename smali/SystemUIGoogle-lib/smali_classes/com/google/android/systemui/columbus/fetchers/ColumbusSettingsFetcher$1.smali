.class final Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.columbus.fetchers.ColumbusSettingsFetcher$1"
    f = "ColumbusSettingsFetcher.kt"
    l = {
        0x7a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $backupManagerProxy:Lcom/android/systemui/util/BackupManagerProxy;

.field final synthetic $userFetcher:Lcom/google/android/systemui/columbus/fetchers/UserFetcher;

.field label:I

.field final synthetic this$0:Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher;Lcom/google/android/systemui/columbus/fetchers/UserFetcher;Lcom/android/systemui/util/BackupManagerProxy;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher$1;->this$0:Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher$1;->$userFetcher:Lcom/google/android/systemui/columbus/fetchers/UserFetcher;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher$1;->$backupManagerProxy:Lcom/android/systemui/util/BackupManagerProxy;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher$1;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher$1;->this$0:Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher$1;->$userFetcher:Lcom/google/android/systemui/columbus/fetchers/UserFetcher;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher$1;->$backupManagerProxy:Lcom/android/systemui/util/BackupManagerProxy;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher$1;-><init>(Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher;Lcom/google/android/systemui/columbus/fetchers/UserFetcher;Lcom/android/systemui/util/BackupManagerProxy;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher$1;->label:I

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

    iget-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher$1;->this$0:Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher;

    iget-object v1, p1, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher;->columbusEnabled:Lkotlinx/coroutines/flow/StateFlow;

    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;

    invoke-direct {v3, v1}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    iget-object v1, p1, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher;->selectedAction:Lkotlinx/coroutines/flow/StateFlow;

    new-instance v4, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;

    invoke-direct {v4, v1}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    iget-object v1, p1, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher;->selectedApp:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v5, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;

    invoke-direct {v5, v1}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    iget-object v1, p1, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher;->selectedShortcut:Lkotlinx/coroutines/flow/StateFlow;

    new-instance v6, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;

    invoke-direct {v6, v1}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    iget-object p1, p1, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher;->lowSensitivity:Lkotlinx/coroutines/flow/StateFlow;

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;

    invoke-direct {v1, p1}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    filled-new-array {v3, v4, v5, v6, v1}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->merge([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher$1;->$userFetcher:Lcom/google/android/systemui/columbus/fetchers/UserFetcher;

    iget-object v1, v1, Lcom/google/android/systemui/columbus/fetchers/UserFetcher;->currentUserHandle:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {p1, v1}, Lcom/android/systemui/util/kotlin/FlowKt;->sample(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/SafeFlow;

    move-result-object p1

    new-instance v1, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher$1$1;

    iget-object v3, p0, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher$1;->$backupManagerProxy:Lcom/android/systemui/util/BackupManagerProxy;

    iget-object v4, p0, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher$1;->this$0:Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher;

    invoke-direct {v1, v3, v4}, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher$1$1;-><init>(Lcom/android/systemui/util/BackupManagerProxy;Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher;)V

    iput v2, p0, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher$1;->label:I

    invoke-virtual {p1, v1, p0}, Lkotlinx/coroutines/flow/AbstractFlow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
