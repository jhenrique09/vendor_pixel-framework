.class public final Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator$startListening$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator$startListening$1;->this$0:Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Integer;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CHREGestureSensorDelegator received statusCode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Columbus/GestureSensor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator$startListening$1;->this$0:Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;->bgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator$startListening$1$1;

    invoke-direct {v1, p1, p0}, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator$startListening$1$1;-><init>(Ljava/lang/Integer;Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensorDelegator;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
