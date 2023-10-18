.class public final Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler$NgaInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source ""


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;Landroid/view/InputChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler$NgaInputEventReceiver;->this$0:Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 9

    instance-of v0, p1, Landroid/view/MotionEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler$NgaInputEventReceiver;->this$0:Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;

    move-object v2, p1

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    new-instance v4, Landroid/graphics/Region;

    invoke-direct {v4}, Landroid/graphics/Region;-><init>()V

    iget-object v5, v0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;->mTouchInsideRegions:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/systemui/assist/uihints/input/TouchInsideRegion;

    invoke-interface {v6}, Lcom/google/android/systemui/assist/uihints/input/TouchInsideRegion;->getTouchInsideRegion()Ljava/util/Optional;

    move-result-object v6

    new-instance v7, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler$$ExternalSyntheticLambda0;

    invoke-direct {v7, v1, v4}, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler$$ExternalSyntheticLambda0;-><init>(ILandroid/graphics/Region;)V

    invoke-virtual {v6, v7}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    iget-object v5, v0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;->mTouchActionRegions:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/systemui/assist/uihints/input/TouchActionRegion;

    invoke-interface {v6}, Lcom/google/android/systemui/assist/uihints/input/TouchActionRegion;->getTouchActionRegion()Ljava/util/Optional;

    move-result-object v6

    new-instance v7, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler$$ExternalSyntheticLambda0;

    const/4 v8, 0x1

    invoke-direct {v7, v8, v4}, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler$$ExternalSyntheticLambda0;-><init>(ILandroid/graphics/Region;)V

    invoke-virtual {v6, v7}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v3, v2}, Landroid/graphics/Region;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, v0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;->mTouchInsideHandler:Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;

    invoke-virtual {v0}, Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;->onTouchInside()V

    :cond_2
    invoke-virtual {p0, p1, v1}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void
.end method
