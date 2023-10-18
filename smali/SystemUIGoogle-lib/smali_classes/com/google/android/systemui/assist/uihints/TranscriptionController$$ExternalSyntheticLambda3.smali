.class public final synthetic Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/google/android/systemui/assist/uihints/TranscriptionController;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/assist/uihints/TranscriptionController;Ljava/util/List;I)V
    .locals 0

    iput p3, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda3;->f$0:Lcom/google/android/systemui/assist/uihints/TranscriptionController;

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda3;->f$1:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda3;->$r8$classId:I

    sget-object v1, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->CHIPS:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda3;->f$0:Lcom/google/android/systemui/assist/uihints/TranscriptionController;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda3;->f$1:Ljava/util/List;

    iget-object v0, v0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mViewMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/assist/uihints/ChipsContainer;

    iput-object p0, v0, Lcom/google/android/systemui/assist/uihints/ChipsContainer;->mChips:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/android/systemui/assist/uihints/ChipsContainer;->setChipsInternal()V

    iget-object p0, v0, Lcom/google/android/systemui/assist/uihints/ChipsContainer;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "ChipsContainer"

    const-string v0, "Already animating in chips view; ignoring"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {v0, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v3, [F

    fill-array-data v5, :array_1

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v3, [F

    fill-array-data v3, :array_2

    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v3, 0xc8

    invoke-virtual {p0, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :goto_0
    return-void

    :goto_1
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda3;->f$0:Lcom/google/android/systemui/assist/uihints/TranscriptionController;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda3;->f$1:Ljava/util/List;

    iget-object v0, v0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mViewMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/assist/uihints/ChipsContainer;

    iput-object p0, v0, Lcom/google/android/systemui/assist/uihints/ChipsContainer;->mChips:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/android/systemui/assist/uihints/ChipsContainer;->setChipsInternal()V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
