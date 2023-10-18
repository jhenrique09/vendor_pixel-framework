.class public final synthetic Lcom/google/android/systemui/elmyra/feedback/HapticClick$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/elmyra/feedback/HapticClick;

.field public final synthetic f$1:Landroid/content/res/Resources;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/elmyra/feedback/HapticClick;Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/feedback/HapticClick$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/elmyra/feedback/HapticClick;

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/feedback/HapticClick$$ExternalSyntheticLambda1;->f$1:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/feedback/HapticClick$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/elmyra/feedback/HapticClick;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/HapticClick$$ExternalSyntheticLambda1;->f$1:Landroid/content/res/Resources;

    check-cast p1, Landroid/os/Vibrator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/google/android/systemui/elmyra/feedback/HapticClick;->TOUCH_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    const v2, 0x7f0b0051

    :try_start_0
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget-object v3, v0, Lcom/google/android/systemui/elmyra/feedback/HapticClick;->mProgressVibrationEffect:Landroid/os/VibrationEffect;

    invoke-virtual {p1, v2, v3, v1}, Landroid/os/Vibrator;->setAlwaysOnEffect(ILandroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const v2, 0x7f0b0052

    :try_start_1
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    iget-object v0, v0, Lcom/google/android/systemui/elmyra/feedback/HapticClick;->mResolveVibrationEffect:Landroid/os/VibrationEffect;

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Vibrator;->setAlwaysOnEffect(ILandroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)Z
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
