.class public final Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator$startListening$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $statusCode:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;Lcom/google/android/systemui/columbus/legacy/sensors/GestureController$gestureSensorListener$1;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator$startListening$1$1;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator$startListening$1$1;->this$0:Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator$startListening$1$1;->$statusCode:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator$startListening$1$1;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator$startListening$1$1;->$statusCode:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator$startListening$1$1;->this$0:Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator$startListening$1$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator$startListening$1$1;->$statusCode:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator$startListening$1$1;->this$0:Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;

    iget-object v2, v0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;->gestureSensor:Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;

    instance-of v2, v2, Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor;

    if-eqz v2, :cond_1

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;->access$switchSensor(Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;Z)V

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator$startListening$1$1;->$statusCode:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_3

    :goto_1
    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator$startListening$1$1;->this$0:Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;->gestureSensor:Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;

    instance-of v0, v0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;->access$switchSensor(Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;Z)V

    :cond_3
    :goto_2
    return-void

    :goto_3
    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator$startListening$1$1;->this$0:Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;

    iget-object v0, v0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;->gestureSensor:Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator$startListening$1$1;->$statusCode:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureController$gestureSensorListener$1;

    invoke-virtual {v0, p0}, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;->setGestureListener(Lcom/google/android/systemui/columbus/legacy/sensors/GestureController$gestureSensorListener$1;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
