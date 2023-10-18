.class public Lcom/google/android/systemui/lowlightclock/LowLightClockDreamService;
.super Landroid/service/dreams/DreamService;
.source ""


# instance fields
.field public mAnimationIn:Landroid/animation/Animator;

.field public mAnimationOut:Landroid/animation/Animator;

.field public final mAnimationProvider:Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider;

.field public final mChargingStatusProvider:Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;

.field public mChargingStatusTextView:Landroid/widget/TextView;

.field public final mDisplayHal:Lcom/google/hardware/pixel/display/IDisplay;

.field public mIsDimBrightnessSupported:Z

.field public final mLowLightTransitionCoordinator:Lcom/android/dream/lowlight/LowLightTransitionCoordinator;

.field public mTextClock:Landroid/widget/TextClock;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider;Lcom/android/dream/lowlight/LowLightTransitionCoordinator;Lcom/google/hardware/pixel/display/IDisplay;)V
    .locals 1

    invoke-direct {p0}, Landroid/service/dreams/DreamService;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockDreamService;->mIsDimBrightnessSupported:Z

    iput-object p2, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockDreamService;->mAnimationProvider:Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider;

    iput-object p4, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockDreamService;->mDisplayHal:Lcom/google/hardware/pixel/display/IDisplay;

    iput-object p1, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockDreamService;->mChargingStatusProvider:Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;

    iput-object p3, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockDreamService;->mLowLightTransitionCoordinator:Lcom/android/dream/lowlight/LowLightTransitionCoordinator;

    return-void
.end method

