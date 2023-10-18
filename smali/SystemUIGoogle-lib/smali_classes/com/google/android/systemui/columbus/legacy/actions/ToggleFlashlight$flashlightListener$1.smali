.class public final Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight$flashlightListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight$flashlightListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFlashlightAvailabilityChanged(Z)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight$flashlightListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight;->turnOffFlashlight:Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight$turnOffFlashlight$1;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    sget p1, Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight;->updateAvailable()V

    return-void
.end method

.method public final onFlashlightChanged(Z)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight$flashlightListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight;->turnOffFlashlight:Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight$turnOffFlashlight$1;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    sget p1, Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight;->updateAvailable()V

    return-void
.end method

.method public final onFlashlightError()V
    .locals 2

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight$flashlightListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight;->turnOffFlashlight:Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight$turnOffFlashlight$1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight;->updateAvailable()V

    return-void
.end method
