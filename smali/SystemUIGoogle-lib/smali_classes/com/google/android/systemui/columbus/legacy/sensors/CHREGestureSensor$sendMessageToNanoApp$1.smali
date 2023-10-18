.class public final Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor$sendMessageToNanoApp$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $bytes:[B

.field public final synthetic $messageType:I

.field public final synthetic $onFail:Lkotlin/jvm/functions/Function0;

.field public final synthetic $onSuccess:Lkotlin/jvm/functions/Function0;

.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor;I[BLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor$sendMessageToNanoApp$1;->this$0:Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor;

    iput p2, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor$sendMessageToNanoApp$1;->$messageType:I

    iput-object p3, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor$sendMessageToNanoApp$1;->$bytes:[B

    iput-object p4, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor$sendMessageToNanoApp$1;->$onFail:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor$sendMessageToNanoApp$1;->$onSuccess:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor$sendMessageToNanoApp$1;->this$0:Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor;

    iget-object v0, v0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor;->contextHubClient:Landroid/hardware/location/ContextHubClient;

    const-string v1, "Columbus/GestureSensor"

    if-nez v0, :cond_0

    const-string p0, "ContextHubClient null"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor$sendMessageToNanoApp$1;->$messageType:I

    iget-object v2, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor$sendMessageToNanoApp$1;->$bytes:[B

    const-wide v3, 0x476f6f676c001019L    # 1.3057659520462483E36

    invoke-static {v3, v4, v0, v2}, Landroid/hardware/location/NanoAppMessage;->createMessageToNanoApp(JI[B)Landroid/hardware/location/NanoAppMessage;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor$sendMessageToNanoApp$1;->this$0:Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor;

    iget-object v2, v2, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor;->contextHubClient:Landroid/hardware/location/ContextHubClient;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Landroid/hardware/location/ContextHubClient;->sendMessageToNanoApp(Landroid/hardware/location/NanoAppMessage;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    iget v2, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor$sendMessageToNanoApp$1;->$messageType:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to send message "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to nanoapp, error code "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor$sendMessageToNanoApp$1;->$onFail:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor$sendMessageToNanoApp$1;->$onSuccess:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_4
    :goto_2
    return-void
.end method
