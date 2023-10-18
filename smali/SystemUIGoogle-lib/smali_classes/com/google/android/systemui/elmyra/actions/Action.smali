.class public abstract Lcom/google/android/systemui/elmyra/actions/Action;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final mFeedbackEffects:Ljava/util/List;

.field public final mHandler:Ljava/util/concurrent/Executor;

.field public mListener:Lcom/google/android/systemui/elmyra/ElmyraService$1;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/actions/Action;->mFeedbackEffects:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/Action;->mHandler:Ljava/util/concurrent/Executor;

    if-eqz p2, :cond_0

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract isAvailable()Z
.end method

.method public final notifyListener()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/actions/Action;->mListener:Lcom/google/android/systemui/elmyra/ElmyraService$1;

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/actions/Action;->mHandler:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/systemui/elmyra/actions/Action$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/google/android/systemui/elmyra/actions/Action$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/elmyra/actions/Action;I)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/systemui/elmyra/actions/Action$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcom/google/android/systemui/elmyra/actions/Action$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/elmyra/actions/Action;I)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onProgress(IF)V
    .locals 0

    return-void
.end method

.method public abstract onTrigger(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public triggerFeedbackEffects(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/actions/Action;->mFeedbackEffects:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;

    invoke-interface {v1, p1}, Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;->onResolve(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateFeedbackEffects(IF)V
    .locals 3

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/systemui/elmyra/actions/Action;->mFeedbackEffects:Ljava/util/List;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->isAvailable()Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_0
    move-object p0, v2

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v1, p0, :cond_2

    move-object p0, v2

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;

    invoke-interface {p0, p1, p2}, Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;->onProgress(IF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    move-object p0, v2

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v1, p0, :cond_2

    move-object p0, v2

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;

    invoke-interface {p0}, Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;->onRelease()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
