.class final Lcom/google/android/systemui/columbus/legacy/gates/Gate$setBlocking$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.columbus.legacy.gates.Gate$setBlocking$1"
    f = "Gate.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $blocking:Z

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/gates/Gate;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/gates/Gate;ZLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/Gate$setBlocking$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/Gate;

    iput-boolean p2, p0, Lcom/google/android/systemui/columbus/legacy/gates/Gate$setBlocking$1;->$blocking:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/google/android/systemui/columbus/legacy/gates/Gate$setBlocking$1;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/legacy/gates/Gate$setBlocking$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/Gate;

    iget-boolean p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/Gate$setBlocking$1;->$blocking:Z

    invoke-direct {v0, v1, p0, p2}, Lcom/google/android/systemui/columbus/legacy/gates/Gate$setBlocking$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/Gate;ZLkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/google/android/systemui/columbus/legacy/gates/Gate$setBlocking$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/columbus/legacy/gates/Gate$setBlocking$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/columbus/legacy/gates/Gate$setBlocking$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/legacy/gates/Gate$setBlocking$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/Gate$setBlocking$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/Gate$setBlocking$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/Gate$setBlocking$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/Gate;

    iget-boolean v1, v0, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->isBlocked:Z

    iget-boolean p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/Gate$setBlocking$1;->$blocking:Z

    if-eq v1, p0, :cond_0

    iput-boolean p0, v0, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->isBlocked:Z

    iget-boolean p0, v0, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->active:Z

    if-eqz p0, :cond_0

    iget-object p0, v0, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->listeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/columbus/legacy/gates/Gate$Listener;

    new-instance v2, Lcom/google/android/systemui/columbus/legacy/gates/Gate$setBlocking$1$1$1;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lcom/google/android/systemui/columbus/legacy/gates/Gate$setBlocking$1$1$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/Gate$Listener;Lcom/google/android/systemui/columbus/legacy/gates/Gate;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x2

    iget-object v4, v0, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->mainPostDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {p1, v4, v3, v2, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

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
