.class public Lcom/google/android/systemui/assist/uihints/TranscriptionView;
.super Landroid/widget/TextView;
.source ""

# interfaces
.implements Lcom/google/android/systemui/assist/uihints/TranscriptionController$TranscriptionSpaceView;


# static fields
.field public static final INTERPOLATOR_SCROLL:Landroid/view/animation/PathInterpolator;


# instance fields
.field public final BUMPER_DISTANCE_END_PX:F

.field public final BUMPER_DISTANCE_START_PX:F

.field public final FADE_DISTANCE_END_PX:F

.field public final FADE_DISTANCE_START_PX:F

.field public final TEXT_COLOR_DARK:I

.field public final TEXT_COLOR_LIGHT:I

.field public mCardVisible:Z

.field public mDeviceConfigHelper:Lcom/android/systemui/assist/DeviceConfigHelper;

.field public mDisplayWidthPx:I

.field public mHasDarkBackground:Z

.field public mHideFuture:Lcom/google/common/util/concurrent/SettableFuture;

.field public final mMatrix:Landroid/graphics/Matrix;

.field public mRequestedTextColor:I

.field public mStops:[F

.field public mTranscriptionAnimation:Landroid/animation/ValueAnimator;

.field public mTranscriptionAnimator:Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;

.field public final mTranscriptionBuilder:Landroid/text/SpannableStringBuilder;

.field public mVisibilityAnimators:Landroid/animation/AnimatorSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f2b851f    # 0.67f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e2e147b    # 0.17f

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->INTERPOLATOR_SCROLL:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mTranscriptionBuilder:Landroid/text/SpannableStringBuilder;

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mVisibilityAnimators:Landroid/animation/AnimatorSet;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mHideFuture:Lcom/google/common/util/concurrent/SettableFuture;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mHasDarkBackground:Z

    iput-boolean p2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mCardVisible:Z

    iput p2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mRequestedTextColor:I

    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    iput-object p3, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mMatrix:Landroid/graphics/Matrix;

    iput p2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mDisplayWidthPx:I

    new-instance p2, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;-><init>(Lcom/google/android/systemui/assist/uihints/TranscriptionView;)V

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mTranscriptionAnimator:Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;

    new-instance p2, Lcom/android/systemui/assist/DeviceConfigHelper;

    invoke-direct {p2}, Lcom/android/systemui/assist/DeviceConfigHelper;-><init>()V

    invoke-virtual {p0, p2}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->initializeDeviceConfigHelper(Lcom/android/systemui/assist/DeviceConfigHelper;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070a32

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f070a34

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    add-float/2addr p3, p2

    iput p3, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->BUMPER_DISTANCE_START_PX:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070309

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f07030b

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    add-float/2addr p3, p2

    iput p3, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->BUMPER_DISTANCE_END_PX:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070a33

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->FADE_DISTANCE_START_PX:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07030a

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    iput p2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->FADE_DISTANCE_END_PX:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0604b9

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->TEXT_COLOR_DARK:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0604ba

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->TEXT_COLOR_LIGHT:I

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->updateDisplayWidth()V

    iget-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mHasDarkBackground:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->setHasDarkBackground(Z)V

    return-void
.end method

.method public static interpolate(JJF)F
    .locals 0

    sub-long/2addr p2, p0

    long-to-float p2, p2

    mul-float/2addr p2, p4

    long-to-float p0, p0

    add-float/2addr p2, p0

    return p2
.end method


# virtual methods
.method public getAdaptiveDuration(FF)J
    .locals 5

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mDeviceConfigHelper:Lcom/android/systemui/assist/DeviceConfigHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v0, 0x4

    const-string v2, "assist_transcription_duration_per_px_regular"

    invoke-static {v0, v1, v2}, Lcom/android/systemui/assist/DeviceConfigHelper;->getLong(JLjava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mDeviceConfigHelper:Lcom/android/systemui/assist/DeviceConfigHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v2, 0x3

    const-string v4, "assist_transcription_duration_per_px_fast"

    invoke-static {v2, v3, v4}, Lcom/android/systemui/assist/DeviceConfigHelper;->getLong(JLjava/lang/String;)J

    move-result-wide v2

    div-float p2, p1, p2

    invoke-static {v0, v1, v2, v3, p2}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->interpolate(JJF)F

    move-result p2

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mDeviceConfigHelper:Lcom/android/systemui/assist/DeviceConfigHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v0, 0x190

    const-string v2, "assist_transcription_max_duration"

    invoke-static {v0, v1, v2}, Lcom/android/systemui/assist/DeviceConfigHelper;->getLong(JLjava/lang/String;)J

    move-result-wide v0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mDeviceConfigHelper:Lcom/android/systemui/assist/DeviceConfigHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v2, 0x14

    const-string p0, "assist_transcription_min_duration"

    invoke-static {v2, v3, p0}, Lcom/android/systemui/assist/DeviceConfigHelper;->getLong(JLjava/lang/String;)J

    move-result-wide v2

    mul-float/2addr p1, p2

    float-to-long p0, p1

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getFullyVisibleDistance(F)F
    .locals 5

    iget v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mDisplayWidthPx:I

    int-to-float v1, v0

    iget v2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->BUMPER_DISTANCE_END_PX:F

    iget v3, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->BUMPER_DISTANCE_START_PX:F

    add-float/2addr v3, v2

    iget v4, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->FADE_DISTANCE_END_PX:F

    add-float/2addr v3, v4

    iget p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->FADE_DISTANCE_START_PX:F

    add-float/2addr v3, p0

    sub-float/2addr v1, v3

    cmpg-float p0, p1, v1

    if-gez p0, :cond_0

    int-to-float p0, v0

    sub-float/2addr p0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    return p0

    :cond_0
    int-to-float p0, v0

    sub-float/2addr p0, p1

    sub-float/2addr p0, v4

    sub-float/2addr p0, v2

    return p0
.end method

.method public final hide(Z)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 8

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mHideFuture:Lcom/google/common/util/concurrent/SettableFuture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/SettableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mHideFuture:Lcom/google/common/util/concurrent/SettableFuture;

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/SettableFuture;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mHideFuture:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/assist/uihints/TranscriptionView;)V

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mVisibilityAnimators:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mVisibilityAnimators:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView$$ExternalSyntheticLambda0;->run()V

    :goto_0
    sget-object p0, Lcom/google/common/util/concurrent/ImmediateFuture;->NULL:Lcom/google/common/util/concurrent/ImmediateFuture;

    return-object p0

    :cond_2
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mVisibilityAnimators:Landroid/animation/AnimatorSet;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    invoke-virtual {p0}, Landroid/widget/TextView;->getAlpha()F

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    const/4 v6, 0x0

    aput v6, v3, v4

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v6, 0x190

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mCardVisible:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mVisibilityAnimators:Landroid/animation/AnimatorSet;

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v2, v2, [F

    invoke-virtual {p0}, Landroid/widget/TextView;->getTranslationY()F

    move-result v3

    aput v3, v2, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x2bc

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_3
    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mVisibilityAnimators:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/google/android/systemui/assist/uihints/TranscriptionView$1;

    invoke-direct {v1, v0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView$1;-><init>(Lcom/google/android/systemui/assist/uihints/TranscriptionView$$ExternalSyntheticLambda0;)V

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mVisibilityAnimators:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mHideFuture:Lcom/google/common/util/concurrent/SettableFuture;

    return-object p0
.end method

.method public initializeDeviceConfigHelper(Lcom/android/systemui/assist/DeviceConfigHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mDeviceConfigHelper:Lcom/android/systemui/assist/DeviceConfigHelper;

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mTranscriptionBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->setTranscription(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;-><init>(Lcom/google/android/systemui/assist/uihints/TranscriptionView;)V

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mTranscriptionAnimator:Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->setTranscription(Ljava/lang/String;)V

    return-void
.end method

.method public final onFontSizeChanged()V
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0709c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public final setCardVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mCardVisible:Z

    return-void
.end method

.method public final setHasDarkBackground(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mHasDarkBackground:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mHasDarkBackground:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->updateColor()V

    :cond_0
    return-void
.end method

.method public final setTranscription(Ljava/lang/String;)V
    .locals 14

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->updateDisplayWidth()V

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mTranscriptionAnimation:Landroid/animation/ValueAnimator;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mTranscriptionAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v3, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mTranscriptionBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    iget-object v4, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mTranscriptionBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move v5, v0

    goto :goto_2

    :cond_3
    :goto_1
    move v5, v2

    :goto_2
    if-nez v5, :cond_d

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    move v5, v0

    goto :goto_4

    :cond_5
    :goto_3
    move v5, v2

    :goto_4
    if-eqz v5, :cond_6

    goto/16 :goto_a

    :cond_6
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    filled-new-array {v7, v8}, [I

    move-result-object v7

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, [[I

    move v7, v0

    :goto_5
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_c

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v9, v0

    :goto_6
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_b

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v8, v10, :cond_a

    const/16 v10, 0x20

    if-ne v8, v10, :cond_7

    move v10, v0

    goto :goto_7

    :cond_7
    move v10, v2

    :goto_7
    if-eqz v7, :cond_9

    if-nez v9, :cond_8

    goto :goto_8

    :cond_8
    add-int/lit8 v11, v7, -0x1

    aget-object v11, v13, v11

    add-int/lit8 v12, v9, -0x1

    aget v11, v11, v12

    goto :goto_9

    :cond_9
    :goto_8
    move v11, v0

    :goto_9
    aget-object v12, v13, v7

    add-int/2addr v11, v10

    aput v11, v12, v9

    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_c
    const/4 v9, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v12

    move-object v8, p1

    invoke-static/range {v8 .. v13}, Lcom/google/android/systemui/assist/uihints/StringUtils;->getRightMostStabilityInfoLeaf(Ljava/lang/String;IIII[[I)Lcom/google/android/systemui/assist/uihints/StringUtils$StringStabilityInfo;

    move-result-object p1

    goto :goto_b

    :cond_d
    :goto_a
    new-instance v4, Lcom/google/android/systemui/assist/uihints/StringUtils$StringStabilityInfo;

    invoke-direct {v4, p1}, Lcom/google/android/systemui/assist/uihints/StringUtils$StringStabilityInfo;-><init>(Ljava/lang/String;)V

    move-object p1, v4

    :goto_b
    iget-object v4, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mTranscriptionBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clear()V

    iget-object v4, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mTranscriptionBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v5, p1, Lcom/google/android/systemui/assist/uihints/StringUtils$StringStabilityInfo;->stable:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mTranscriptionBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v5, p1, Lcom/google/android/systemui/assist/uihints/StringUtils$StringStabilityInfo;->unstable:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    iget-object v6, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mTranscriptionBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v4, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-eqz v6, :cond_e

    iput v4, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_e
    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->updateColor()V

    const/4 v6, 0x0

    iget-object p1, p1, Lcom/google/android/systemui/assist/uihints/StringUtils$StringStabilityInfo;->stable:Ljava/lang/String;

    if-nez v3, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_f

    goto/16 :goto_d

    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v1, :cond_11

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11

    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "\\s+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    if-lez v1, :cond_10

    array-length v1, p1

    sub-int/2addr v1, v2

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v3, p1

    :cond_10
    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mTranscriptionAnimator:Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;

    iget-object p1, p1, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->mSpans:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionSpan;

    :cond_11
    invoke-virtual {p0, v3, v6}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->setUpSpans(ILcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionSpan;)V

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mTranscriptionAnimator:Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;

    iget-object v1, p1, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->this$0:Lcom/google/android/systemui/assist/uihints/TranscriptionView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->this$0:Lcom/google/android/systemui/assist/uihints/TranscriptionView;

    iget-object v3, v3, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mTranscriptionBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    iget-object v3, p1, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->this$0:Lcom/google/android/systemui/assist/uihints/TranscriptionView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getX()F

    move-result v3

    iput v3, p1, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->mStartX:F

    iget-object v3, p1, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->this$0:Lcom/google/android/systemui/assist/uihints/TranscriptionView;

    invoke-virtual {v3, v1}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->getFullyVisibleDistance(F)F

    move-result v3

    iget v4, p1, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->mStartX:F

    sub-float/2addr v3, v4

    iput v3, p1, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->mDistance:F

    iget-object v3, p1, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->this$0:Lcom/google/android/systemui/assist/uihints/TranscriptionView;

    invoke-virtual {v3}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->updateColor()V

    iget-object v3, p1, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->this$0:Lcom/google/android/systemui/assist/uihints/TranscriptionView;

    iget v4, p1, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->mDistance:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v5, p1, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->this$0:Lcom/google/android/systemui/assist/uihints/TranscriptionView;

    iget v5, v5, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mDisplayWidthPx:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->getAdaptiveDuration(FF)J

    move-result-wide v3

    iget-object v5, p1, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->this$0:Lcom/google/android/systemui/assist/uihints/TranscriptionView;

    iget v6, v5, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mDisplayWidthPx:I

    int-to-float v6, v6

    invoke-virtual {v5}, Landroid/widget/TextView;->getX()F

    move-result v5

    sub-float/2addr v6, v5

    cmpl-float v1, v1, v6

    if-lez v1, :cond_12

    iget-object v1, p1, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->this$0:Lcom/google/android/systemui/assist/uihints/TranscriptionView;

    iget-object v1, v1, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mDeviceConfigHelper:Lcom/android/systemui/assist/DeviceConfigHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v5, 0x32

    const-string v1, "assist_transcription_fade_in_duration"

    invoke-static {v5, v6, v1}, Lcom/android/systemui/assist/DeviceConfigHelper;->getLong(JLjava/lang/String;)J

    move-result-wide v5

    add-long/2addr v5, v3

    goto :goto_c

    :cond_12
    move-wide v5, v3

    :goto_c
    iget v1, p1, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->mDistance:F

    long-to-float v7, v5

    long-to-float v3, v3

    div-float/2addr v7, v3

    mul-float/2addr v7, v1

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v3, p1, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->mStartX:F

    aput v3, v1, v0

    add-float/2addr v3, v7

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v1, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->INTERPOLATOR_SCROLL:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mTranscriptionAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_e

    :cond_13
    :goto_d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, v6}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->setUpSpans(ILcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionSpan;)V

    int-to-float p1, v4

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->getFullyVisibleDistance(F)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setX(F)V

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->updateColor()V

    :goto_e
    return-void
.end method

.method public final setUpSpans(ILcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionSpan;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mTranscriptionAnimator:Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;

    iget-object v0, v0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->mSpans:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mTranscriptionBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    if-nez p2, :cond_0

    new-instance p2, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionSpan;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionSpan;-><init>(Lcom/google/android/systemui/assist/uihints/TranscriptionView;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionSpan;

    invoke-direct {v1, p0, p2}, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionSpan;-><init>(Lcom/google/android/systemui/assist/uihints/TranscriptionView;Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionSpan;)V

    move-object p2, v1

    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mTranscriptionBuilder:Landroid/text/SpannableStringBuilder;

    const/16 v2, 0x21

    invoke-virtual {v1, p2, p1, v0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mTranscriptionAnimator:Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;

    iget-object p1, p1, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->mSpans:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mTranscriptionBuilder:Landroid/text/SpannableStringBuilder;

    sget-object p2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->updateColor()V

    return-void
.end method

.method public final updateColor()V
    .locals 10

    iget v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mRequestedTextColor:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mHasDarkBackground:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->TEXT_COLOR_DARK:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->TEXT_COLOR_LIGHT:I

    :cond_1
    :goto_0
    const/4 v1, 0x0

    filled-new-array {v1, v0, v0, v1}, [I

    move-result-object v7

    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mDisplayWidthPx:I

    int-to-float v5, v1

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mStops:[F

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTranslationX()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public final updateDisplayWidth()V
    .locals 5

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/systemui/assist/uihints/DisplayUtils;->getDefaultDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v0, v1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mDisplayWidthPx:I

    const/4 v1, 0x4

    new-array v1, v1, [F

    iget v2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->BUMPER_DISTANCE_START_PX:F

    int-to-float v0, v0

    div-float v3, v2, v0

    const/4 v4, 0x0

    aput v3, v1, v4

    iget v3, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->FADE_DISTANCE_START_PX:F

    add-float/2addr v2, v3

    div-float/2addr v2, v0

    const/4 v3, 0x1

    aput v2, v1, v3

    iget v2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->FADE_DISTANCE_END_PX:F

    sub-float v2, v0, v2

    iget v3, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->BUMPER_DISTANCE_END_PX:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v0

    const/4 v0, 0x2

    aput v2, v1, v0

    const/4 v0, 0x3

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v0

    iput-object v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mStops:[F

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->updateColor()V

    return-void
.end method
