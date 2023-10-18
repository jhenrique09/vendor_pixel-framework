.class public final synthetic Lcom/google/android/systemui/assist/uihints/TouchInsideHandler$$ExternalSyntheticLambda0;
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

    iput p1, p0, Lcom/google/android/systemui/assist/uihints/TouchInsideHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/TouchInsideHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/google/android/systemui/assist/uihints/TouchInsideHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TouchInsideHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Ldagger/Lazy;

    check-cast p0, Ldagger/internal/DoubleCheck;

    invoke-virtual {p0}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->hideAssist()V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TouchInsideHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;->mGuardLocked:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
