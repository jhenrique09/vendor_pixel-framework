.class public final Lcom/google/android/systemui/columbus/legacy/ColumbusService$stopListeningRunnable$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusService;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/columbus/legacy/ColumbusService;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService$stopListeningRunnable$1;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService$stopListeningRunnable$1;->this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService$stopListeningRunnable$1;->$r8$classId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService$stopListeningRunnable$1;->this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusService;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->gestureController:Lcom/google/android/systemui/columbus/legacy/sensors/GestureController;

    iget-object v3, v0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureController;->gestureSensor:Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;

    invoke-virtual {v3}, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;->isListening()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;->stopListening()V

    iget-object v3, v0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureController;->softGates:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/systemui/columbus/legacy/gates/Gate;

    iget-object v5, v0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureController;->softGateListener:Lcom/google/android/systemui/columbus/legacy/sensors/GestureController$softGateListener$1;

    invoke-virtual {v4, v5}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->unregisterListener(Lcom/google/android/systemui/columbus/legacy/gates/Gate$Listener;)V

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    check-cast v0, Lcom/android/systemui/util/time/SystemClockImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->lastStateChangeTimestamp:J

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->effects:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/columbus/legacy/feedback/FeedbackEffect;

    invoke-interface {v1, v2, v3}, Lcom/google/android/systemui/columbus/legacy/feedback/FeedbackEffect;->onGestureDetected(ILcom/google/android/systemui/columbus/legacy/sensors/GestureSensor$DetectionProperties;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->updateActiveAction()Lcom/google/android/systemui/columbus/legacy/actions/Action;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/systemui/columbus/legacy/actions/Action;->onGestureDetected(ILcom/google/android/systemui/columbus/legacy/sensors/GestureSensor$DetectionProperties;)V

    :cond_3
    return-void

    :goto_2
    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService$stopListeningRunnable$1;->this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusService;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->gestureController:Lcom/google/android/systemui/columbus/legacy/sensors/GestureController;

    iget-object v3, v0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureController;->gestureSensor:Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;

    invoke-virtual {v3}, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;->isListening()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v2, v0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureController;->softGates:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/systemui/columbus/legacy/gates/Gate;

    iget-object v5, v0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureController;->softGateListener:Lcom/google/android/systemui/columbus/legacy/sensors/GestureController$softGateListener$1;

    invoke-virtual {v4, v5}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->registerListener(Lcom/google/android/systemui/columbus/legacy/gates/Gate$Listener;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v3}, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;->startListening()V

    goto :goto_4

    :cond_5
    move v1, v2

    :goto_4
    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    check-cast v0, Lcom/android/systemui/util/time/SystemClockImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->lastStateChangeTimestamp:J

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
