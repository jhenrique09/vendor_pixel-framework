.class public abstract Lcom/google/android/systemui/elmyra/gates/Gate;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public mActive:Z

.field public mListener:Lcom/google/android/systemui/elmyra/gates/Gate$Listener;

.field public final mNotifyExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/Gate;->mNotifyExecutor:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/systemui/elmyra/gates/Gate;->mActive:Z

    return-void
.end method


# virtual methods
.method public final activate()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/Gate;->mActive:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/Gate;->mActive:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->onActivate()V

    :cond_0
    return-void
.end method

.method public final deactivate()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/Gate;->mActive:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/Gate;->mActive:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->onDeactivate()V

    :cond_0
    return-void
.end method

.method public abstract isBlocked()Z
.end method

.method public final isBlocking()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/Gate;->mActive:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->isBlocked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final notifyListener()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/Gate;->mActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/Gate;->mListener:Lcom/google/android/systemui/elmyra/gates/Gate$Listener;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/systemui/elmyra/gates/Gate$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/elmyra/gates/Gate$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/elmyra/gates/Gate;)V

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/Gate;->mNotifyExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public abstract onActivate()V
.end method

.method public abstract onDeactivate()V
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
