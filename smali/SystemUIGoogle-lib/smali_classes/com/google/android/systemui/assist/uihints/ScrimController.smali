.class public final Lcom/google/android/systemui/assist/uihints/ScrimController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/systemui/assist/uihints/TranscriptionController$TranscriptionSpaceListener;
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$CardInfoListener;
.implements Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsListener;
.implements Lcom/google/android/systemui/assist/uihints/input/TouchInsideRegion;


# static fields
.field public static final ALPHA_INTERPOLATOR:Landroid/view/animation/LinearInterpolator;


# instance fields
.field public mAlphaAnimator:Landroid/animation/ValueAnimator;

.field public mCardForcesScrimGone:Z

.field public mCardTransitionAnimated:Z

.field public mCardVisible:Z

.field public mHaveAccurateLightness:Z

.field public mInFullListening:Z

.field public mInvocationProgress:F

.field public mIsDozing:Z

.field public final mLightnessProvider:Lcom/google/android/systemui/assist/uihints/LightnessProvider;

.field public mMedianLightness:F

.field public final mOverlappedElement:Lcom/google/android/systemui/assist/uihints/OverlappedElementController;

.field public final mScrimView:Landroid/view/View;

.field public mTranscriptionVisible:Z

.field public mVisibilityListener:Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda4;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/google/android/systemui/assist/uihints/ScrimController;->ALPHA_INTERPOLATOR:Landroid/view/animation/LinearInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lcom/google/android/systemui/assist/uihints/OverlappedElementController;Lcom/google/android/systemui/assist/uihints/LightnessProvider;Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/ScrimController;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/systemui/assist/uihints/ScrimController;->mInvocationProgress:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/ScrimController;->mTranscriptionVisible:Z

    iput-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/ScrimController;->mCardVisible:Z

    iput-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/ScrimController;->mHaveAccurateLightness:Z

    iput-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/ScrimController;->mInFullListening:Z

    iput-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/ScrimController;->mCardTransitionAnimated:Z

    iput-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/ScrimController;->mCardForcesScrimGone:Z

    iput-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/ScrimController;->mIsDozing:Z

    const v0, 0x7f0a0662

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/ScrimController;->mScrimView:Landroid/view/View;

    sget-object v0, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundTintBlendMode(Landroid/graphics/BlendMode;)V

    iput-object p3, p0, Lcom/google/android/systemui/assist/uihints/ScrimController;->mLightnessProvider:Lcom/google/android/systemui/assist/uihints/LightnessProvider;

    invoke-virtual {p1, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/ScrimController;->mOverlappedElement:Lcom/google/android/systemui/assist/uihints/OverlappedElementController;

    return-void
.end method


# virtual methods
.method public final createRelativeAlphaAnimator(F)Landroid/animation/ValueAnimator;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/ScrimController;->mScrimView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v0, v3

    const/4 v2, 0x1

    aput p1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v1, 0x43960000    # 300.0f

    mul-float/2addr p1, v1

    float-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    sget-object v0, Lcom/google/android/systemui/assist/uihints/ScrimController;->ALPHA_INTERPOLATOR:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/google/android/systemui/assist/uihints/ScrimController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/assist/uihints/ScrimController$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/assist/uihints/ScrimController;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method public final getTouchInsideRegion()Ljava/util/Optional;
    .locals 2

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/ScrimController;->mScrimView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070881

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, p0

    iput v1, v0, Landroid/graphics/Rect;->top:I

    new-instance p0, Landroid/graphics/Region;

    invoke-direct {p0, v0}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final onCardInfo(IZZZ)V
    .locals 0

    iput-boolean p2, p0, Lcom/google/android/systemui/assist/uihints/ScrimController;->mCardVisible:Z

    iput-boolean p3, p0, Lcom/google/android/systemui/assist/uihints/ScrimController;->mCardTransitionAnimated:Z

    iput-boolean p4, p0, Lcom/google/android/systemui/assist/uihints/ScrimController;->mCardForcesScrimGone:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/ScrimController;->refresh()V

    return-void
.end method

.method public final onModeStarted(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)V
    .locals 0

    instance-of p1, p1, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;

    iput-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/ScrimController;->mInFullListening:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/ScrimController;->refresh()V

    return-void
.end method

.method public final refresh()V
    .locals 6

    iget-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/ScrimController;->mHaveAccurateLightness:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/ScrimController;->mIsDozing:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/ScrimController;->mCardVisible:Z

    if-eqz v0, :cond_1

    iget-boolean v3, p0, Lcom/google/android/systemui/assist/uihints/ScrimController;->mCardForcesScrimGone:Z

    if-eqz v3, :cond_1

    iget-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/ScrimController;->mCardTransitionAnimated:Z

    invoke-virtual {p0, v2, v0}, Lcom/google/android/systemui/assist/uihints/ScrimController;->setRelativeAlpha(FZ)V

    goto :goto_3

    :cond_1
    iget-boolean v3, p0, Lcom/google/android/systemui/assist/uihints/ScrimController;->mInFullListening:Z

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/google/android/systemui/assist/uihints/ScrimController;->mTranscriptionVisible:Z

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/ScrimController;->mCardTransitionAnimated:Z

    invoke-virtual {p0, v2, v0}, Lcom/google/android/systemui/assist/uihints/ScrimController;->setRelativeAlpha(FZ)V

    goto :goto_3

    :cond_3
    iget v0, p0, Lcom/google/android/systemui/assist/uihints/ScrimController;->mInvocationProgress:F

    cmpl-float v3, v0, v2

    if-lez v3, :cond_4

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/systemui/assist/uihints/ScrimController;->setRelativeAlpha(FZ)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v2, v4}, Lcom/google/android/systemui/assist/uihints/ScrimController;->setRelativeAlpha(FZ)V

    goto :goto_3

    :cond_5
    :goto_0
    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/ScrimController;->mScrimView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    move v4, v1

    :goto_1
    if-eqz v4, :cond_9

    :cond_7
    invoke-virtual {p0, v5, v1}, Lcom/google/android/systemui/assist/uihints/ScrimController;->setRelativeAlpha(FZ)V

    goto :goto_3

    :cond_8
    :goto_2
    invoke-virtual {p0, v2, v1}, Lcom/google/android/systemui/assist/uihints/ScrimController;->setRelativeAlpha(FZ)V

    :cond_9
    :goto_3
    return-void
