.class public abstract Lcom/google/android/systemui/columbus/legacy/gates/TransientGate;
.super Lcom/google/android/systemui/columbus/legacy/gates/Gate;
.source ""


# instance fields
.field public currentJob:Lkotlinx/coroutines/Job;


# virtual methods
.method public final blockForMillis(J)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/TransientGate;->currentJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    new-instance v0, Lcom/google/android/systemui/columbus/legacy/gates/TransientGate$blockForMillis$1;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/systemui/columbus/legacy/gates/TransientGate$blockForMillis$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/TransientGate;JLkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    iget-object p2, p0, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {p2, v1, v1, v0, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/TransientGate;->currentJob:Lkotlinx/coroutines/Job;

    return-void
.end method
