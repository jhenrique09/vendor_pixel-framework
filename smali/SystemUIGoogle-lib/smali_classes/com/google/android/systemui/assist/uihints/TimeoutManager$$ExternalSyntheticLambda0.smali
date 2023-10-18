.class public final synthetic Lcom/google/android/systemui/assist/uihints/TimeoutManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/assist/uihints/TimeoutManager;

.field public final synthetic f$1:Ldagger/Lazy;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/assist/uihints/TimeoutManager;Ldagger/Lazy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/TimeoutManager$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/assist/uihints/TimeoutManager;

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/TimeoutManager$$ExternalSyntheticLambda0;->f$1:Ldagger/Lazy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TimeoutManager$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/assist/uihints/TimeoutManager;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TimeoutManager$$ExternalSyntheticLambda0;->f$1:Ldagger/Lazy;

    iget-object v0, v0, Lcom/google/android/systemui/assist/uihints/TimeoutManager;->mTimeoutCallback:Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda4;

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    const-string v0, "TimeoutManager"

    const-string v1, "Timeout occurred, but there was no callback provided"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p0, Ldagger/internal/DoubleCheck;

    invoke-virtual {p0}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->hideAssist()V

    :goto_0
    return-void
.end method
