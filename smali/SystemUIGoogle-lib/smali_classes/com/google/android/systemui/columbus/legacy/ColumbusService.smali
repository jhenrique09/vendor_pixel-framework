.class public final Lcom/google/android/systemui/columbus/legacy/ColumbusService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final actionListener:Lcom/google/android/systemui/columbus/legacy/ColumbusService$actionListener$1;

.field public final actions:Ljava/util/List;

.field public final delayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final effects:Ljava/util/Set;

.field public final gateListener:Lcom/google/android/systemui/columbus/legacy/ColumbusService$gateListener$1;

.field public final gates:Ljava/util/Set;

.field public final gestureController:Lcom/google/android/systemui/columbus/legacy/sensors/GestureController;

.field public final gestureListener:Lcom/google/android/systemui/columbus/legacy/ColumbusService$gestureListener$1;

.field public lastActiveAction:Lcom/google/android/systemui/columbus/legacy/actions/Action;

.field public lastStateChangeTimestamp:J

.field public removeStartListeningRunnable:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

.field public removeStopListeningRunnable:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

.field public final startListeningRunnable:Lcom/google/android/systemui/columbus/legacy/ColumbusService$stopListeningRunnable$1;

.field public final stopListeningRunnable:Lcom/google/android/systemui/columbus/legacy/ColumbusService$stopListeningRunnable$1;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field public final wakeLock:Lcom/google/android/systemui/columbus/legacy/PowerManagerWrapper$WakeLockWrapper;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/systemui/columbus/legacy/sensors/GestureController;Lcom/google/android/systemui/columbus/legacy/PowerManagerWrapper;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/time/SystemClock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->actions:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->effects:Ljava/util/Set;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->gates:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->gestureController:Lcom/google/android/systemui/columbus/legacy/sensors/GestureController;

    iput-object p6, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->delayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-object p7, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    new-instance p2, Lcom/google/android/systemui/columbus/legacy/PowerManagerWrapper$WakeLockWrapper;

    iget-object p3, p5, Lcom/google/android/systemui/columbus/legacy/PowerManagerWrapper;->powerManager:Landroid/os/PowerManager;

    const/4 p4, 0x1

    if-eqz p3, :cond_0

    const-string p5, "Columbus/Service"

    invoke-virtual {p3, p4, p5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-direct {p2, p3}, Lcom/google/android/systemui/columbus/legacy/PowerManagerWrapper$WakeLockWrapper;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->wakeLock:Lcom/google/android/systemui/columbus/legacy/PowerManagerWrapper$WakeLockWrapper;

    new-instance p2, Lcom/google/android/systemui/columbus/legacy/ColumbusService$actionListener$1;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/columbus/legacy/ColumbusService$actionListener$1;-><init>(Lcom/google/android/systemui/columbus/legacy/ColumbusService;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->actionListener:Lcom/google/android/systemui/columbus/legacy/ColumbusService$actionListener$1;

    new-instance p2, Lcom/google/android/systemui/columbus/legacy/ColumbusService$gateListener$1;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/columbus/legacy/ColumbusService$gateListener$1;-><init>(Lcom/google/android/systemui/columbus/legacy/ColumbusService;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->gateListener:Lcom/google/android/systemui/columbus/legacy/ColumbusService$gateListener$1;

    new-instance p2, Lcom/google/android/systemui/columbus/legacy/ColumbusService$gestureListener$1;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/columbus/legacy/ColumbusService$gestureListener$1;-><init>(Lcom/google/android/systemui/columbus/legacy/ColumbusService;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->gestureListener:Lcom/google/android/systemui/columbus/legacy/ColumbusService$gestureListener$1;

    new-instance p2, Lcom/google/android/systemui/columbus/legacy/ColumbusService$stopListeningRunnable$1;

    invoke-direct {p2, p0, p4}, Lcom/google/android/systemui/columbus/legacy/ColumbusService$stopListeningRunnable$1;-><init>(Lcom/google/android/systemui/columbus/legacy/ColumbusService;I)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->startListeningRunnable:Lcom/google/android/systemui/columbus/legacy/ColumbusService$stopListeningRunnable$1;

    new-instance p2, Lcom/google/android/systemui/columbus/legacy/ColumbusService$stopListeningRunnable$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/google/android/systemui/columbus/legacy/ColumbusService$stopListeningRunnable$1;-><init>(Lcom/google/android/systemui/columbus/legacy/ColumbusService;I)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->stopListeningRunnable:Lcom/google/android/systemui/columbus/legacy/ColumbusService$stopListeningRunnable$1;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/systemui/columbus/legacy/actions/Action;

    iget-object p3, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->actionListener:Lcom/google/android/systemui/columbus/legacy/ColumbusService$actionListener$1;

    iget-object p2, p2, Lcom/google/android/systemui/columbus/legacy/actions/Action;->listeners:Ljava/util/Set;

    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->gestureController:Lcom/google/android/systemui/columbus/legacy/sensors/GestureController;

    iget-object p2, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->gestureListener:Lcom/google/android/systemui/columbus/legacy/ColumbusService$gestureListener$1;

    iput-object p2, p1, Lcom/google/android/systemui/columbus/legacy/sensors/GestureController;->gestureListener:Lcom/google/android/systemui/columbus/legacy/ColumbusService$gestureListener$1;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->updateSensorListener()V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    const-string v0, "ColumbusService state:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  Gates:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->gates:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "X "

    const-string v3, "O "

    const-string v4, "    "

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/columbus/legacy/gates/Gate;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->isActive()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->isBlocking()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    move-object v2, v3

    :goto_1
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const-string v2, "- "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v1}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "  Actions:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/columbus/legacy/actions/Action;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v1, Lcom/google/android/systemui/columbus/legacy/actions/Action;->isAvailable:Z

    if-eqz v5, :cond_3

    move-object v5, v3

    goto :goto_4

    :cond_3
    move-object v5, v2

    :goto_4
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/systemui/columbus/legacy/actions/Action;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->lastActiveAction:Lcom/google/android/systemui/columbus/legacy/actions/Action;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  Active: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  Feedback Effects:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->effects:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/columbus/legacy/feedback/FeedbackEffect;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->gestureController:Lcom/google/android/systemui/columbus/legacy/sensors/GestureController;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/columbus/legacy/sensors/GestureController;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final stopListening()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->removeStartListeningRunnable:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;->run()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->removeStartListeningRunnable:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->removeStopListeningRunnable:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;->run()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    check-cast v0, Lcom/android/systemui/util/time/SystemClockImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->lastStateChangeTimestamp:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->delayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v3, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->stopListeningRunnable:Lcom/google/android/systemui/columbus/legacy/ColumbusService$stopListeningRunnable$1;

    invoke-interface {v2, v3, v0, v1}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->removeStopListeningRunnable:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    return-void
.end method

.method public final updateActiveAction()Lcom/google/android/systemui/columbus/legacy/actions/Action;
    .locals 5

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->actions:Ljava/util/List;

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
    check-cast v1, Lcom/google/android/systemui/columbus/legacy/actions/Action;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->lastActiveAction:Lcom/google/android/systemui/columbus/legacy/actions/Action;

    if-eqz v0, :cond_2

    if-eq v1, v0, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Switching action from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Columbus/Service"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lcom/google/android/systemui/columbus/legacy/actions/Action;->onGestureDetected(ILcom/google/android/systemui/columbus/legacy/sensors/GestureSensor$DetectionProperties;)V

    :cond_2
    iput-object v1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->lastActiveAction:Lcom/google/android/systemui/columbus/legacy/actions/Action;

    return-object v1
.end method

.method public final updateSensorListener()V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->updateActiveAction()Lcom/google/android/systemui/columbus/legacy/actions/Action;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->gateListener:Lcom/google/android/systemui/columbus/legacy/ColumbusService$gateListener$1;

    const-string v2, "Columbus/Service"

    iget-object v3, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->gates:Ljava/util/Set;

    if-nez v0, :cond_1

    const-string v0, "No available actions"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/systemui/columbus/legacy/gates/Gate;

    invoke-virtual {v2, v1}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->unregisterListener(Lcom/google/android/systemui/columbus/legacy/gates/Gate$Listener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->stopListening()V

    return-void

    :cond_1
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/systemui/columbus/legacy/gates/Gate;

    invoke-virtual {v5, v1}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->registerListener(Lcom/google/android/systemui/columbus/legacy/gates/Gate$Listener;)V

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/google/android/systemui/columbus/legacy/gates/Gate;

    invoke-virtual {v5}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->isBlocking()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_4
    move-object v3, v4

    :goto_2
    check-cast v3, Lcom/google/android/systemui/columbus/legacy/gates/Gate;

    if-eqz v3, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Gated by "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->stopListening()V

    return-void

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unblocked; current action: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->removeStopListeningRunnable:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;->run()V

    :cond_6
    iput-object v4, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->removeStopListeningRunnable:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->removeStartListeningRunnable:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;->run()V

    :cond_7
    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    check-cast v0, Lcom/android/systemui/util/time/SystemClockImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->lastStateChangeTimestamp:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->delayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v3, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->startListeningRunnable:Lcom/google/android/systemui/columbus/legacy/ColumbusService$stopListeningRunnable$1;

    invoke-interface {v2, v3, v0, v1}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->removeStartListeningRunnable:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    return-void
.end method