.method public static synthetic access$001(Lcom/google/android/systemui/lowlightclock/LowLightClockDreamService;)V
    .locals 0

    invoke-super {p0}, Landroid/service/dreams/DreamService;->onWakeUp()V

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/service/dreams/DreamService;->onAttachedToWindow()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/service/dreams/DreamService;->setInteractive(Z)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/service/dreams/DreamService;->setFullscreen(Z)V

    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d014a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/service/dreams/DreamService;->setContentView(Landroid/view/View;)V

    const v2, 0x7f0a0438

    invoke-virtual {p0, v2}, Landroid/service/dreams/DreamService;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextClock;

    iput-object v2, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockDreamService;->mTextClock:Landroid/widget/TextClock;

    const v2, 0x7f0a01a7

    invoke-virtual {p0, v2}, Landroid/service/dreams/DreamService;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockDreamService;->mChargingStatusTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockDreamService;->mChargingStatusProvider:Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;

    new-instance v3, Lcom/google/android/systemui/lowlightclock/LowLightClockDreamService$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/google/android/systemui/lowlightclock/LowLightClockDreamService$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/lowlightclock/LowLightClockDreamService;)V

    iget-object v4, v2, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;->mCallback:Lcom/google/android/systemui/lowlightclock/LowLightClockDreamService$$ExternalSyntheticLambda0;

    if-nez v4, :cond_0

    move v0, v1

    :cond_0
    const-string v1, "ChargingStatusProvider already started!"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iput-object v3, v2, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;->mCallback:Lcom/google/android/systemui/lowlightclock/LowLightClockDreamService$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$ChargingStatusCallback;

    invoke-direct {v0, v2}, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$ChargingStatusCallback;-><init>(Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;)V

    iget-object v1, v2, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-virtual {v2}, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;->reportStatusToCallback()V

    iget-object p0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockDreamService;->mLowLightTransitionCoordinator:Lcom/android/dream/lowlight/LowLightTransitionCoordinator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockDreamService;->mAnimationOut:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockDreamService;->mChargingStatusProvider:Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;->mCallback:Lcom/google/android/systemui/lowlightclock/LowLightClockDreamService$$ExternalSyntheticLambda0;

    iget-object p0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockDreamService;->mLowLightTransitionCoordinator:Lcom/android/dream/lowlight/LowLightTransitionCoordinator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onDreamingStarted()V
    .locals 12

    iget-object v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockDreamService;->mAnimationProvider:Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider;

    iget-object v1, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockDreamService;->mTextClock:Landroid/widget/TextClock;

    iget-object v2, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockDreamService;->mChargingStatusTextView:Landroid/widget/TextView;

    filled-new-array {v1, v2}, [Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    const/4 v6, 0x2

    if-ge v4, v6, :cond_0

    aget-object v7, v1, v4

    const/4 v8, 0x0

    invoke-static {v7, v8, v3}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;FZ)V

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v5, [F

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v10, v3

    invoke-static {v7, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget-wide v10, v0, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider;->mAlphaAnimationInStartDelayMillis:J

    invoke-virtual {v9, v10, v11}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-wide v10, v0, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider;->mAlphaAnimationDurationMillis:J

    invoke-virtual {v9, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    sget-object v10, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v10}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v10, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v6, [F

    iget v11, v0, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider;->mYTranslationAnimationInStartOffset:I

    int-to-float v11, v11

    aput v11, v6, v3

    aput v8, v6, v5

    invoke-static {v7, v10, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-wide v6, v0, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider;->mYTranslationAnimationInDurationMillis:J

    invoke-virtual {v5, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    sget-object v6, Lcom/android/app/animation/Interpolators;->EMPHASIZED:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    filled-new-array {v5, v9}, [Landroid/animation/Animator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockDreamService;->mAnimationIn:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    iget-object v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockDreamService;->mDisplayHal:Lcom/google/hardware/pixel/display/IDisplay;

    if-eqz v0, :cond_1

    :try_start_0
    check-cast v0, Lcom/google/hardware/pixel/display/IDisplay$Stub$Proxy;

    invoke-virtual {v0}, Lcom/google/hardware/pixel/display/IDisplay$Stub$Proxy;->isDbmSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockDreamService;->mIsDimBrightnessSupported:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockDreamService;->mDisplayHal:Lcom/google/hardware/pixel/display/IDisplay;

    check-cast p0, Lcom/google/hardware/pixel/display/IDisplay$Stub$Proxy;

    invoke-virtual {p0, v5}, Lcom/google/hardware/pixel/display/IDisplay$Stub$Proxy;->setDbmState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "LowLightClockDreamService"

    const-string v1, "RemoteException"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public final onDreamingStopped()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockDreamService;->mIsDimBrightnessSupported:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockDreamService;->mDisplayHal:Lcom/google/hardware/pixel/display/IDisplay;

    check-cast p0, Lcom/google/hardware/pixel/display/IDisplay$Stub$Proxy;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/hardware/pixel/display/IDisplay$Stub$Proxy;->setDbmState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "LowLightClockDreamService"

    const-string v1, "RemoteException"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public final onWakeUp()V
    .locals 12

    iget-object v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockDreamService;->mAnimationIn:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockDreamService;->mAnimationProvider:Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider;

    iget-object v1, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockDreamService;->mTextClock:Landroid/widget/TextClock;

    iget-object v2, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockDreamService;->mChargingStatusTextView:Landroid/widget/TextView;

    filled-new-array {v1, v2}, [Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    aget-object v5, v1, v4

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v7, 0x1

    new-array v8, v7, [F

    const/4 v9, 0x0

    aput v9, v8, v3

    invoke-static {v5, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-wide v8, v0, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider;->mAlphaAnimationDurationMillis:J

    invoke-virtual {v6, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    sget-object v10, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v10}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v10, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v7, [F

    iget v11, v0, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider;->mYTranslationAnimationInStartOffset:I

    int-to-float v11, v11

    aput v11, v7, v3

    invoke-static {v5, v10, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v7, v0, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider;->mTranslationOutInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v5, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    filled-new-array {v6, v5}, [Landroid/animation/Animator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockDreamService;->mAnimationOut:Landroid/animation/Animator;

    new-instance v0, Lcom/google/android/systemui/lowlightclock/LowLightClockDreamService$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/lowlightclock/LowLightClockDreamService$1;-><init>(Lcom/google/android/systemui/lowlightclock/LowLightClockDreamService;)V

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockDreamService;->mAnimationOut:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method
