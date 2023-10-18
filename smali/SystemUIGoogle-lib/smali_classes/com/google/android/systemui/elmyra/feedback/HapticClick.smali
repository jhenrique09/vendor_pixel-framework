.class public final Lcom/google/android/systemui/elmyra/feedback/HapticClick;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;


# static fields
.field public static final TOUCH_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;


# instance fields
.field public mLastGestureStage:I

.field public final mProgressVibrationEffect:Landroid/os/VibrationEffect;

.field public final mResolveVibrationEffect:Landroid/os/VibrationEffect;

.field public final mVibratorOptional:Ljava/util/Optional;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/elmyra/feedback/HapticClick;->TOUCH_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Ljava/util/Optional;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/feedback/HapticClick;->mVibratorOptional:Ljava/util/Optional;

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/feedback/HapticClick;->mResolveVibrationEffect:Landroid/os/VibrationEffect;

    const/4 v0, 0x5

    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/feedback/HapticClick;->mProgressVibrationEffect:Landroid/os/VibrationEffect;

    new-instance v0, Lcom/google/android/systemui/elmyra/feedback/HapticClick$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/elmyra/feedback/HapticClick$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/elmyra/feedback/HapticClick;Landroid/content/res/Resources;)V

    invoke-virtual {p2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public final onProgress(IF)V
    .locals 1

    iget p2, p0, Lcom/google/android/systemui/elmyra/feedback/HapticClick;->mLastGestureStage:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    if-ne p1, v0, :cond_0

    new-instance p2, Lcom/google/android/systemui/elmyra/feedback/HapticClick$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/google/android/systemui/elmyra/feedback/HapticClick$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/elmyra/feedback/HapticClick;I)V

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/feedback/HapticClick;->mVibratorOptional:Ljava/util/Optional;

    invoke-virtual {v0, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    iput p1, p0, Lcom/google/android/systemui/elmyra/feedback/HapticClick;->mLastGestureStage:I

    return-void
.end method

.method public final onRelease()V
    .locals 0

    return-void
.end method

.method public final onResolve(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;->mHapticConsumed:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/google/android/systemui/elmyra/feedback/HapticClick$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/google/android/systemui/elmyra/feedback/HapticClick$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/elmyra/feedback/HapticClick;I)V

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/HapticClick;->mVibratorOptional:Ljava/util/Optional;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
