.class public final Lcom/google/android/systemui/columbus/legacy/sensors/GestureController$gestureSensorListener$1;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/sensors/GestureController;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/sensors/GestureController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureController$gestureSensorListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/sensors/GestureController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGestureDetected(ILcom/google/android/systemui/columbus/legacy/sensors/GestureSensor$DetectionProperties;)V
    .locals 5

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureController$gestureSensorListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/sensors/GestureController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureController;->lastTimestampMap:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v3

    invoke-virtual {v2, p1, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    sub-long/2addr v0, v3

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "Columbus/GestureControl"

    if-eqz v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Gesture "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " throttled"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureController;->softGates:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/google/android/systemui/columbus/legacy/gates/Gate;

    invoke-virtual {v4}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->isBlocking()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    check-cast v3, Lcom/google/android/systemui/columbus/legacy/gates/Gate;

    if-eqz v3, :cond_4

    iget-wide p1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureController;->softGateBlockCount:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureController;->softGateBlockCount:J

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Gesture blocked by "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    if-ne p1, v1, :cond_5

    sget-object v0, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_DOUBLE_TAP_DETECTED:Lcom/google/android/systemui/columbus/ColumbusEvent;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureController;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-interface {v1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_5
    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureController;->gestureListener:Lcom/google/android/systemui/columbus/legacy/ColumbusService$gestureListener$1;

    if-eqz p0, :cond_7

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService$gestureListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusService;

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->wakeLock:Lcom/google/android/systemui/columbus/legacy/PowerManagerWrapper$WakeLockWrapper;

    iget-object v0, v0, Lcom/google/android/systemui/columbus/legacy/PowerManagerWrapper$WakeLockWrapper;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_6

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->updateActiveAction()Lcom/google/android/systemui/columbus/legacy/actions/Action;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lcom/google/android/systemui/columbus/legacy/actions/Action;->onGestureDetected(ILcom/google/android/systemui/columbus/legacy/sensors/GestureSensor$DetectionProperties;)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->effects:Ljava/util/Set;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/columbus/legacy/feedback/FeedbackEffect;

    invoke-interface {v0, p1, p2}, Lcom/google/android/systemui/columbus/legacy/feedback/FeedbackEffect;->onGestureDetected(ILcom/google/android/systemui/columbus/legacy/sensors/GestureSensor$DetectionProperties;)V

    goto :goto_2

    :cond_7
    return-void
.end method
