.class public Lcom/google/android/systemui/assist/LockscreenOpaLayout;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final INTERPOLATOR_5_100:Landroid/view/animation/Interpolator;

.field public final mAnimatedViews:Ljava/util/ArrayList;

.field public mBlue:Landroid/view/View;

.field public mCannedAnimatorSet:Landroid/animation/AnimatorSet;

.field public final mCurrentAnimators:Landroid/util/ArraySet;

.field public mGestureAnimatorSet:Landroid/animation/AnimatorSet;

.field public mGestureState:I

.field public mGreen:Landroid/view/View;

.field public mLineAnimatorSet:Landroid/animation/AnimatorSet;

.field public mRed:Landroid/view/View;

.field public mResources:Landroid/content/res/Resources;

.field public mYellow:Landroid/view/View;


# direct methods
.method public static -$$Nest$mgetLineAnimatorSet(Lcom/google/android/systemui/assist/LockscreenOpaLayout;)Landroid/animation/AnimatorSet;
    .locals 7

    iget-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mLineAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    iget-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mLineAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object p0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mLineAnimatorSet:Landroid/animation/AnimatorSet;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mLineAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mRed:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->INTERPOLATOR_5_100:Landroid/view/animation/Interpolator;

    iget-object v3, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mResources:Landroid/content/res/Resources;

    sget-object v4, Lcom/google/android/systemui/assist/OpaUtils;->INTERPOLATOR_40_40:Landroid/view/animation/Interpolator;

    const v4, 0x7f07075d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    int-to-float v3, v3

    neg-float v3, v3

    iget-object v5, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mRed:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v5

    const/16 v6, 0x16e

    invoke-static {v1, v2, v3, v5, v6}, Lcom/google/android/systemui/assist/OpaUtils;->getTranslationObjectAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FFI)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mYellow:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->INTERPOLATOR_5_100:Landroid/view/animation/Interpolator;

    iget-object v3, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mYellow:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    invoke-static {v1, v2, v3, v4, v6}, Lcom/google/android/systemui/assist/OpaUtils;->getTranslationObjectAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FFI)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGreen:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->INTERPOLATOR_5_100:Landroid/view/animation/Interpolator;

    iget-object v3, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f07075c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v5, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGreen:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v5

    invoke-static {v1, v2, v3, v5, v6}, Lcom/google/android/systemui/assist/OpaUtils;->getTranslationObjectAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FFI)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mBlue:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->INTERPOLATOR_5_100:Landroid/view/animation/Interpolator;

    iget-object v3, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    int-to-float v3, v3

    neg-float v3, v3

    iget-object v4, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mBlue:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    invoke-static {v1, v2, v3, v4, v6}, Lcom/google/android/systemui/assist/OpaUtils;->getTranslationObjectAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FFI)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mLineAnimatorSet:Landroid/animation/AnimatorSet;

    :goto_0
    return-object p0
.end method

