.class public final Lcom/google/android/systemui/columbus/legacy/gates/Proximity;
.super Lcom/google/android/systemui/columbus/legacy/gates/Gate;
.source ""


# instance fields
.field public final proximityListener:Lcom/google/android/systemui/columbus/legacy/gates/Proximity$proximityListener$1;

.field public final proximitySensor:Ldagger/Lazy;


# direct methods
.method public constructor <init>(Ldagger/Lazy;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/Proximity;->proximitySensor:Ldagger/Lazy;

    new-instance p1, Lcom/google/android/systemui/columbus/legacy/gates/Proximity$proximityListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/legacy/gates/Proximity$proximityListener$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/Proximity;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/Proximity;->proximityListener:Lcom/google/android/systemui/columbus/legacy/gates/Proximity$proximityListener$1;

    return-void
.end method


# virtual methods
.method public final onActivate()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/Proximity;->proximitySensor:Ldagger/Lazy;

    move-object v1, v0

    check-cast v1, Ldagger/internal/DoubleCheck;

    invoke-virtual {v1}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/sensors/ProximitySensor;

    iget-object v2, p0, Lcom/google/android/systemui/columbus/legacy/gates/Proximity;->proximityListener:Lcom/google/android/systemui/columbus/legacy/gates/Proximity$proximityListener$1;

    invoke-interface {v1, v2}, Lcom/android/systemui/util/sensors/ThresholdSensor;->register(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V

    check-cast v0, Ldagger/internal/DoubleCheck;

    invoke-virtual {v0}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/sensors/ProximitySensor;

    check-cast v0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->isNear()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->setBlocking(Z)V

    return-void
.end method

.method public final onDeactivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/Proximity;->proximitySensor:Ldagger/Lazy;

    check-cast v0, Ldagger/internal/DoubleCheck;

    invoke-virtual {v0}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/sensors/ProximitySensor;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/Proximity;->proximityListener:Lcom/google/android/systemui/columbus/legacy/gates/Proximity$proximityListener$1;

    invoke-interface {v0, p0}, Lcom/android/systemui/util/sensors/ThresholdSensor;->unregister(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V

    return-void
.end method
