.class public final Lcom/google/android/systemui/assist/OpaLayout$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/google/android/systemui/assist/OpaLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/assist/OpaLayout;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/systemui/assist/OpaLayout$3;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout$3;->this$0:Lcom/google/android/systemui/assist/OpaLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    iget v0, p0, Lcom/google/android/systemui/assist/OpaLayout$3;->$r8$classId:I

    const-wide/16 v1, 0x1000

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    const-string p1, "OpaLayout.cancel.line"

    invoke-static {v1, v2, p1}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaLayout$3;->this$0:Lcom/google/android/systemui/assist/OpaLayout;

    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    return-void

    :pswitch_1
    const-string p0, "OpaLayout.cancel.collapse"

    invoke-static {v1, v2, p0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    return-void

    :pswitch_2
    const-string p0, "OpaLayout.cancel.retract"

    invoke-static {v1, v2, p0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    return-void

    :pswitch_3
    const-string p1, "OpaLayout.cancel.diamond"

    invoke-static {v1, v2, p1}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaLayout$3;->this$0:Lcom/google/android/systemui/assist/OpaLayout;

    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 11

    iget p1, p0, Lcom/google/android/systemui/assist/OpaLayout$3;->$r8$classId:I

    const-wide/16 v0, 0x1000

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaLayout$3;->this$0:Lcom/google/android/systemui/assist/OpaLayout;

    invoke-static {p0}, Lcom/google/android/systemui/assist/OpaLayout;->-$$Nest$mstartCollapseAnimation(Lcom/google/android/systemui/assist/OpaLayout;)V

    return-void

    :pswitch_1
    const-string p1, "OpaLayout.end.line"

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaLayout$3;->this$0:Lcom/google/android/systemui/assist/OpaLayout;

    invoke-static {p0}, Lcom/google/android/systemui/assist/OpaLayout;->-$$Nest$mstartCollapseAnimation(Lcom/google/android/systemui/assist/OpaLayout;)V

    return-void

    :pswitch_2
    const-string p1, "OpaLayout.end.collapse"

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout$3;->this$0:Lcom/google/android/systemui/assist/OpaLayout;

    iget-object p1, p1, Lcom/google/android/systemui/assist/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaLayout$3;->this$0:Lcom/google/android/systemui/assist/OpaLayout;

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/OpaLayout;->skipToStartingValue()V

    return-void

    :pswitch_3
    const-string p1, "OpaLayout.end.retract"

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout$3;->this$0:Lcom/google/android/systemui/assist/OpaLayout;

    iget-object p1, p1, Lcom/google/android/systemui/assist/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaLayout$3;->this$0:Lcom/google/android/systemui/assist/OpaLayout;

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/OpaLayout;->skipToStartingValue()V

    return-void

    :pswitch_4
    const-string p1, "OpaLayout.end.diamond"

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaLayout$3;->this$0:Lcom/google/android/systemui/assist/OpaLayout;

    sget p1, Lcom/google/android/systemui/assist/OpaLayout;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/OpaLayout;->allowAnimations()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    iget-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-boolean v1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mIsVertical:Z

    const/16 v2, 0x85

    const/16 v3, 0xe1

    const v4, 0x7f070756

    const v5, 0x7f070758

    const v6, 0x7f070757

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mRed:Landroid/view/View;

    sget-object v7, Landroid/view/View;->Y:Landroid/util/Property;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v8

    iget-object v9, p0, Lcom/google/android/systemui/assist/OpaLayout;->mResources:Landroid/content/res/Resources;

    sget-object v10, Lcom/google/android/systemui/assist/OpaUtils;->INTERPOLATOR_40_40:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v8

    sget-object v8, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-static {v1, v7, v9, v3, v8}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mRed:Landroid/view/View;

    sget-object v7, Landroid/view/View;->X:Landroid/util/Property;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v9

    iget-object v10, p0, Lcom/google/android/systemui/assist/OpaLayout;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v9

    invoke-static {v1, v7, v10, v2, v8}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mBlue:Landroid/view/View;

    sget-object v7, Landroid/view/View;->Y:Landroid/util/Property;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v9

    iget-object v10, p0, Lcom/google/android/systemui/assist/OpaLayout;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v10, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v9

    invoke-static {v1, v7, v10, v3, v8}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mYellow:Landroid/view/View;

    sget-object v7, Landroid/view/View;->Y:Landroid/util/Property;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v9

    iget-object v10, p0, Lcom/google/android/systemui/assist/OpaLayout;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v10, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    int-to-float v6, v6

    neg-float v6, v6

    add-float/2addr v6, v9

    invoke-static {v1, v7, v6, v3, v8}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mYellow:Landroid/view/View;

    sget-object v6, Landroid/view/View;->X:Landroid/util/Property;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v7

    iget-object v9, p0, Lcom/google/android/systemui/assist/OpaLayout;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    int-to-float v5, v5

    neg-float v5, v5

    add-float/2addr v5, v7

    invoke-static {v1, v6, v5, v2, v8}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGreen:Landroid/view/View;

    sget-object v2, Landroid/view/View;->Y:Landroid/util/Property;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/google/android/systemui/assist/OpaLayout;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    int-to-float v4, v4

    neg-float v4, v4

    add-float/2addr v4, v5

    invoke-static {v1, v2, v4, v3, v8}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mRed:Landroid/view/View;

    sget-object v7, Landroid/view/View;->X:Landroid/util/Property;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v8

    iget-object v9, p0, Lcom/google/android/systemui/assist/OpaLayout;->mResources:Landroid/content/res/Resources;

    sget-object v10, Lcom/google/android/systemui/assist/OpaUtils;->INTERPOLATOR_40_40:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    int-to-float v9, v9

    neg-float v9, v9

    add-float/2addr v9, v8

    sget-object v8, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-static {v1, v7, v9, v3, v8}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mRed:Landroid/view/View;

    sget-object v7, Landroid/view/View;->Y:Landroid/util/Property;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v9

    iget-object v10, p0, Lcom/google/android/systemui/assist/OpaLayout;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v9

    invoke-static {v1, v7, v10, v2, v8}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mBlue:Landroid/view/View;

    sget-object v7, Landroid/view/View;->X:Landroid/util/Property;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v9

    iget-object v10, p0, Lcom/google/android/systemui/assist/OpaLayout;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v10, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    int-to-float v10, v10

    neg-float v10, v10

    add-float/2addr v10, v9

    invoke-static {v1, v7, v10, v3, v8}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mYellow:Landroid/view/View;

    sget-object v7, Landroid/view/View;->X:Landroid/util/Property;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v9

    iget-object v10, p0, Lcom/google/android/systemui/assist/OpaLayout;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v10, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v9

    invoke-static {v1, v7, v6, v3, v8}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mYellow:Landroid/view/View;

    sget-object v6, Landroid/view/View;->Y:Landroid/util/Property;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v7

    iget-object v9, p0, Lcom/google/android/systemui/assist/OpaLayout;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    int-to-float v5, v5

    neg-float v5, v5

    add-float/2addr v5, v7

    invoke-static {v1, v6, v5, v2, v8}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGreen:Landroid/view/View;

    sget-object v2, Landroid/view/View;->X:Landroid/util/Property;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/google/android/systemui/assist/OpaLayout;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v5

    invoke-static {v1, v2, v4, v3, v8}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mWhite:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/FrameLayout;->SCALE_X:Landroid/util/Property;

    iget-object v3, p0, Lcom/google/android/systemui/assist/OpaLayout;->HOME_DISAPPEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/4 v4, 0x0

    const/16 v5, 0x53

    invoke-static {v1, v2, v4, v5, v3}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mWhite:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/FrameLayout;->SCALE_Y:Landroid/util/Property;

    iget-object v3, p0, Lcom/google/android/systemui/assist/OpaLayout;->HOME_DISAPPEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, v4, v5, v3}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mWhiteCutout:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/FrameLayout;->SCALE_X:Landroid/util/Property;

    iget-object v3, p0, Lcom/google/android/systemui/assist/OpaLayout;->HOME_DISAPPEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, v4, v5, v3}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mWhiteCutout:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/FrameLayout;->SCALE_Y:Landroid/util/Property;

    iget-object v3, p0, Lcom/google/android/systemui/assist/OpaLayout;->HOME_DISAPPEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, v4, v5, v3}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mHalo:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/FrameLayout;->SCALE_X:Landroid/util/Property;

    iget-object v3, p0, Lcom/google/android/systemui/assist/OpaLayout;->HOME_DISAPPEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, v4, v5, v3}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mHalo:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/FrameLayout;->SCALE_Y:Landroid/util/Property;

    iget-object v3, p0, Lcom/google/android/systemui/assist/OpaLayout;->HOME_DISAPPEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, v4, v5, v3}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/google/android/systemui/assist/OpaLayout;->getLongestAnim(Landroid/util/ArraySet;)Landroid/animation/Animator;

    move-result-object v1

    new-instance v2, Lcom/google/android/systemui/assist/OpaLayout$3;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Lcom/google/android/systemui/assist/OpaLayout$3;-><init>(Lcom/google/android/systemui/assist/OpaLayout;I)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    iput v3, p0, Lcom/google/android/systemui/assist/OpaLayout;->mAnimationState:I

    iget-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/assist/OpaLayout;->startAll(Landroid/util/ArraySet;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/systemui/assist/OpaLayout;->skipToStartingValue()V

    :goto_1
    return-void

    :goto_2
    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaLayout$3;->this$0:Lcom/google/android/systemui/assist/OpaLayout;

    invoke-static {p0}, Lcom/google/android/systemui/assist/OpaLayout;->-$$Nest$mstartCollapseAnimation(Lcom/google/android/systemui/assist/OpaLayout;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    iget v0, p0, Lcom/google/android/systemui/assist/OpaLayout$3;->$r8$classId:I

    const-wide/16 v1, 0x1000

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    const-string p0, "OpaLayout.start.line"

    invoke-static {v1, v2, p0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    return-void

    :pswitch_1
    const-string p0, "OpaLayout.start.collapse"

    invoke-static {v1, v2, p0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    return-void

    :pswitch_2
    const-string p0, "OpaLayout.start.retract"

    invoke-static {v1, v2, p0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    return-void

    :pswitch_3
    const-string p0, "OpaLayout.start.diamond"

    invoke-static {v1, v2, p0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
