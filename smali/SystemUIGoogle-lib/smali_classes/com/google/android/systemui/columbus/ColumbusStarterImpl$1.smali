.class final Lcom/google/android/systemui/columbus/ColumbusStarterImpl$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.columbus.ColumbusStarterImpl$1"
    f = "ColumbusStarterImpl.kt"
    l = {
        0x23
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $columbusSettingsFetcher:Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher;

.field label:I

.field final synthetic this$0:Lcom/google/android/systemui/columbus/ColumbusStarterImpl;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher;Lcom/google/android/systemui/columbus/ColumbusStarterImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusStarterImpl$1;->$columbusSettingsFetcher:Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusStarterImpl$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusStarterImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/google/android/systemui/columbus/ColumbusStarterImpl$1;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusStarterImpl$1;->$columbusSettingsFetcher:Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusStarterImpl$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusStarterImpl;

    invoke-direct {p1, v0, p0, p2}, Lcom/google/android/systemui/columbus/ColumbusStarterImpl$1;-><init>(Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher;Lcom/google/android/systemui/columbus/ColumbusStarterImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/columbus/ColumbusStarterImpl$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/columbus/ColumbusStarterImpl$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/ColumbusStarterImpl$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/google/android/systemui/columbus/ColumbusStarterImpl$1;->label:I

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

    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusStarterImpl$1;->$columbusSettingsFetcher:Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher;

    iget-object p1, p1, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher;->columbusEnabled:Lkotlinx/coroutines/flow/StateFlow;

    new-instance v1, Lcom/google/android/systemui/columbus/ColumbusStarterImpl$1$1;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/google/android/systemui/columbus/ColumbusStarterImpl$1$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Lcom/google/android/systemui/columbus/ColumbusStarterImpl$1;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusStarterImpl$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusStarterImpl;

    iput-boolean v2, p0, Lcom/google/android/systemui/columbus/ColumbusStarterImpl;->started:Z

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusStarterImpl;->columbusManager:Ldagger/Lazy;

    check-cast p0, Ldagger/internal/DoubleCheck;

    invoke-virtual {p0}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
