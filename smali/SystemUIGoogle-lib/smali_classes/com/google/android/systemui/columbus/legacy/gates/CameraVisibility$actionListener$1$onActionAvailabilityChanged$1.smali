.class final Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$actionListener$1$onActionAvailabilityChanged$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.columbus.legacy.gates.CameraVisibility$actionListener$1$onActionAvailabilityChanged$1"
    f = "CameraVisibility.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$actionListener$1$onActionAvailabilityChanged$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$actionListener$1$onActionAvailabilityChanged$1;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$actionListener$1$onActionAvailabilityChanged$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;

    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$actionListener$1$onActionAvailabilityChanged$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$actionListener$1$onActionAvailabilityChanged$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$actionListener$1$onActionAvailabilityChanged$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$actionListener$1$onActionAvailabilityChanged$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$actionListener$1$onActionAvailabilityChanged$1;->label:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$actionListener$1$onActionAvailabilityChanged$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;

    iget-object v0, p1, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;->exceptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/google/android/systemui/columbus/legacy/actions/Action;

    iget-boolean v3, v3, Lcom/google/android/systemui/columbus/legacy/actions/Action;->isAvailable:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p1, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;->exceptionActive:Z

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$actionListener$1$onActionAvailabilityChanged$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$updateBlocking$1;

    invoke-direct {v0, p0, v2}, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$updateBlocking$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v2, v2, v0, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
