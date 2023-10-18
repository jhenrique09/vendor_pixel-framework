.class public abstract Lcom/google/android/systemui/columbus/legacy/actions/Action;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final context:Landroid/content/Context;

.field public final feedbackEffects:Ljava/util/Set;

.field public final handler:Landroid/os/Handler;

.field public isAvailable:Z

.field public final listeners:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/Action;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/actions/Action;->feedbackEffects:Ljava/util/Set;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/Action;->isAvailable:Z

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/Action;->listeners:Ljava/util/Set;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/Action;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public abstract getTag$vendor__unbundled_google__packages__SystemUIGoogle__android_common__sysuig()Ljava/lang/String;
.end method

.method public onGestureDetected(ILcom/google/android/systemui/columbus/legacy/sensors/GestureSensor$DetectionProperties;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/columbus/legacy/actions/Action;->updateFeedbackEffects(ILcom/google/android/systemui/columbus/legacy/sensors/GestureSensor$DetectionProperties;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/legacy/actions/Action;->getTag$vendor__unbundled_google__packages__SystemUIGoogle__android_common__sysuig()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Triggering"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2}, Lcom/google/android/systemui/columbus/legacy/actions/Action;->onTrigger(Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor$DetectionProperties;)V

    :cond_0
    return-void
.end method

.method public abstract onTrigger(Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor$DetectionProperties;)V
.end method

.method public final setAvailable(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/legacy/actions/Action;->isAvailable:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/Action;->isAvailable:Z

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/Action;->listeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/systemui/columbus/legacy/actions/Action;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/columbus/legacy/actions/Action$Listener;

    new-instance v2, Lcom/google/android/systemui/columbus/legacy/actions/Action$setAvailable$1$1;

    invoke-direct {v2, v0, p0}, Lcom/google/android/systemui/columbus/legacy/actions/Action$setAvailable$1$1;-><init>(Lcom/google/android/systemui/columbus/legacy/actions/Action$Listener;Lcom/google/android/systemui/columbus/legacy/actions/Action;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/Action;->isAvailable:Z

    if-nez p1, :cond_1

    new-instance p1, Lcom/google/android/systemui/columbus/legacy/actions/Action$setAvailable$2;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/legacy/actions/Action$setAvailable$2;-><init>(Lcom/google/android/systemui/columbus/legacy/actions/Action;)V

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateFeedbackEffects(ILcom/google/android/systemui/columbus/legacy/sensors/GestureSensor$DetectionProperties;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/actions/Action;->feedbackEffects:Ljava/util/Set;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/columbus/legacy/feedback/FeedbackEffect;

    invoke-interface {v0, p1, p2}, Lcom/google/android/systemui/columbus/legacy/feedback/FeedbackEffect;->onGestureDetected(ILcom/google/android/systemui/columbus/legacy/sensors/GestureSensor$DetectionProperties;)V

    goto :goto_0

    :cond_0
    return-void
.end method
