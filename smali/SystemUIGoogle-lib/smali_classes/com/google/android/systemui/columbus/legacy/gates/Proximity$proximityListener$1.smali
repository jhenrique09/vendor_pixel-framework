.class public final Lcom/google/android/systemui/columbus/legacy/gates/Proximity$proximityListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/gates/Proximity;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/gates/Proximity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/Proximity$proximityListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/Proximity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onThresholdCrossed(Lcom/android/systemui/util/sensors/ThresholdSensorEvent;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/Proximity$proximityListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/Proximity;

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/Proximity;->proximitySensor:Ldagger/Lazy;

    check-cast p1, Ldagger/internal/DoubleCheck;

    invoke-virtual {p1}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/sensors/ProximitySensor;

    check-cast p1, Lcom/android/systemui/util/sensors/ProximitySensorImpl;

    invoke-virtual {p1}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->isNear()Ljava/lang/Boolean;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->setBlocking(Z)V

    return-void
.end method
