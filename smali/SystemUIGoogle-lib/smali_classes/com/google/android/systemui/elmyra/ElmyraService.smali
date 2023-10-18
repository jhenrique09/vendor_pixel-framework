.class public final Lcom/google/android/systemui/elmyra/ElmyraService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final mActionListener:Lcom/google/android/systemui/elmyra/ElmyraService$1;

.field public final mActions:Ljava/util/List;

.field public final mFeedbackEffects:Ljava/util/List;

.field public final mGateListener:Lcom/google/android/systemui/elmyra/ElmyraService$1;

.field public final mGates:Ljava/util/List;

.field public final mGestureListener:Lcom/google/android/systemui/elmyra/ElmyraService$1;

.field public final mGestureSensor:Lcom/google/android/systemui/elmyra/sensors/GestureSensor;

.field public mLastActiveAction:Lcom/google/android/systemui/elmyra/actions/Action;

.field public mLastPrimedGesture:J

.field public mLastStage:I

.field public final mLogger:Lcom/android/internal/logging/MetricsLogger;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/systemui/elmyra/ElmyraService$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/elmyra/ElmyraService$1;-><init>(Lcom/google/android/systemui/elmyra/ElmyraService;)V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mActionListener:Lcom/google/android/systemui/elmyra/ElmyraService$1;

    new-instance v0, Lcom/google/android/systemui/elmyra/ElmyraService$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/elmyra/ElmyraService$1;-><init>(Lcom/google/android/systemui/elmyra/ElmyraService;)V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mGateListener:Lcom/google/android/systemui/elmyra/ElmyraService$1;

    new-instance v0, Lcom/google/android/systemui/elmyra/ElmyraService$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/elmyra/ElmyraService$1;-><init>(Lcom/google/android/systemui/elmyra/ElmyraService;)V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mGestureListener:Lcom/google/android/systemui/elmyra/ElmyraService$1;

    iput-object p3, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    new-instance p3, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p3}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object p3, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string p3, "power"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mPowerManager:Landroid/os/PowerManager;

    const/4 p3, 0x1

    const-string v1, "Elmyra/ElmyraService"

    invoke-virtual {p1, p3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle;->mActions:Ljava/util/List;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mActions:Ljava/util/List;

    new-instance v1, Lcom/google/android/systemui/elmyra/ElmyraService$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/systemui/elmyra/ElmyraService$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/elmyra/ElmyraService;I)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle;->mFeedbackEffects:Ljava/util/List;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mFeedbackEffects:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle;->mGates:Ljava/util/List;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mGates:Ljava/util/List;

    new-instance v1, Lcom/google/android/systemui/elmyra/ElmyraService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p3}, Lcom/google/android/systemui/elmyra/ElmyraService$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/elmyra/ElmyraService;I)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object p1, p2, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle;->mGestureSensor:Lcom/google/android/systemui/elmyra/sensors/GestureSensor;

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mGestureSensor:Lcom/google/android/systemui/elmyra/sensors/GestureSensor;

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lcom/google/android/systemui/elmyra/sensors/GestureSensor;->setGestureListener(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$Listener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/ElmyraService;->updateSensorListener()V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    const-string v0, "ElmyraService state:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  Gates:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mGates:Ljava/util/List;

    move-object v3, v2

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-string v4, "X "

    const-string v5, "O "

    const-string v6, "    "

    if-ge v1, v3, :cond_2

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v3, v2

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/systemui/elmyra/gates/Gate;

    iget-boolean v3, v3, Lcom/google/android/systemui/elmyra/gates/Gate;->mActive:Z

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/systemui/elmyra/gates/Gate;

    invoke-virtual {v3}, Lcom/google/android/systemui/elmyra/gates/Gate;->isBlocking()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    move-object v4, v5

    :goto_1
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const-string v3, "- "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_2
    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/systemui/elmyra/gates/Gate;

    invoke-virtual {v2}, Lcom/google/android/systemui/elmyra/gates/Gate;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "  Actions:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, v0

    :goto_3
    iget-object v2, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mActions:Ljava/util/List;

    move-object v3, v2

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v3, v2

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/systemui/elmyra/actions/Action;

    invoke-virtual {v3}, Lcom/google/android/systemui/elmyra/actions/Action;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v5

    goto :goto_4

    :cond_3
    move-object v3, v4

    :goto_4
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/systemui/elmyra/actions/Action;

    invoke-virtual {v2}, Lcom/google/android/systemui/elmyra/actions/Action;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  Active: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mLastActiveAction:Lcom/google/android/systemui/elmyra/actions/Action;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  Feedback Effects:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_5
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mFeedbackEffects:Ljava/util/List;

    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  Gesture Sensor: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mGestureSensor:Lcom/google/android/systemui/elmyra/sensors/GestureSensor;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    instance-of v0, p0, Lcom/android/systemui/Dumpable;

    if-eqz v0, :cond_6

    check-cast p0, Lcom/android/systemui/Dumpable;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/Dumpable;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public final stopListening()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mGestureSensor:Lcom/google/android/systemui/elmyra/sensors/GestureSensor;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/systemui/elmyra/sensors/GestureSensor;->isListening()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/google/android/systemui/elmyra/sensors/GestureSensor;->stopListening()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mFeedbackEffects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;

    invoke-interface {v2}, Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;->onRelease()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/ElmyraService;->updateActiveAction()Lcom/google/android/systemui/elmyra/actions/Action;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/systemui/elmyra/actions/Action;->onProgress(IF)V

    :cond_1
    return-void
.end method

.method public final updateActiveAction()Lcom/google/android/systemui/elmyra/actions/Action;
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mActions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/systemui/elmyra/actions/Action;

    invoke-virtual {v3}, Lcom/google/android/systemui/elmyra/actions/Action;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/elmyra/actions/Action;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mLastActiveAction:Lcom/google/android/systemui/elmyra/actions/Action;

    if-eqz v2, :cond_2

    if-eq v1, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Switching action from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mLastActiveAction:Lcom/google/android/systemui/elmyra/actions/Action;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Elmyra/ElmyraService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mLastActiveAction:Lcom/google/android/systemui/elmyra/actions/Action;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/google/android/systemui/elmyra/actions/Action;->onProgress(IF)V

    :cond_2
    iput-object v1, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mLastActiveAction:Lcom/google/android/systemui/elmyra/actions/Action;

    return-object v1
.end method

.method public final updateSensorListener()V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/ElmyraService;->updateActiveAction()Lcom/google/android/systemui/elmyra/actions/Action;

    move-result-object v0

    const-string v1, "Elmyra/ElmyraService"

    iget-object v2, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mGates:Ljava/util/List;

    const/4 v3, 0x0

    if-nez v0, :cond_1

    const-string v0, "No available actions"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/elmyra/gates/Gate;

    invoke-virtual {v0}, Lcom/google/android/systemui/elmyra/gates/Gate;->deactivate()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/ElmyraService;->stopListening()V

    return-void

    :cond_1
    move v4, v3

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/systemui/elmyra/gates/Gate;

    invoke-virtual {v5}, Lcom/google/android/systemui/elmyra/gates/Gate;->activate()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/systemui/elmyra/gates/Gate;

    invoke-virtual {v4}, Lcom/google/android/systemui/elmyra/gates/Gate;->isBlocking()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/systemui/elmyra/gates/Gate;

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Gated by "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/ElmyraService;->stopListening()V

    return-void

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unblocked; current action: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mGestureSensor:Lcom/google/android/systemui/elmyra/sensors/GestureSensor;

    if-eqz p0, :cond_6

    invoke-interface {p0}, Lcom/google/android/systemui/elmyra/sensors/GestureSensor;->isListening()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {p0}, Lcom/google/android/systemui/elmyra/sensors/GestureSensor;->startListening()V

    :cond_6
    return-void
.end method
