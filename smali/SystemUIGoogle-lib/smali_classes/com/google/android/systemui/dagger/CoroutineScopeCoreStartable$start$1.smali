.class final Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable$start$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.dagger.CoroutineScopeCoreStartable$start$1"
    f = "InitializerModule.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable$start$1;->this$0:Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable$start$1;

    iget-object p0, p0, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable$start$1;->this$0:Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable;

    invoke-direct {v0, p0, p2}, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable$start$1;-><init>(Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable$start$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable$start$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable$start$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable$start$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable$start$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable$start$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iget-object p0, p0, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable$start$1;->this$0:Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable;

    iget-object p0, p0, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable;->coroutineInitializers:Ljava/util/Set;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable$start$1$1$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable$start$1$1$1;-><init>(Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    invoke-static {p1, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
