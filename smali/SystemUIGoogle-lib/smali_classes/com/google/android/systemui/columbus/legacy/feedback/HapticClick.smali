.class public final Lcom/google/android/systemui/columbus/legacy/feedback/HapticClick;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/systemui/columbus/legacy/feedback/FeedbackEffect;


# static fields
.field public static final GESTURE_DETECTED_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

.field public static final SONIFICATION_AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field public final vibrator:Ldagger/Lazy;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x5

    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/columbus/legacy/feedback/HapticClick;->GESTURE_DETECTED_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/columbus/legacy/feedback/HapticClick;->SONIFICATION_AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void
.end method

.method public constructor <init>(Ldagger/Lazy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/feedback/HapticClick;->vibrator:Ldagger/Lazy;

    return-void
.end method


# virtual methods
.method public final onGestureDetected(ILcom/google/android/systemui/columbus/legacy/sensors/GestureSensor$DetectionProperties;)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget-boolean p2, p2, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor$DetectionProperties;->isHapticConsumed:Z

    if-ne p2, v0, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/feedback/HapticClick;->vibrator:Ldagger/Lazy;

    check-cast p0, Ldagger/internal/DoubleCheck;

    invoke-virtual {p0}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    sget-object p1, Lcom/google/android/systemui/columbus/legacy/feedback/HapticClick;->GESTURE_DETECTED_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    sget-object p2, Lcom/google/android/systemui/columbus/legacy/feedback/HapticClick;->SONIFICATION_AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {p0, p1, p2}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    :cond_1
    return-void
.end method
