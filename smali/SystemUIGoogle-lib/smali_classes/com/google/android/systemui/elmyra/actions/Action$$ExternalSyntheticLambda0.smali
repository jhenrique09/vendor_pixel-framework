.class public final synthetic Lcom/google/android/systemui/elmyra/actions/Action$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/google/android/systemui/elmyra/actions/Action;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/elmyra/actions/Action;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/systemui/elmyra/actions/Action$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/Action$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/elmyra/actions/Action;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/google/android/systemui/elmyra/actions/Action$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/Action$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/elmyra/actions/Action;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/Action;->mListener:Lcom/google/android/systemui/elmyra/ElmyraService$1;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/ElmyraService$1;->this$0:Lcom/google/android/systemui/elmyra/ElmyraService;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/ElmyraService;->updateSensorListener()V

    :cond_0
    return-void

    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/Action$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/elmyra/actions/Action;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/systemui/elmyra/actions/Action;->updateFeedbackEffects(IF)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
