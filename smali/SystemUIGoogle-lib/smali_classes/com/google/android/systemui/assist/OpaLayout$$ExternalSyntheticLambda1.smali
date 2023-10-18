.class public final synthetic Lcom/google/android/systemui/assist/OpaLayout$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/google/android/systemui/assist/OpaLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/assist/OpaLayout;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/systemui/assist/OpaLayout$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/assist/OpaLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/google/android/systemui/assist/OpaLayout$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaLayout$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/assist/OpaLayout;

    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/OpaLayout;->startDiamondAnimation()V

    :cond_0
    return-void

    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaLayout$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/assist/OpaLayout;

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/OpaLayout;->getOpaEnabled()Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
