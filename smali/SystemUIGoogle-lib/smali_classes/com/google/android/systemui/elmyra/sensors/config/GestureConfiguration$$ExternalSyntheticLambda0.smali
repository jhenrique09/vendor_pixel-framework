.class public final synthetic Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;

    check-cast p1, Lcom/google/android/systemui/elmyra/sensors/config/ScreenStateAdjustment;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;->mAdjustmentCallback:Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration$$ExternalSyntheticLambda0;

    iput-object p0, p1, Lcom/google/android/systemui/elmyra/sensors/config/ScreenStateAdjustment;->mCallback:Ljava/util/function/Consumer;

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;

    check-cast p1, Lcom/google/android/systemui/elmyra/sensors/config/ScreenStateAdjustment;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;->getUserSensitivity()F

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;->mSensitivity:F

    iget-object p1, p0, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;->mListener:Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration$Listener;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration$Listener;->onGestureConfigurationChanged(Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;)V

    :cond_0
    return-void

    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;->getUserSensitivity()F

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;->mSensitivity:F

    iget-object p1, p0, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;->mListener:Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration$Listener;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration$Listener;->onGestureConfigurationChanged(Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
