.class public final Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight$turnOffFlashlight$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight$turnOffFlashlight$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight$turnOffFlashlight$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/actions/ToggleFlashlight;->flashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    const/4 v0, 0x0

    check-cast p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->setFlashlight(Z)V

    return-void
.end method
