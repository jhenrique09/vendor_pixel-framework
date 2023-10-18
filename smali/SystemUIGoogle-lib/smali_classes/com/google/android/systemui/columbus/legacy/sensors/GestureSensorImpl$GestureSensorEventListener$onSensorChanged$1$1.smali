.class public final Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl$GestureSensorEventListener$onSensorChanged$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl$GestureSensorEventListener$onSensorChanged$1$1;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl$GestureSensorEventListener$onSensorChanged$1$1;->this$0:Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl$GestureSensorEventListener$onSensorChanged$1$1;->$r8$classId:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl$GestureSensorEventListener$onSensorChanged$1$1;->this$0:Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl;

    new-instance v0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor$DetectionProperties;

    invoke-direct {v0, v1}, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor$DetectionProperties;-><init>(Z)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;->listener:Lcom/google/android/systemui/columbus/legacy/sensors/GestureController$gestureSensorListener$1;

    if-eqz p0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/google/android/systemui/columbus/legacy/sensors/GestureController$gestureSensorListener$1;->onGestureDetected(ILcom/google/android/systemui/columbus/legacy/sensors/GestureSensor$DetectionProperties;)V

    :cond_0
    return-void

    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl$GestureSensorEventListener$onSensorChanged$1$1;->this$0:Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl;

    new-instance v0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor$DetectionProperties;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor$DetectionProperties;-><init>(Z)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;->listener:Lcom/google/android/systemui/columbus/legacy/sensors/GestureController$gestureSensorListener$1;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/systemui/columbus/legacy/sensors/GestureController$gestureSensorListener$1;->onGestureDetected(ILcom/google/android/systemui/columbus/legacy/sensors/GestureSensor$DetectionProperties;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
