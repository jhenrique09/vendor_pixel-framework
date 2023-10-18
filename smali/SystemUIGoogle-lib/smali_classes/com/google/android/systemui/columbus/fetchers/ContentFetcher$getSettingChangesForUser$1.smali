.class final Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForUser$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.columbus.fetchers.ContentFetcher$getSettingChangesForUser$1"
    f = "ContentFetcher.kt"
    l = {
        0x6f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $settingUri:Landroid/net/Uri;

.field final synthetic $userId:I

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;Landroid/net/Uri;ILkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForUser$1;->this$0:Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForUser$1;->$settingUri:Landroid/net/Uri;

    iput p3, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForUser$1;->$userId:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance v0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForUser$1;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForUser$1;->this$0:Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;

    iget-object v2, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForUser$1;->$settingUri:Landroid/net/Uri;

    iget p0, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForUser$1;->$userId:I

    invoke-direct {v0, v1, v2, p0, p2}, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForUser$1;-><init>(Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;Landroid/net/Uri;ILkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForUser$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForUser$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForUser$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForUser$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForUser$1;->label:I

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

    iget-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForUser$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForUser$1;->this$0:Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;

    iget-object v1, v1, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;->mainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForUser$1$contentObserver$1;

    iget v4, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForUser$1;->$userId:I

    invoke-direct {v3, p1, v4, v1}, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForUser$1$contentObserver$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;ILandroid/os/Handler;)V

    iget-object v1, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForUser$1;->this$0:Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;

    iget-object v1, v1, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;->contentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForUser$1;->$settingUri:Landroid/net/Uri;

    const/4 v5, 0x0

    iget v6, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForUser$1;->$userId:I

    invoke-virtual {v1, v4, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    new-instance v1, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForUser$1$1;

    iget-object v4, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForUser$1;->this$0:Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;

    invoke-direct {v1, v4, v3}, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForUser$1$1;-><init>(Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForUser$1$contentObserver$1;)V

    iput v2, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getSettingChangesForUser$1;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
