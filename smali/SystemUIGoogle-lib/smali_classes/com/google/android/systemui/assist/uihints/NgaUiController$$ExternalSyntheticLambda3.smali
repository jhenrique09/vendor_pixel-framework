.class public final synthetic Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;

    iget-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mShowingAssistUi:Z

    if-eqz v0, :cond_0

    const-string v0, "NgaUiController"

    const-string v1, "Timed out"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mAssistLogger:Lcom/android/systemui/assist/AssistLogger;

    sget-object v1, Lcom/android/systemui/assist/AssistantSessionEvent;->ASSISTANT_SESSION_TIMEOUT_DISMISS:Lcom/android/systemui/assist/AssistantSessionEvent;

    invoke-virtual {v0, v1}, Lcom/android/systemui/assist/AssistLogger;->reportAssistantSessionEvent(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->closeNgaUi()V

    new-instance p0, Landroid/metrics/LogMaker;

    const/16 v0, 0x6b4

    invoke-direct {p0, v0}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    :cond_0
    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->closeNgaUi()V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/systemui/assist/uihints/NgaUiController$1;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController$1;->this$0:Lcom/google/android/systemui/assist/uihints/NgaUiController;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mInvocationInProgress:Z

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mInvocationLightsView:Lcom/google/android/systemui/assist/uihints/AssistantInvocationLightsView;

    invoke-virtual {v0}, Lcom/android/systemui/assist/ui/InvocationLightsView;->hide()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mLastInvocationProgress:F

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mScrimController:Lcom/google/android/systemui/assist/uihints/ScrimController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v0, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    iget v2, v1, Lcom/google/android/systemui/assist/uihints/ScrimController;->mInvocationProgress:F

    cmpl-float v2, v2, v0

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iput v0, v1, Lcom/google/android/systemui/assist/uihints/ScrimController;->mInvocationProgress:F

    invoke-virtual {v1}, Lcom/google/android/systemui/assist/uihints/ScrimController;->refresh()V

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->refresh()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
