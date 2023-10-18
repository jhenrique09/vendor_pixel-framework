.class public final Lcom/google/android/systemui/columbus/legacy/sensors/GestureController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public gestureListener:Lcom/google/android/systemui/columbus/legacy/ColumbusService$gestureListener$1;

.field public final gestureSensor:Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;

.field public final gestureSensorListener:Lcom/google/android/systemui/columbus/legacy/sensors/GestureController$gestureSensorListener$1;

.field public final lastTimestampMap:Landroid/util/SparseLongArray;

.field public softGateBlockCount:J

.field public final softGateListener:Lcom/google/android/systemui/columbus/legacy/sensors/GestureController$softGateListener$1;

.field public final softGates:Ljava/util/Set;

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;Ljava/util/Set;Lcom/android/systemui/statusbar/commandline/CommandRegistry;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureController;->gestureSensor:Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureController;->softGates:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureController;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    new-instance p2, Landroid/util/SparseLongArray;

    invoke-direct {p2}, Landroid/util/SparseLongArray;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureController;->lastTimestampMap:Landroid/util/SparseLongArray;

    new-instance p2, Lcom/google/android/systemui/columbus/legacy/sensors/GestureController$gestureSensorListener$1;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/columbus/legacy/sensors/GestureController$gestureSensorListener$1;-><init>(Lcom/google/android/systemui/columbus/legacy/sensors/GestureController;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureController;->gestureSensorListener:Lcom/google/android/systemui/columbus/legacy/sensors/GestureController$gestureSensorListener$1;

    new-instance p4, Lcom/google/android/systemui/columbus/legacy/sensors/GestureController$softGateListener$1;

    invoke-direct {p4}, Lcom/google/android/systemui/columbus/legacy/sensors/GestureController$softGateListener$1;-><init>()V

    iput-object p4, p0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureController;->softGateListener:Lcom/google/android/systemui/columbus/legacy/sensors/GestureController$softGateListener$1;

    invoke-virtual {p1, p2}, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;->setGestureListener(Lcom/google/android/systemui/columbus/legacy/sensors/GestureController$gestureSensorListener$1;)V

    new-instance p1, Lcom/google/android/systemui/columbus/legacy/sensors/GestureController$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/legacy/sensors/GestureController$1;-><init>(Lcom/google/android/systemui/columbus/legacy/sensors/GestureController;)V

    const-string p0, "quick-tap"

    invoke-virtual {p3, p0, p1}, Lcom/android/systemui/statusbar/commandline/CommandRegistry;->registerCommand(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    iget-wide v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureController;->softGateBlockCount:J

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  Soft Blocks: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  Gesture Sensor: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureController;->gestureSensor:Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    instance-of v0, p0, Lcom/android/systemui/Dumpable;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/systemui/Dumpable;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/Dumpable;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method
