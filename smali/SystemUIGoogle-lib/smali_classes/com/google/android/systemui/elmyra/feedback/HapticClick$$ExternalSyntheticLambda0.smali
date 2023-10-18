.class public final synthetic Lcom/google/android/systemui/elmyra/feedback/HapticClick$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/google/android/systemui/elmyra/feedback/HapticClick;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/elmyra/feedback/HapticClick;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/systemui/elmyra/feedback/HapticClick$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/feedback/HapticClick$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/elmyra/feedback/HapticClick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/google/android/systemui/elmyra/feedback/HapticClick$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/HapticClick$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/elmyra/feedback/HapticClick;

    check-cast p1, Landroid/os/Vibrator;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/HapticClick;->mProgressVibrationEffect:Landroid/os/VibrationEffect;

    sget-object v0, Lcom/google/android/systemui/elmyra/feedback/HapticClick;->TOUCH_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    invoke-virtual {p1, p0, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/HapticClick$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/elmyra/feedback/HapticClick;

    check-cast p1, Landroid/os/Vibrator;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/HapticClick;->mResolveVibrationEffect:Landroid/os/VibrationEffect;

    sget-object v0, Lcom/google/android/systemui/elmyra/feedback/HapticClick;->TOUCH_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    invoke-virtual {p1, p0, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