.method public static -$$Nest$mstartCollapseAnimation(Lcom/google/android/systemui/assist/LockscreenOpaLayout;)V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    iget-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iget-object v2, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mRed:Landroid/view/View;

    sget-object v3, Lcom/google/android/systemui/assist/OpaUtils;->INTERPOLATOR_40_OUT:Landroid/view/animation/Interpolator;

    const/16 v4, 0x85

    invoke-static {v2, v3, v4}, Lcom/google/android/systemui/assist/OpaUtils;->getTranslationAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mBlue:Landroid/view/View;

    const/16 v5, 0x96

    invoke-static {v2, v3, v5}, Lcom/google/android/systemui/assist/OpaUtils;->getTranslationAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mYellow:Landroid/view/View;

    invoke-static {v2, v3, v4}, Lcom/google/android/systemui/assist/OpaUtils;->getTranslationAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGreen:Landroid/view/View;

    invoke-static {v2, v3, v5}, Lcom/google/android/systemui/assist/OpaUtils;->getTranslationAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/google/android/systemui/assist/OpaUtils;->getLongestAnim(Landroid/util/ArraySet;)Landroid/animation/Animator;

    move-result-object v2

    new-instance v3, Lcom/google/android/systemui/assist/LockscreenOpaLayout$1;

    const/4 v4, 0x2

    invoke-direct {v3, v4, p0}, Lcom/google/android/systemui/assist/LockscreenOpaLayout$1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    iget-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    goto :goto_0

    :cond_0
    iput v4, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureState:I

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->skipToStartingValue()V

    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    const v1, 0x3f733333    # 0.95f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v2, v0, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->INTERPOLATOR_5_100:Landroid/view/animation/Interpolator;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureState:I

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/4 p2, 0x0

    const v0, 0x3f733333    # 0.95f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p1, v1, p2, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->INTERPOLATOR_5_100:Landroid/view/animation/Interpolator;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureState:I

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/4 p2, 0x0

    const p3, 0x3f733333    # 0.95f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, p2, p3, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->INTERPOLATOR_5_100:Landroid/view/animation/Interpolator;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureState:I

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/4 p2, 0x0

    const p3, 0x3f733333    # 0.95f

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-direct {p1, p4, p2, p3, p4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->INTERPOLATOR_5_100:Landroid/view/animation/Interpolator;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureState:I

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f0a0116

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mBlue:Landroid/view/View;

    const v0, 0x7f0a05ee

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mRed:Landroid/view/View;

    const v0, 0x7f0a08b4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mYellow:Landroid/view/View;

    const v0, 0x7f0a031a

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGreen:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mBlue:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mRed:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mYellow:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGreen:Landroid/view/View;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onProgress(IF)V
    .locals 7

    iget p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureState:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    :cond_2
    iput v1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureState:I

    :cond_3
    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-nez p1, :cond_4

    iput v1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureState:I

    return-void

    :cond_4
    const p1, 0x44054000    # 533.0f

    mul-float/2addr p2, p1

    float-to-long p1, p2

    const-wide/16 v2, 0xa7

    sub-long/2addr p1, v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iget v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureState:I

    const/4 v4, 0x3

    if-eqz v0, :cond_9

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    if-eq v0, v4, :cond_5

    return-void

    :cond_5
    cmp-long v0, p1, v2

    if-gez v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    iget v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureState:I

    if-ne v0, v1, :cond_7

    iget-object p0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, p1, p2}, Landroid/animation/AnimatorSet;->setCurrentPlayTime(J)V

    :cond_7
    return-void

    :cond_8
    iget-object p0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, p1, p2}, Landroid/animation/AnimatorSet;->setCurrentPlayTime(J)V

    return-void

    :cond_9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->skipToStartingValue()V

    iput v4, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureState:I

    iget-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mCannedAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    iget-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mCannedAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mCannedAnimatorSet:Landroid/animation/AnimatorSet;

    goto/16 :goto_1

    :cond_a
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mCannedAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mRed:Landroid/view/View;

    sget-object p2, Lcom/google/android/systemui/assist/OpaUtils;->INTERPOLATOR_40_40:Landroid/view/animation/Interpolator;

    iget-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f07075a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    neg-float v0, v0

    iget-object v3, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mRed:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    const/16 v4, 0x53

    invoke-static {p1, p2, v0, v3, v4}, Lcom/google/android/systemui/assist/OpaUtils;->getTranslationObjectAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FFI)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v5, 0x11

    invoke-virtual {p1, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mYellow:Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mYellow:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    invoke-static {v0, p2, v2, v3, v4}, Lcom/google/android/systemui/assist/OpaUtils;->getTranslationObjectAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FFI)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-object v2, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mCannedAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mBlue:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f070759

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    neg-float v2, v2

    iget-object v4, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mBlue:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    const/16 v5, 0xa7

    invoke-static {v0, p2, v2, v4, v5}, Lcom/google/android/systemui/assist/OpaUtils;->getTranslationObjectAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FFI)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGreen:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGreen:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    invoke-static {v0, p2, v2, v3, v5}, Lcom/google/android/systemui/assist/OpaUtils;->getTranslationObjectAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FFI)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mRed:Landroid/view/View;

    sget-object v0, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/16 v2, 0x82

    invoke-static {p2, v2, v0}, Lcom/google/android/systemui/assist/OpaUtils;->getAlphaObjectAnimator(Landroid/view/View;ILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mYellow:Landroid/view/View;

    invoke-static {p2, v2, v0}, Lcom/google/android/systemui/assist/OpaUtils;->getAlphaObjectAnimator(Landroid/view/View;ILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mBlue:Landroid/view/View;

    const/16 v2, 0x71

    invoke-static {p2, v2, v0}, Lcom/google/android/systemui/assist/OpaUtils;->getAlphaObjectAnimator(Landroid/view/View;ILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGreen:Landroid/view/View;

    invoke-static {p2, v2, v0}, Lcom/google/android/systemui/assist/OpaUtils;->getAlphaObjectAnimator(Landroid/view/View;ILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mCannedAnimatorSet:Landroid/animation/AnimatorSet;

    :goto_1
    iput-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/google/android/systemui/assist/LockscreenOpaLayout$1;

    invoke-direct {p2, v1, p0}, Lcom/google/android/systemui/assist/LockscreenOpaLayout$1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_2

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->skipToStartingValue()V

    :goto_2
    return-void
.end method

.method public final onRelease()V
    .locals 3

    iget v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    iget-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/google/android/systemui/assist/LockscreenOpaLayout$1;

    invoke-direct {v1, v2, p0}, Lcom/google/android/systemui/assist/LockscreenOpaLayout$1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureState:I

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->startRetractAnimation()V

    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->startRetractAnimation()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final onResolve(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V
    .locals 3

    iget p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureState:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    iput v1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureState:I

    iget-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    iget-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/google/android/systemui/assist/LockscreenOpaLayout$1;

    invoke-direct {v1, v0, p0}, Lcom/google/android/systemui/assist/LockscreenOpaLayout$1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_2

    iput v1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureState:I

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    iget-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/google/android/systemui/assist/LockscreenOpaLayout$1;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Lcom/google/android/systemui/assist/LockscreenOpaLayout$1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final skipToStartingValue()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final startRetractAnimation()V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    iget-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    iget-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iget-object v2, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mRed:Landroid/view/View;

    sget-object v3, Lcom/google/android/systemui/assist/OpaUtils;->INTERPOLATOR_40_OUT:Landroid/view/animation/Interpolator;

    const/16 v4, 0xbe

    invoke-static {v2, v3, v4}, Lcom/google/android/systemui/assist/OpaUtils;->getTranslationAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mBlue:Landroid/view/View;

    invoke-static {v2, v3, v4}, Lcom/google/android/systemui/assist/OpaUtils;->getTranslationAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGreen:Landroid/view/View;

    invoke-static {v2, v3, v4}, Lcom/google/android/systemui/assist/OpaUtils;->getTranslationAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mYellow:Landroid/view/View;

    invoke-static {v2, v3, v4}, Lcom/google/android/systemui/assist/OpaUtils;->getTranslationAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/google/android/systemui/assist/OpaUtils;->getLongestAnim(Landroid/util/ArraySet;)Landroid/animation/Animator;

    move-result-object v2

    new-instance v3, Lcom/google/android/systemui/assist/LockscreenOpaLayout$1;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p0}, Lcom/google/android/systemui/assist/LockscreenOpaLayout$1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    iget-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureState:I

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->skipToStartingValue()V

    :goto_1
    return-void
.end method
