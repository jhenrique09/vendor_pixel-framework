.class public final Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$AudioInfoListener;
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$EdgeLightsInfoListener;


# instance fields
.field public final mAssistLogger:Lcom/android/systemui/assist/AssistLogger;

.field public final mContext:Landroid/content/Context;

.field public final mEdgeLightsView:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

.field public mThrottler:Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda4;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/assist/AssistLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;->mAssistLogger:Lcom/android/systemui/assist/AssistLogger;

    const p1, 0x7f0a0295

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;->mEdgeLightsView:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

    return-void
.end method


# virtual methods
.method public final onAudioInfo(FF)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;->mEdgeLightsView:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    invoke-interface {p0, p2}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;->onAudioLevelUpdate(F)V

    return-void
.end method

.method public final onEdgeLightsInfo(Ljava/lang/String;Z)V
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const-string v4, "FULL_LISTENING"

    const/4 v5, 0x1

    const/4 v6, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v0, "FULFILL_PERIMETER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v0, "HALF_LISTENING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1

    :sswitch_3
    const-string v0, "GONE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v5

    goto :goto_1

    :sswitch_4
    const-string v0, "FULFILL_BOTTOM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v0, v6

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    const-string v7, "EdgeLightsController"

    iget-object v8, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    if-eqz v0, :cond_9

    if-eq v0, v5, :cond_8

    if-eq v0, v3, :cond_7

    if-eq v0, v2, :cond_6

    if-eq v0, v1, :cond_5

    move-object p2, v9

    goto :goto_2

    :cond_5
    new-instance p2, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;

    invoke-direct {p2, v8, v6}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;-><init>(Landroid/content/Context;Z)V

    goto :goto_2

    :cond_6
    new-instance p2, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;

    invoke-direct {p2, v8}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;-><init>(Landroid/content/Context;)V

    goto :goto_2

    :cond_7
    const-string p2, "Rendering full instead of half listening for now."

    invoke-static {v7, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;

    invoke-direct {p2, v8, v5}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;-><init>(Landroid/content/Context;Z)V

    goto :goto_2

    :cond_8
    new-instance p2, Lcom/google/android/systemui/assist/uihints/edgelights/mode/Gone;

    invoke-direct {p2}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/Gone;-><init>()V

    goto :goto_2

    :cond_9
    new-instance v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;

    invoke-direct {v0, v8, p2}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;-><init>(Landroid/content/Context;Z)V

    move-object p2, v0

    :goto_2
    if-nez p2, :cond_a

    const-string p0, "Invalid edge lights mode: "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    new-instance v0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)V

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;->mThrottler:Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda4;

    if-nez p0, :cond_b

    invoke-virtual {v0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController$$ExternalSyntheticLambda0;->run()V

    goto :goto_3

    :cond_b
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;

    iget-object p2, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mInvocationAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p2

    if-eqz p2, :cond_c

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mPendingEdgeLightsModeChange:Ljava/lang/Runnable;

    goto :goto_3

    :cond_c
    iget-boolean p2, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mShowingAssistUi:Z

    if-nez p2, :cond_d

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    iput-boolean v5, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mInvocationInProgress:Z

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v6, p1}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->onInvocationProgress(IF)V

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mPendingEdgeLightsModeChange:Ljava/lang/Runnable;

    goto :goto_3

    :cond_d
    iput-object v9, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mPendingEdgeLightsModeChange:Ljava/lang/Runnable;

    invoke-virtual {v0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController$$ExternalSyntheticLambda0;->run()V

    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x71e7a916 -> :sswitch_4
        0x21789f -> :sswitch_3
        0x19a03f8f -> :sswitch_2
        0x52ac46de -> :sswitch_1
        0x757d5eeb -> :sswitch_0
    .end sparse-switch
.end method
