.class public final Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getIntSecureSettingFlow$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $defaultSettingValue:I

.field public final synthetic $settingKey:Ljava/lang/String;

.field public final synthetic $settingUri:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getIntSecureSettingFlow$1;->this$0:Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;

    const-string p1, "columbus_launch_profile_id"

    iput-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getIntSecureSettingFlow$1;->$settingKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getIntSecureSettingFlow$1;->$settingUri:Landroid/net/Uri;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getIntSecureSettingFlow$1;->$defaultSettingValue:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Landroid/net/Uri;

    iget-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getIntSecureSettingFlow$1;->this$0:Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getIntSecureSettingFlow$1;->$settingKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getIntSecureSettingFlow$1;->$settingUri:Landroid/net/Uri;

    iget v2, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getIntSecureSettingFlow$1;->$defaultSettingValue:I

    iget-object v3, p1, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;->userFetcher:Lcom/google/android/systemui/columbus/fetchers/UserFetcher;

    iget-object v3, v3, Lcom/google/android/systemui/columbus/fetchers/UserFetcher;->currentUserHandle:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v4, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForCurrentUser$$inlined$flatMapLatest$1;

    const/4 v5, 0x0

    invoke-direct {v4, v5, p1, v1}, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForCurrentUser$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;Landroid/net/Uri;)V

    invoke-static {v3, v4}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object v1

    new-instance v3, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$createIntSecureSettingFlow$1;

    invoke-direct {v3, p1, v0, v2, v5}, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$createIntSecureSettingFlow$1;-><init>(Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    invoke-static {v3, v1}, Lkotlinx/coroutines/flow/FlowKt;->mapLatest(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v0, p1}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getIntSecureSettingFlow$1;->this$0:Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;

    iget-object v0, v0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v1

    iget p0, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getIntSecureSettingFlow$1;->$defaultSettingValue:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, v0, v1, p0}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p0

    return-object p0
.end method
