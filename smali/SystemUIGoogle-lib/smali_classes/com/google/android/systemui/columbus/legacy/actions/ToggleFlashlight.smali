.class public final Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight;
.super Lcom/google/android/systemui/columbus/legacy/actions/UserAction;
.source ""


# static fields
.field public static final synthetic $r8$clinit:I

.field public static final FLASHLIGHT_TIMEOUT:J


# instance fields
.field public final flashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

.field private final flashlightListener:Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight$flashlightListener$1;

.field public final handler:Landroid/os/Handler;

.field public final tag:Ljava/lang/String;

.field public final turnOffFlashlight:Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight$turnOffFlashlight$1;

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight;->FLASHLIGHT_TIMEOUT:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/FlashlightController;Landroid/os/Handler;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/columbus/legacy/actions/UserAction;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight;->flashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight;->handler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    const-string p1, "ToggleFlashlight"

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight;->tag:Ljava/lang/String;

    new-instance p1, Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight$flashlightListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight$flashlightListener$1;-><init>(Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight;->flashlightListener:Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight$flashlightListener$1;

    new-instance p3, Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight$turnOffFlashlight$1;

    invoke-direct {p3, p0}, Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight$turnOffFlashlight$1;-><init>(Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight;)V

    iput-object p3, p0, Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight;->turnOffFlashlight:Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight$turnOffFlashlight$1;

    check-cast p2, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight;->updateAvailable()V

    return-void
.end method


# virtual methods
.method public final availableOnLockscreen()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getTag$vendor__unbundled_google__packages__SystemUIGoogle__android_common__sysuig()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public final onTrigger(Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor$DetectionProperties;)V
    .locals 3

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight;->turnOffFlashlight:Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight$turnOffFlashlight$1;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight;->flashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mFlashlightEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->setFlashlight(Z)V

    if-eqz v2, :cond_0

    sget-wide v1, Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight;->FLASHLIGHT_TIMEOUT:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    sget-object p1, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_INVOKED_FLASHLIGHT_TOGGLE:Lcom/google/android/systemui/columbus/ColumbusEvent;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public final updateAvailable()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight;->flashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mHasFlashlight:Z

    if-eqz v1, :cond_0

    monitor-enter v0

    :try_start_0
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mTorchAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/legacy/actions/Action;->setAvailable(Z)V

    return-void
.end method
