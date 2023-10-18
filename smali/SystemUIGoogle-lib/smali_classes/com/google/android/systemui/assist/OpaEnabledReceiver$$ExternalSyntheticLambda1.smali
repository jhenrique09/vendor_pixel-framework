.class public final synthetic Lcom/google/android/systemui/assist/OpaEnabledReceiver$$ExternalSyntheticLambda1;
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

    iput p1, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p2, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;

    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->dispatchOpaEnabledState(Landroid/content/Context;)V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
