.class public abstract Lcom/google/android/systemui/elmyra/gates/TransientGate;
.super Lcom/google/android/systemui/elmyra/gates/Gate;
.source ""


# instance fields
.field public final mBlockDuration:J

.field public mCancelReset:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

.field public final mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public mIsBlocking:Z

.field public final mResetGate:Lcom/google/android/systemui/elmyra/gates/TransientGate$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/concurrency/DelayableExecutor;J)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/systemui/elmyra/gates/Gate;-><init>(Ljava/util/concurrent/Executor;)V

    new-instance v0, Lcom/google/android/systemui/elmyra/gates/TransientGate$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/elmyra/gates/TransientGate$1;-><init>(Lcom/google/android/systemui/elmyra/gates/TransientGate;)V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/gates/TransientGate;->mResetGate:Lcom/google/android/systemui/elmyra/gates/TransientGate$1;

    iput-wide p2, p0, Lcom/google/android/systemui/elmyra/gates/TransientGate;->mBlockDuration:J

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/TransientGate;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    return-void
.end method


# virtual methods
.method public final block()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/TransientGate;->mIsBlocking:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->notifyListener()V

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/TransientGate;->mCancelReset:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/gates/TransientGate;->mCancelReset:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    :cond_0
    iget-wide v0, p0, Lcom/google/android/systemui/elmyra/gates/TransientGate;->mBlockDuration:J

    iget-object v2, p0, Lcom/google/android/systemui/elmyra/gates/TransientGate;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v3, p0, Lcom/google/android/systemui/elmyra/gates/TransientGate;->mResetGate:Lcom/google/android/systemui/elmyra/gates/TransientGate$1;

    invoke-interface {v2, v3, v0, v1}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/gates/TransientGate;->mCancelReset:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    return-void
.end method

.method public final isBlocked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/elmyra/gates/TransientGate;->mIsBlocking:Z

    return p0
.end method
