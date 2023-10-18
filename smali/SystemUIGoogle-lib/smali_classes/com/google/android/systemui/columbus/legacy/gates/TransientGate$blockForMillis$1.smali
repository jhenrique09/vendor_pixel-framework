.class final Lcom/google/android/systemui/columbus/legacy/gates/TransientGate$blockForMillis$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.columbus.legacy.gates.TransientGate$blockForMillis$1"
    f = "TransientGate.kt"
    l = {
        0x12
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $blockDuration:J

.field label:I

.field final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/gates/TransientGate;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/gates/TransientGate;JLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/TransientGate$blockForMillis$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/TransientGate;

    iput-wide p2, p0, Lcom/google/android/systemui/columbus/legacy/gates/TransientGate$blockForMillis$1;->$blockDuration:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance p1, Lcom/google/android/systemui/columbus/legacy/gates/TransientGate$blockForMillis$1;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/TransientGate$blockForMillis$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/TransientGate;

    iget-wide v1, p0, Lcom/google/android/systemui/columbus/legacy/gates/TransientGate$blockForMillis$1;->$blockDuration:J

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/google/android/systemui/columbus/legacy/gates/TransientGate$blockForMillis$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/TransientGate;JLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/columbus/legacy/gates/TransientGate$blockForMillis$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/columbus/legacy/gates/TransientGate$blockForMillis$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/legacy/gates/TransientGate$blockForMillis$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/google/android/systemui/columbus/legacy/gates/TransientGate$blockForMillis$1;->label:I

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

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/TransientGate$blockForMillis$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/TransientGate;

    invoke-virtual {p1, v2}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->setBlocking(Z)V

    iget-wide v3, p0, Lcom/google/android/systemui/columbus/legacy/gates/TransientGate$blockForMillis$1;->$blockDuration:J

    iput v2, p0, Lcom/google/android/systemui/columbus/legacy/gates/TransientGate$blockForMillis$1;->label:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/TransientGate$blockForMillis$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/TransientGate;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->setBlocking(Z)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/TransientGate$blockForMillis$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/TransientGate;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/TransientGate;->currentJob:Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
