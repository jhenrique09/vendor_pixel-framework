.class final Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$createIntSecureSettingFlow$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.columbus.fetchers.ContentFetcher$createIntSecureSettingFlow$1"
    f = "ContentFetcher.kt"
    l = {
        0x89
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $defaultSettingValue:I

.field final synthetic $settingKey:Ljava/lang/String;

.field synthetic I$0:I

.field label:I

.field final synthetic this$0:Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$createIntSecureSettingFlow$1;->this$0:Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$createIntSecureSettingFlow$1;->$settingKey:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$createIntSecureSettingFlow$1;->$defaultSettingValue:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance v0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$createIntSecureSettingFlow$1;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$createIntSecureSettingFlow$1;->this$0:Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;

    iget-object v2, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$createIntSecureSettingFlow$1;->$settingKey:Ljava/lang/String;

    iget p0, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$createIntSecureSettingFlow$1;->$defaultSettingValue:I

    invoke-direct {v0, v1, v2, p0, p2}, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$createIntSecureSettingFlow$1;-><init>(Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    iput p0, v0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$createIntSecureSettingFlow$1;->I$0:I

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$createIntSecureSettingFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$createIntSecureSettingFlow$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$createIntSecureSettingFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$createIntSecureSettingFlow$1;->label:I

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

    iget v5, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$createIntSecureSettingFlow$1;->I$0:I

    iget-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$createIntSecureSettingFlow$1;->this$0:Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;

    iget-object v3, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$createIntSecureSettingFlow$1;->$settingKey:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$createIntSecureSettingFlow$1;->$defaultSettingValue:I

    iput v2, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$createIntSecureSettingFlow$1;->label:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$fetchIntSecureSetting$2;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$fetchIntSecureSetting$2;-><init>(Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;Ljava/lang/String;IILkotlin/coroutines/Continuation;)V

    iget-object p1, p1, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {p1, v7, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
