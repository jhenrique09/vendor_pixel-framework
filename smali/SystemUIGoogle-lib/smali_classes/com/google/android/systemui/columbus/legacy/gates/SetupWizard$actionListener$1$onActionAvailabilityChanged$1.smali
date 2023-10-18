.class final Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$actionListener$1$onActionAvailabilityChanged$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.columbus.legacy.gates.SetupWizard$actionListener$1$onActionAvailabilityChanged$1"
    f = "SetupWizard.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$actionListener$1$onActionAvailabilityChanged$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$actionListener$1$onActionAvailabilityChanged$1;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$actionListener$1$onActionAvailabilityChanged$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;

    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$actionListener$1$onActionAvailabilityChanged$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$actionListener$1$onActionAvailabilityChanged$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$actionListener$1$onActionAvailabilityChanged$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$actionListener$1$onActionAvailabilityChanged$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$actionListener$1$onActionAvailabilityChanged$1;->label:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$actionListener$1$onActionAvailabilityChanged$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;

    iget-object v0, p1, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;->exceptions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/android/systemui/columbus/legacy/actions/Action;

    iget-boolean v2, v2, Lcom/google/android/systemui/columbus/legacy/actions/Action;->isAvailable:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p1, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;->exceptionActive:Z

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$actionListener$1$onActionAvailabilityChanged$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;->access$updateBlocking(Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
