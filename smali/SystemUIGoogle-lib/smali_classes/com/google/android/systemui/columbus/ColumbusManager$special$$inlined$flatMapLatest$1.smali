.class public final Lcom/google/android/systemui/columbus/ColumbusManager$special$$inlined$flatMapLatest$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.columbus.ColumbusManager$special$$inlined$flatMapLatest$1"
    f = "ColumbusManager.kt"
    l = {
        0xbe
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/google/android/systemui/columbus/ColumbusManager;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/ColumbusManager;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusManager$special$$inlined$flatMapLatest$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusManager;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/google/android/systemui/columbus/ColumbusManager$special$$inlined$flatMapLatest$1;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusManager$special$$inlined$flatMapLatest$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusManager;

    invoke-direct {v0, p0, p3}, Lcom/google/android/systemui/columbus/ColumbusManager$special$$inlined$flatMapLatest$1;-><init>(Lcom/google/android/systemui/columbus/ColumbusManager;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/google/android/systemui/columbus/ColumbusManager$special$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/google/android/systemui/columbus/ColumbusManager$special$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/google/android/systemui/columbus/ColumbusManager$special$$inlined$flatMapLatest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/google/android/systemui/columbus/ColumbusManager$special$$inlined$flatMapLatest$1;->label:I

    const/4 v2, 0x1

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

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

    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusManager$special$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/ColumbusManager$special$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    invoke-static {v1}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    new-instance v1, Lkotlin/Pair;

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput v2, p0, Lcom/google/android/systemui/columbus/ColumbusManager$special$$inlined$flatMapLatest$1;->label:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    move-object p0, v3

    :goto_0
    if-ne p0, v0, :cond_3

    goto :goto_1

    :cond_3
    move-object p0, v3

    :goto_1
    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    :goto_2
    return-object v3
.end method
