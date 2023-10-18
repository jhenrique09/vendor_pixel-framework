.class public final synthetic Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration$Listener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGestureConfigurationChanged(Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$SensitivityUpdate;

    invoke-direct {v0}, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$SensitivityUpdate;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;->getSensitivity()F

    move-result p1

    iput p1, v0, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$SensitivityUpdate;->sensitivity:F

    const/16 p1, 0xca

    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;->sendMessageToNanoApp(I[B)V

    return-void
.end method
