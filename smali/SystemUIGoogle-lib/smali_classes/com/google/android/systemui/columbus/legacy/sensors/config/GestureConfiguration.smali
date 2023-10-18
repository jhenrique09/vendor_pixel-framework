.class public final Lcom/google/android/systemui/columbus/legacy/sensors/config/GestureConfiguration;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final SENSITIVITY_RANGE:Landroid/util/Range;


# instance fields
.field public final adjustmentCallback:Lkotlin/jvm/functions/Function1;

.field public final adjustments:Ljava/util/List;

.field public listener:Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor$initialize$1;

.field public sensitivity:F

.field public final sensorConfiguration:Lcom/google/android/systemui/columbus/legacy/sensors/config/SensorConfiguration;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/columbus/legacy/sensors/config/GestureConfiguration;->SENSITIVITY_RANGE:Landroid/util/Range;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/google/android/systemui/columbus/legacy/sensors/config/SensorConfiguration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/config/GestureConfiguration;->adjustments:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/sensors/config/GestureConfiguration;->sensorConfiguration:Lcom/google/android/systemui/columbus/legacy/sensors/config/SensorConfiguration;

    new-instance v0, Lcom/google/android/systemui/columbus/legacy/sensors/config/GestureConfiguration$adjustmentCallback$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/columbus/legacy/sensors/config/GestureConfiguration$adjustmentCallback$1;-><init>(Lcom/google/android/systemui/columbus/legacy/sensors/config/GestureConfiguration;)V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/config/GestureConfiguration;->adjustmentCallback:Lkotlin/jvm/functions/Function1;

    iget p2, p2, Lcom/google/android/systemui/columbus/legacy/sensors/config/SensorConfiguration;->defaultSensitivityValue:F

    iput p2, p0, Lcom/google/android/systemui/columbus/legacy/sensors/config/GestureConfiguration;->sensitivity:F

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/systemui/columbus/legacy/sensors/config/LowSensitivitySettingAdjustment;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/config/GestureConfiguration;->adjustmentCallback:Lkotlin/jvm/functions/Function1;

    iput-object v0, p2, Lcom/google/android/systemui/columbus/legacy/sensors/config/LowSensitivitySettingAdjustment;->callback:Lkotlin/jvm/functions/Function1;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/legacy/sensors/config/GestureConfiguration;->updateSensitivity()V

    return-void
.end method


# virtual methods
.method public final updateSensitivity()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/config/GestureConfiguration;->sensorConfiguration:Lcom/google/android/systemui/columbus/legacy/sensors/config/SensorConfiguration;

    iget v0, v0, Lcom/google/android/systemui/columbus/legacy/sensors/config/SensorConfiguration;->defaultSensitivityValue:F

    iget-object v1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/config/GestureConfiguration;->adjustments:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/systemui/columbus/legacy/sensors/config/LowSensitivitySettingAdjustment;

    iget-boolean v3, v2, Lcom/google/android/systemui/columbus/legacy/sensors/config/LowSensitivitySettingAdjustment;->useLowSensitivity:Z

    if-eqz v3, :cond_0

    iget-object v0, v2, Lcom/google/android/systemui/columbus/legacy/sensors/config/LowSensitivitySettingAdjustment;->sensorConfiguration:Lcom/google/android/systemui/columbus/legacy/sensors/config/SensorConfiguration;

    iget v0, v0, Lcom/google/android/systemui/columbus/legacy/sensors/config/SensorConfiguration;->lowSensitivityValue:F

    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sget-object v2, Lcom/google/android/systemui/columbus/legacy/sensors/config/GestureConfiguration;->SENSITIVITY_RANGE:Landroid/util/Range;

    invoke-virtual {v2, v0}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/config/GestureConfiguration;->sensitivity:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3d4ccccd    # 0.05f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    iput v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/config/GestureConfiguration;->sensitivity:F

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/config/GestureConfiguration;->listener:Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor$initialize$1;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor$initialize$1;->this$0:Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$RecognizerStart;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$RecognizerStart;-><init>(I)V

    iget p0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/config/GestureConfiguration;->sensitivity:F

    iput p0, v1, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$RecognizerStart;->sensitivity:F

    invoke-static {v1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object p0

    const/16 v1, 0xc8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2, v2}, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor;->sendMessageToNanoApp(I[BLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    :cond_2
    return-void
.end method
