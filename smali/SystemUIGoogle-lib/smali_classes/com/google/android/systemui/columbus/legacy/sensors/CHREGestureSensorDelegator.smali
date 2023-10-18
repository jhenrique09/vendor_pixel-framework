.class public final Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;
.super Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;
.source ""

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final aiAiCHREGestureSensor:Ldagger/Lazy;

.field public final ambientContextManager:Landroid/app/ambientcontext/AmbientContextManager;

.field public final bgExecutor:Ljava/util/concurrent/Executor;

.field public final bgHandler:Landroid/os/Handler;

.field public final chreGestureSensor:Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor;

.field public gestureSensor:Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;


# direct methods
.method public constructor <init>(Landroid/app/ambientcontext/AmbientContextManager;Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor;Ldagger/Lazy;Ljava/util/concurrent/Executor;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;->ambientContextManager:Landroid/app/ambientcontext/AmbientContextManager;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;->chreGestureSensor:Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;->aiAiCHREGestureSensor:Ldagger/Lazy;

    iput-object p4, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;->bgExecutor:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;->bgHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;->gestureSensor:Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;

    return-void
.end method

.method public static final access$switchSensor(Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;Z)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CHREGestureSensorDelegator switchSensor, AiAi = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Columbus/GestureSensor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;->isListening()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;->gestureSensor:Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;

    invoke-virtual {v1}, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;->stopListening()V

    :cond_0
    iget-object v1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;->gestureSensor:Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;->setGestureListener(Lcom/google/android/systemui/columbus/legacy/sensors/GestureController$gestureSensorListener$1;)V

    iget-object v1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;->gestureSensor:Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;

    invoke-virtual {v1}, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;->close()V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;->aiAiCHREGestureSensor:Ldagger/Lazy;

    check-cast p1, Ldagger/internal/DoubleCheck;

    invoke-virtual {p1}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;->chreGestureSensor:Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor;

    :goto_0
    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;->gestureSensor:Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;->listener:Lcom/google/android/systemui/columbus/legacy/sensors/GestureController$gestureSensorListener$1;

    invoke-virtual {p1, v1}, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;->setGestureListener(Lcom/google/android/systemui/columbus/legacy/sensors/GestureController$gestureSensorListener$1;)V

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;->gestureSensor:Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;->startListening()V

    :cond_2
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;->gestureSensor:Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;

    instance-of v0, p0, Lcom/android/systemui/Dumpable;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/systemui/Dumpable;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/Dumpable;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final isListening()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;->gestureSensor:Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;->isListening()Z

    move-result p0

    return p0
.end method

.method public final setGestureListener(Lcom/google/android/systemui/columbus/legacy/sensors/GestureController$gestureSensorListener$1;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;->gestureSensor:Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CHREGestureSensorDelegator setGestureListener to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Columbus/GestureSensor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;->listener:Lcom/google/android/systemui/columbus/legacy/sensors/GestureController$gestureSensorListener$1;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;->bgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator$startListening$1$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator$startListening$1$1;-><init>(Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;Lcom/google/android/systemui/columbus/legacy/sensors/GestureController$gestureSensorListener$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final startListening()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;->ambientContextManager:Landroid/app/ambientcontext/AmbientContextManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;->bgExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator$startListening$1;

    invoke-direct {v3, p0}, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator$startListening$1;-><init>(Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ambientcontext/AmbientContextManager;->queryAmbientContextServiceStatus(Ljava/util/Set;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;->gestureSensor:Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CHREGestureSensorDelegator startListening, gestureSensor = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Columbus/GestureSensor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;->bgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator$stopListening$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator$stopListening$1;-><init>(Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final stopListening()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;->gestureSensor:Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CHREGestureSensorDelegator stopListening, gestureSensor = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Columbus/GestureSensor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;->bgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator$stopListening$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator$stopListening$1;-><init>(Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
