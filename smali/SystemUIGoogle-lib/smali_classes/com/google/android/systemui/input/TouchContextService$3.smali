.class public final Lcom/google/android/systemui/input/TouchContextService$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/input/TouchContextService;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/input/TouchContextService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/input/TouchContextService$3;->this$0:Lcom/google/android/systemui/input/TouchContextService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "could not get DisplayInfo for display "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TouchContextService.java"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget p1, v0, Landroid/view/DisplayInfo;->rotation:I

    iget-object p0, p0, Lcom/google/android/systemui/input/TouchContextService$3;->this$0:Lcom/google/android/systemui/input/TouchContextService;

    iget v0, p0, Lcom/google/android/systemui/input/TouchContextService;->mPreviousRotation:I

    if-ne p1, v0, :cond_2

    return-void

    :cond_2
    iput p1, p0, Lcom/google/android/systemui/input/TouchContextService;->mPreviousRotation:I

    invoke-static {p0}, Lcom/google/android/systemui/input/TouchContextService;->-$$Nest$mupdateTouchContext(Lcom/google/android/systemui/input/TouchContextService;)V

    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
