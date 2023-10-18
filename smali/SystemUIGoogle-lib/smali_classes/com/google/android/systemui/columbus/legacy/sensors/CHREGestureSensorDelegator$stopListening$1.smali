.class public final Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator$stopListening$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator$stopListening$1;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator$stopListening$1;->this$0:Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator$stopListening$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator$stopListening$1;->this$0:Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;->gestureSensor:Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;->stopListening()V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator$stopListening$1;->this$0:Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;->gestureSensor:Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;->startListening()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