.end method

.method public final setRelativeAlpha(FZ)V
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/ScrimController;->mHaveAccurateLightness:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    return-void

    :cond_0
    cmpg-float v0, p1, v1

    if-ltz v0, :cond_8

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v0

    if-lez v2, :cond_1

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/ScrimController;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/ScrimController;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    cmpl-float v2, p1, v1

    iget-object v3, p0, Lcom/google/android/systemui/assist/uihints/ScrimController;->mOverlappedElement:Lcom/google/android/systemui/assist/uihints/OverlappedElementController;

    iget-object v4, p0, Lcom/google/android/systemui/assist/uihints/ScrimController;->mScrimView:Landroid/view/View;

    if-lez v2, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/google/android/systemui/assist/uihints/ScrimController;->mMedianLightness:F

    const v2, 0x3ecccccd    # 0.4f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    const/high16 v1, -0x1000000

    goto :goto_0

    :cond_3
    const/4 v1, -0x1

    :goto_0
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/systemui/assist/uihints/ScrimController;->setVisibility(I)V

    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/assist/uihints/ScrimController;->createRelativeAlphaAnimator(F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/ScrimController;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_5
    invoke-virtual {v4, p1}, Landroid/view/View;->setAlpha(F)V

    sub-float/2addr v0, p1

    invoke-virtual {v3, v0}, Lcom/google/android/systemui/assist/uihints/OverlappedElementController;->setAlpha(F)V

    goto :goto_1

    :cond_6
    if-eqz p2, :cond_7

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/assist/uihints/ScrimController;->createRelativeAlphaAnimator(F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/ScrimController;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/google/android/systemui/assist/uihints/ScrimController$1;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/assist/uihints/ScrimController$1;-><init>(Lcom/google/android/systemui/assist/uihints/ScrimController;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/ScrimController;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_7
    invoke-virtual {v4, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v3, v0}, Lcom/google/android/systemui/assist/uihints/OverlappedElementController;->setAlpha(F)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/assist/uihints/ScrimController;->setVisibility(I)V

    :goto_1
    return-void

    :cond_8
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Got unexpected alpha: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", ignoring"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ScrimController"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setVisibility(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/ScrimController;->mScrimView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/ScrimController;->mVisibilityListener:Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda4;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/systemui/assist/uihints/NgaUiController;

    invoke-virtual {v1}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->refresh()V

    :cond_1
    if-nez p1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/ScrimController;->mLightnessProvider:Lcom/google/android/systemui/assist/uihints/LightnessProvider;

    iput-boolean v1, v2, Lcom/google/android/systemui/assist/uihints/LightnessProvider;->mMuted:Z

    if-nez p1, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080acd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/ScrimController;->mOverlappedElement:Lcom/google/android/systemui/assist/uihints/OverlappedElementController;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/google/android/systemui/assist/uihints/OverlappedElementController;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/ScrimController;->refresh()V

    :cond_4
    return-void
.end method
