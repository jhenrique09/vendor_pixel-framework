.class public final Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher$special$$inlined$map$2$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher$special$$inlined$map$2$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher$special$$inlined$map$2$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher$special$$inlined$map$2$2$1;

    iget v1, v0, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher$special$$inlined$map$2$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher$special$$inlined$map$2$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher$special$$inlined$map$2$2$1;

    invoke-direct {v0, p0, p2}, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher$special$$inlined$map$2$2$1;-><init>(Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher$special$$inlined$map$2$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher$special$$inlined$map$2$2$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher$special$$inlined$map$2$2$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/String;

    :try_start_0
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "Columbus/Settings"

    const-string v2, "Failed to parse package counts"

    invoke-static {p2, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    :goto_1
    iput v3, v0, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher$special$$inlined$map$2$2$1;->label:I

    iget-object p0, p0, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher$special$$inlined$map$2$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {p0, p2, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
