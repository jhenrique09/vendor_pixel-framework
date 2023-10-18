.class final Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity$updateProximityListener$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.columbus.legacy.gates.KeyguardProximity$updateProximityListener$1"
    f = "KeyguardProximity.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity$updateProximityListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity$updateProximityListener$1;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity$updateProximityListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity;

    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity$updateProximityListener$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity$updateProximityListener$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity$updateProximityListener$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity$updateProximityListener$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity$updateProximityListener$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity$updateProximityListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity;

    invoke-virtual {p1}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->isActive()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity$updateProximityListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity;

    iget-object p1, p1, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity;->keyguardGate:Lcom/google/android/systemui/columbus/legacy/gates/KeyguardVisibility;

    iget-object p1, p1, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardVisibility;->keyguardStateController:Ldagger/Lazy;

    check-cast p1, Ldagger/internal/DoubleCheck;

    invoke-virtual {p1}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity$updateProximityListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity;

    iget-object p1, p1, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity;->keyguardGate:Lcom/google/android/systemui/columbus/legacy/gates/KeyguardVisibility;

    iget-object p1, p1, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardVisibility;->keyguardStateController:Ldagger/Lazy;

    check-cast p1, Ldagger/internal/DoubleCheck;

    invoke-virtual {p1}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity$updateProximityListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity;

    iget-boolean v0, p1, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity;->isListening:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity;->proximity:Lcom/google/android/systemui/columbus/legacy/gates/Proximity;

    iget-object p1, p1, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity;->proximityListener:Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity$keyguardListener$1;

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->registerListener(Lcom/google/android/systemui/columbus/legacy/gates/Gate$Listener;)V

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity$updateProximityListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity;->isListening:Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity$updateProximityListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity;

    iget-boolean v0, p1, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity;->isListening:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity;->proximity:Lcom/google/android/systemui/columbus/legacy/gates/Proximity;

    iget-object p1, p1, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity;->proximityListener:Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity$keyguardListener$1;

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->unregisterListener(Lcom/google/android/systemui/columbus/legacy/gates/Gate$Listener;)V

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity$updateProximityListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity;->isListening:Z

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity$updateProximityListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity;

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v0, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity$updateBlocking$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity$updateBlocking$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v1, v1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
